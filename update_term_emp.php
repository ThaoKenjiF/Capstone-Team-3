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
    <link href="style1.css?v=11" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
</head>

<body class="loggedin">
    <?php
include "header.php"
?>
    <div class="jumbotron-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <?php
            $id = $_GET['routing_id']; // get id through query string

            // echo "$id"; die ;
$qry = mysqli_query($con,"select * from approval_routing where id='$id'"); // select query

$data = mysqli_fetch_array($qry); // fetch data

if(isset($_POST['submit'])) // when click on Update button
{
$person_id = $_POST['person_id'];
$approval_status = $_POST['approval_status'];

$edit = mysqli_query($con,"update approval_routing set person_id='$person_id', approval_status='$approval_status' where id='$id'");

if($edit)
{
mysqli_close($con); // Close connection
header("location:filter_terminated_emp.php"); // redirects to all records page
exit;
}
else
{
echo mysqli_error($con);
}    	
}
?>
                        <div class="jumbotron jumbotron-fluid">
                            <div class="container">

                                <div class="card mb-3">

                                    <div class="card-body">
                                        <h5>Selecte employee from dropdown, update approval status and submit to
                                            reassign approval routing</h5>
                                        <br>

                                    </div>
                                </div>

                                <form name="assign" method="POST" action="">
                                    <div class="form-group row">
                                        <label for="text1" class="col-4 col-form-label">LU_NAME</label>
                                        <div class="col-8">
                                            <input id="text1" name="text1" type="text" class="form-control"
                                                value="<?php echo $data['LU_NAME']; ?>" readonly>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="text1" class="col-4 col-form-label">KEY_REF</label>
                                        <div class="col-8">
                                            <input id="text1" name="text1" type="text" class="form-control"
                                                value="<?php echo $data['KEY_REF']; ?>" readonly>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="text1" class="col-4 col-form-label">STEP_NO</label>
                                        <div class="col-8">
                                            <input id="text1" name="text1" type="text" class="form-control"
                                                value="<?php echo $data['STEP_NO']; ?>" readonly>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="text1" class="col-4 col-form-label">DESCRIPTION</label>
                                        <div class="col-8">
                                            <input id="text1" name="text1" type="text" class="form-control"
                                                value="<?php echo $data['DESCRIPTION']; ?>" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="text1" class="col-4 col-form-label">APP_DATE</label>
                                        <div class="col-8">
                                            <input id="text1" name="text1" type="text" class="form-control"
                                                value="<?php echo $data['APP_DATE']; ?>" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="text1" class="col-4 col-form-label">NOTE</label>
                                        <div class="col-8">
                                            <input id="text1" name="text1" type="text" class="form-control"
                                                value="<?php echo $data['NOTE']; ?>" readonly>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="text1" class="col-4 col-form-label">PREV_APPROVAL_DATE</label>
                                        <div class="col-8">
                                            <input id="text1" name="text1" type="text" class="form-control"
                                                value="<?php echo $data['PREV_APPROVAL_DATE']; ?>" readonly>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="select" class="col-4 col-form-label">EMPLOYEE</label>
                                        <div class="col-8">
                                            <select id="select" name="person_id" class="custom-select">
                                                <?php
        $sql = "SELECT * FROM company_emp";

        $result = mysqli_query($con, $sql);

        while ($row = mysqli_fetch_array($result)) {

        if($row['PERSON_ID']==$data['PERSON_ID']){

        echo "<option selected value='" . $row['PERSON_ID']. "'> " . $row['PERSON_ID']. " " . $row['LNAME']." , ". $row['FNAME'] ."</option>";

        }else{
        echo "<option value='" . $row['PERSON_ID']. "'>" . $row['PERSON_ID']. " " . $row['LNAME']." , ". $row['FNAME'] ."</option>";

        }
        }        
        ?>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="text1" class="col-4 col-form-label">APPROVAL_STATUS</label>
                                        <div class="col-8">
                                            <input id="text1" name="approval_status" type="text" class="form-control"
                                                value="<?php echo $data['APPROVAL_STATUS']; ?> ">

                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <div class="offset-4 col-8">
                                            <button name="submit" type="submit" class="btn btn-primary">Submit</button>
                                        </div>
                                    </div>
                            </div>
                            <?php
    include "footer.php"
    ?>
                        </div>
                        <link href='//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css' rel='stylesheet'
                            type='text/css'>
                        <link rel="stylesheet"
                            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
                        <script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
                        <script type="text/javascript">
                        $(document).ready(function() {
                            var table = $('#multi_col_order').DataTable();

                            $('#multi_col_order tbody').on('click', 'tr', function() {
                                if ($(this).hasClass('selected')) {
                                    $(this).removeClass('selected');
                                } else {
                                    table.$('tr.selected').removeClass('selected');
                                    $(this).addClass('selected');
                                }
                            });
                            $('#multi_col_order').on('click', '.remove-record', function() {
                                var id = $(this).attr('id');
                                if (confirm('Are you sure to delete this record ?')) {
                                    location.href = window.location.origin +
                                        "/approval_routing/delete_approval.php?routing_id=" + id;
                                }

                            });
                        });
                        </script>
</body>

</html>