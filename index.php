<?php
include "config.php";
if (isset($_POST['submit'])) {
    $employee_id = mysqli_real_escape_string($con, $_POST['employee_id']);
    $password = mysqli_real_escape_string($con, $_POST['txt_pwd']);
    $login_message = "";

    if ($employee_id != "" && $password != "") {
        $employee_result = mysqli_query($con, "select * FROM company_emp where employee_id='" . $employee_id . "' and lname='" . $password . "' ")
            or die("Faild to query database" . mysqli_error($employee_result));

        if ($employee_result->num_rows === 1) {
            $job_assign_result = mysqli_query($con, "select * FROM emp_job_assign where emp_no='" . $employee_id .
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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="dist/css/style.min.css" rel="stylesheet">
    <title>Login</title>
    <link href="style1.css?v=4" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">  
</head>
<body> 
<nav class="navtop">
        <div>
            <h1>Approval Routing Clean Up</h1>
            <!-- <h3>Welcome <?=$_SESSION['employee_name']?>,</h3>
            <a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a> -->
        </div>
    </nav>
    <form method="post" action="">
        <div id="div_login">
            <h1>Login into Approval Routing Clean Up</h1>
            <?php
            if (isset($login_message)) {
                echo '<div style="color:red">';
                echo $login_message . " Please try again";
                echo '</div>';
            }
            ?>
            <div>
                <label for="employee_id"><i class="fas fa-user"></i></label>
                <input type="text" class="textbox" id="employee_id" name="employee_id" placeholder="Username" />
            </div>
            <div>
                <label for="password"><i class="fas fa-lock"></i></label>
                <input type="password" class="textbox" id="txt_uname" name="txt_pwd" placeholder="Password" />
            </div>
            <div>
                <input type="submit" value="Submit" name="submit" id="submit" />
            </div>
        </div>
    </form>
    </div>
</body>

</html>