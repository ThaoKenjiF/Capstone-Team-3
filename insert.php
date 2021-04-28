<?php
    include "config.php";
// Check user login or not
    if (!isset($_SESSION['emmployee_id'])) {
      header('Location: index.php');
      }
      if(isset($_POST['submit']))
      {    
          $app_date = date("Y-m-d H:i:s", $final);
          $prev_approval_date = date("Y-m-d H:i:s", $final);
          
          $sql = "INSERT INTO approval_routing (`LU_NAME`, `KEY_REF`, `STEP_NO`, `DESCRIPTION`, `APP_DATE`, `NOTE`, `PREV_APPROVAL_DATE`, `PERSON_ID`, `APPROVAL_STATUS`) VALUES ('$_POST[lu_name]',
          '$_POST[key_ref]', '$_POST[step_no]', '$_POST[description]', '$app_date', '$_POST[note]',  '$prev_approval_date', '$_POST[person_id]','$_POST[approval_status]')";
          if (mysqli_query($con, $sql)) {
              echo "New record has been added successfully !";
            } else {
                echo "Error: " . $sql . ":-" . mysqli_error($con);
            }
            mysqli_close($con);
            header('Location: home.php');
        }
?>