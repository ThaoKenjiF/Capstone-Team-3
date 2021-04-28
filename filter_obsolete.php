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
    <style>
    .jumbotron-fluid {
        min-height: 100%;
        position: relative;
    }
    </style>
</head>

<body class="loggedin">
    <?php
    include "header.php";
    ?>
    <div class="jumbotron-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Approvals tied to Obsolete Parts</h4>
                        <?php
    //   execute the SQL query and return records 
$sql = "SELECT * FROM approval_routing INNER JOIN inventory_part ON approval_routing.id = inventory_part.id WHERE inventory_part.part_status = 'O' AND KEY_REF LIKE '%PART!_NO%'ESCAPE'!' ";
if($result = mysqli_query($con, $sql)){
    if(mysqli_num_rows($result) > 0){
        ?>
                        <div class="table-responsive" id="events">
                            <table id="multi_col_order" class="table table-striped table-bordered table-hover no-wrap"
                                style="width:100%">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>LU_NAME</th>
                                        <th>KEY_REF</th>
                                        <th>STEP_NO</th>
                                        <th>DESCRIPTION</th>
                                        <th>APP_DATE</th>
                                        <th>NOTE</th>
                                        <th>PREV_APPROVAL_DATE</th>
                                        <th>PERSON_ID</th>
                                        <th>APPROVAL_STATUS</th>
                                        <th>ACTION</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
          while( $row = mysqli_fetch_assoc( $result ) ){
            $table = 
            "<tr>
              <td> ".$row['ID']."</td>
              <td> ".$row['LU_NAME']."</td>
              <td> ".$row['KEY_REF']."</td>
              <td>".$row['STEP_NO']."</td>
              <td>".$row['DESCRIPTION']."</td>
              <td>".$row['APP_DATE']."</td>
              <td>".$row['NOTE']."</td> 
              <td>".$row['PREV_APPROVAL_DATE']."</td> 
              <td>".$row['PERSON_ID']."</td> 
              <td>".$row['APPROVAL_STATUS']."</td> 

              <td><a class='btn btn-primary' href='update_app_routing.php?routing_id=".$row['ID']."'role='button'>Reassign</a>";
            if ($_SESSION['role'] == "IT"){
                $table .= "<button class='btn btn-danger remove-record' id=".$row['ID']." role='button'>Delete</button></td></tr>\n";
            }
            else{

              $table .= "</td></tr>\n";
            }

            echo $table;
            }
        // Close result set
        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($con);
}
// Close connection
mysqli_close($con);
?>
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
                location.href = window.location.origin + "/approval_routing/delete_approval.php?routing_id=" + id;
            }

        });
    });
    </script>

</body>

</html>