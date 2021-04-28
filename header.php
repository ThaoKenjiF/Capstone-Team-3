<nav class="navtop">
    <div>
        <h1><a href="home.php">Approval Routing Clean Up</a></h1>
        <!-- <h3>Welcome <?=$_SESSION['employee_name']?>,</h3> -->
        <a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a>
    </div>
</nav>
<div class="col-lg-12 ">
    <div class="card">
        <div class="card-body">

            <a class="btn btn-success" href="filter_terminated_emp.php" role="button">Approvals assigned to terminated
                employee</a>
            <a class="btn btn-success" href="active_employee.php" role="button">Active Employee</a>

            <?php   if ($_SESSION['role'] == "IT"){
      echo '<a class="btn btn-success" href="filter_obsolete.php" role="button">Approvals tied to absolete parts</a>';
    }
    ?>
            <form class="search_person_id float-right" action="search.php">
                <input type="text" placeholder="Search person id.." name="search"><button type="submit"><i
                        class="fa fa-search"></i></button>
            </form>
        </div>
    </div>
</div>