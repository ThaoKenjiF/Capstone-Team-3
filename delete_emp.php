<?php
    include "config.php";
    // Check user login or not
    if (!isset($_SESSION['emmployee_id'])) {
      header('Location: index.php');
      } 
?>
<?php
$sql = "DELETE FROM company_emp WHERE id='" . $_GET['person_id'] . "'";
if (mysqli_query($con, $sql)) {
  echo "Record deleted successfully";
  
} else {
    echo "Error deleting record: " . mysqli_error($con);
}
mysqli_close($con);
header("Location: {$_SERVER['HTTP_REFERER']}");

?>