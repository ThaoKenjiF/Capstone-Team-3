<?php
    include "config.php";
    // Check user login or not
    if (!isset($_SESSION['employee_id'])) {
    header('Location: index.php');
    }
    ?>

<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Custom CSS -->
    <link href="dist/css/style.min.css" rel="stylesheet">
    <!-- This Page CSS -->
    <title>Home Page</title>
    <link href="style1.css?v=4" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
</head>

<body class="loggedin">
    <nav class="navtop">
        <div>
            <h1>Approval Routing Clean Up</h1>
            <!-- <h3>Welcome <?=$_SESSION['employee_name']?>,</h3> -->
            <a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a>
        </div>
    </nav>

    <div class="jumbotron-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <?php
                        $id = $_GET['routing_id']; // get id through query string

$qry = mysqli_query($con,"select * from approval_routing where id='$id'"); // select query

$data = mysqli_fetch_array($qry); // fetch data

if(isset($_POST['update'])) // when click on Update button
{
    $person_id = $_POST['person_id'];
    $approval_status = $_POST['approval_status'];
	
    $edit = mysqli_query($con,"update approval_routing set person_id='$person_id', approval_status='$approval_status' where id='$id'");
	
    if($edit)
    {
        mysqli_close($con); // Close connection
        header("location:home.php"); // redirects to all records page
        exit;
    }
    else
    {
        echo mysqli_error($con);
    }    	
}
?>
                        <form name="assign" method="POST" action="">
                            <div style="width: auto">
                                <!-- <div class="message"><?php if(isset($message)) { echo $message; } ?></div>
                                <div align="right" style="padding-bottom:5px;"><a href="retrive.php" class="link"><img
                                            alt='List' title='List' src='images/list.png' width='15px' height='15px' />
                                        List Person Id</a></div> -->
                                <table border="0" cellpadding="10" cellspacing="0" width="700" align="center"
                                    class="tblSaveForm">
                                    <tr class="header">
                                        <td colspan="2">
                                            <h4 class="card-title">Approval Routing Assign/Re-Assign Form</h4>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><label>LU_NAME</label></td>
                                        <td><input type="text" name="lu_name" class="txtField"
                                                value="<?php echo $data['LU_NAME']; ?>" readonly></td>
                                    </tr>
                                    <tr>
                                        <td><label>KEY_REF</label></td>
                                        <td><input type="text" name="key_ref" class="txtField"
                                                value="<?php echo $data['KEY_REF']; ?>" readonly></td>
                                    </tr>
                                    <tr>
                                        <td><label>STEP_NO</label></td>
                                        <td><input type="text" name="step_no" class="txtField"
                                                value="<?php echo $data['STEP_NO']; ?>" readonly></td>
                                    </tr>
                                    <tr>
                                        <td><label>DESCRIPTION</label></td>
                                        <td><input type="text" name="description" class="txtField"
                                                value="<?php echo $data['DESCRIPTION']; ?>" readonly></td>
                                    </tr>
                                    <tr>
                                        <td><label>APP_DATE</label></td>
                                        <td><input type="text" name="app_date" class="txtField"
                                                value="<?php echo $data['APP_DATE']; ?> " readonly></td>
                                    </tr>
                                    <tr>
                                        <td><label>NOTE</label></td>
                                        <td><input type="text" name="note" class="txtField"
                                                value="<?php echo $data['NOTE']; ?> " readonly></td>
                                    </tr>
                                    <tr>
                                        <td><label>PREV_APPROVAL_DATE</label></td>
                                        <td><input type="text" name="prev_approval_date" class="txtField"
                                                value="<?php echo $data['PREV_APPROVAL_DATE']; ?> " readonly></td>
                                    </tr>
                                    <tr>
                                        <td><label>EMPLOYEE</label></td>
                                        <td>
                                        
                                            <?php 
                                        $sql = "SELECT * FROM company_emp";
                                        $result = mysqli_query($con, $sql);

                                        echo "<select name='person_id'><option disabled='disabled'>Employee List</option>";
                                        
                                        while ($row = mysqli_fetch_array($result)) {
                                            echo "<option value='" . $row['PERSON_ID']. "'>" . $row['PERSON_ID']. " " . $row['LNAME']." , ". $row['FNAME'] ."</option>";
                                        }
                                        echo "</select>";
                                        "</td>";
                                        ?>
 
                                    </tr>
                                    <tr>
                                        <td><label>APPROVAL_STATUS</label></td>
                                        <td><input type="text" name="approval_status" class="txtField"
                                                value="<?php echo $data['APPROVAL_STATUS']; ?> "></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><input type="submit" name="update" value="Update"
                                                class="buttom"></td>
                                    </tr>
                                </table>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
</body>

</html>