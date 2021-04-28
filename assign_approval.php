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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="dist/css/style.min.css" rel="stylesheet">
    <title>Assign</title>
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
                        $id = $_GET['person_id']; // get id through query string
                        
$qry = mysqli_query($con,"SELECT company_emp.ID, company_emp.COMPANY, company_emp.PERSON_ID, emp_job_assign.EMPLOYEE_ID, company_emp.EXPIRE_DATE, company_emp.ROWKEY, 
company_emp.FNAME, company_emp.LNAME, emp_job_assign.JOB_TITLE FROM company_emp INNER JOIN emp_job_assign ON company_emp.PERSON_ID = emp_job_assign.EMPLOYEE_ID where company_emp.id='$id'");

$data = mysqli_fetch_array($qry); // fetch data

if(isset($_POST['update'])) // when click on Update button
{
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
                        <div class="jumbotron jumbotron-fluid">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-10">
                                        <div class="card">
                                        
                                            
                                            <div class="card-body">
                                            <h5>Please fill this form and submit to assign approval to employees.</h5> <br>
                                                
                                                <form action="insert.php" method="post">
                                                    <div class="form-group row">
                                                        <label for="lu_name"
                                                            class="col-4 col-form-label">LU_NAME</label>
                                                        <div class="col-8">
                                                            <select id="lu_name" name="lu_name" class="custom-select">
                                                                <option>NonConformanceReport</option>
                                                                <option>InventoryPart</option>
                                                                <option>OrderQuotation</option>
                                                                <option>DocIssue</option>
                                                                <option>CustomerOrder</option>
                                                                <option>InquiryOrder</option>
                                                                <option>ReturnMaterialLine</option>
                                                                <option>MrbHead</option>
                                                                <option>CustomerAgreement</option>
                                                                <option>PurchaseRequistion</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    </br>
                                                    <div class="form-group row">
                                                        <label for="key_ref"
                                                            class="col-4 col-form-label">KEY_REF</label>
                                                        <div class="col-8">
                                                            <select id="key_ref" name="key_ref" class="custom-select">
                                                                <option>CONTRACT=100^PART_NO=370-C1000R^</option>
                                                                <option>CONTRACT=100^PART_NO=S236680^</option>
                                                                <option>MRB_NUMBER=4926^</option>
                                                                <option>CUSTOMER_ID=186935^</option>
                                                                <option>NCR_NO=1409^</option>
                                                                <option>QUOTATION_NO=1287198^</option>
                                                                <option>
                                                                    DOC_CLASS=701^DOC_NO=3160806^DOC_REV=()^DOC_SHEET=1^
                                                                </option>
                                                                <option>ORDER_NO=1703526^</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    </br>
                                                    <div class="form-group row">
                                                        <label for="text1" class="col-4 col-form-label">STEP_NO</label>
                                                        <div class="col-8">
                                                            <input id="number" name="step_no" type="number"
                                                                class="form-control" min="10" step="10" value="10" />
                                                        </div>
                                                    </div>
                                                    </br>

                                                    <div class="form-group row">
                                                        <label for="text1"
                                                            class="col-4 col-form-label">DESCRIPTION</label>
                                                        <div class="col-8">
                                                            <input id="text1" name="description" type="text"
                                                                class="form-control">
                                                        </div>
                                                    </div>
                                                    </br>
                                                    <div class="form-group row">
                                                        <label for="note" class="col-4 col-form-label">NOTE</label>
                                                        <div class="col-8">
                                                            <input id="note" name="note" type="text"
                                                                class="form-control" value="" />
                                                        </div>
                                                    </div>
                                                    </br>

                                                    <div class="form-group row">
                                                        <label for="text2"
                                                            class="col-4 col-form-label">PERSON_ID</label>
                                                        <div class="col-8">
                                                            <input id="person_id" name="person_id" type="text"
                                                                class="form-control"
                                                                value="<?php echo $data['PERSON_ID']; ?>" readonly>
                                                        </div>
                                                    </div>
                                                    </br>
                                                    <div class="form-group row">
                                                        <label for="approval_status"
                                                            class="col-4 col-form-label">APPROVAL_STATUS</label>
                                                        <div class="col-8">
                                                            <select id="approval_status" name="approval_status"
                                                                class="custom-select">
                                                                <option>Assigned</option>
                                                                <option>Pending</option>
                                                                <option>Approved</option>
                                                                <option>Rejected</option>
                                                                <option>Other</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    </br>

                                                    <div class="form-group row">
                                                        <div class="offset-4 col-8">
                                                            <input type="submit" class="btn btn-primary" name="submit"
                                                                value="Submit">
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php
    include "footer.php"
    ?>
        </div>
        <link href='//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js">
        </script>
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
                        "/approval_routing/delete.php?routing_id=" + id;
                }

            });
        });
        </script>
</body>

</html>