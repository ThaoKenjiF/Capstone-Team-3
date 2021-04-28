<?php
include "config.php";
if (isset($_POST['submit'])) {
    $employee_id = mysqli_real_escape_string($con, $_POST['employee_id']);
    $password = mysqli_real_escape_string($con, $_POST['txt_pwd']);
    $login_message = "";

    if ($employee_id != "" && $password != "") {
        $employee_result = mysqli_query($con, "select * FROM company_emp where person_id='" . $employee_id . "' and lname='" . $password . "' ")
            or die("Faild to query database" . mysqli_error($employee_result));

        if ($employee_result->num_rows === 1) {
            $job_assign_result = mysqli_query($con, "select * FROM emp_job_assign where employee_id='" . $employee_id .
                "' and job_title IN('IT','Manager') and (employee_status='active' or employee_status_seq_no='1') ")
                or die("Faild to query database" . mysqli_error($job_assign_result));

            if ($job_assign_result->num_rows === 1) {
                $job_assign_row = $job_assign_result->fetch_assoc(); //Fetch employee job assign
                $_SESSION['job_title'] = $job_assign_row['JOB_TITLE'];

                $employee_row = $employee_result->fetch_assoc(); //Fetch employee info
                $_SESSION['employee_name'] = $employee_row['FNAME']. " " . $employee_row['LNAME'];

                    $_SESSION['employee_id'] = $employee_id;
                    $_SESSION['role'] = $job_assign_row['JOB_TITLE'];
                    header('Location:home.php');
            } else {
                $login_message = "Not an active IT or Manager account.";
            }
        } else {
            $login_message = "Invalid username or password.";
        }
    } else {
        $login_message = "Invalid username or password.";
    }
}
?>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="dist/css/style.min.css" rel="stylesheet">
    <title>Login Page</title>
    <link href="style1.css?v=11" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" rel="stylesheet">
    <style>
    .card-body {
        background: #256269;
        position: relative;
        top: 70%;
        padding: 2rem !important;
    }
    </style>
</head>
<body class="bg-image" style="background-image: url('pexels-hasan-albari-1229861.jpg'); height: 100%; width: 100%; position: fixed; background-position: center;
  background-repeat: no-repeat;
  background-size: cover;">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card-body p-4">

                    <form method="post" action="">

                        <h2>Approval Routing Clean Up</h2>
                        <?php
            if (isset($login_message)) {
                echo '<div style="color:red">';
                echo $login_message . " Please try again";
                echo '</div>';
            }
            ?>
                        <div class="input-group mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="fa fa-user text-success"></i>
                                </span>
                            </div>
                            <input type="text" class="form-control" required="" id="employee_id" name="employee_id"
                                placeholder="Username" />
                        </div>
                        <div class="input-group mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text text-success"><i class="fa fa-lock"></i></span>
                            </div>
                            <input type="password" class="form-control" required="" id="txt_uname" name="txt_pwd"
                                placeholder="Password" />
                        </div>
                        <div class="input-group mb-4">
                            <div class="form-check checkbox">
                                <input class="form-check-input" name="remember" type="checkbox" id="remember"
                                    style="vertical-align: middle;">
                                <label class="form-check-label" for="remember" style="vertical-align: middle;">
                                    Remember me
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <input type="submit" value="Login" class="btn btn-success px-4" name="submit"
                                    id="submit" />
                            </div>
                            <div class="col-6 text-right">
                                <a class="btn btn-link text-secondary px-0" href="#">
                                    Forgot your password?
                                </a><br>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>