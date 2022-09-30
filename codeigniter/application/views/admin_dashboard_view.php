<nav>
    <div class="logo"><img src="<?= base_url('./assets/pictures/calibr8logo.jpg'); ?>" alt="Calibr8 Logo" height="30px"></div>
    <a class="nav-link" href="#">Dashboard</a>
    <a class="nav-link" href="<?= site_url('Admin/dev_masterlist_view') ?>" id="activebtn">View</a>
    <a class="nav-link" href="#">Edit</a>
    <a class="nav-link" href="#">Reservation</a>
    <a class="nav-link" href="#">Generate Reports</a>
    </div>
    <div class="dropdown">
        <a href="#" class="regbtn">Registration</a>
        <div class="list">
            <a href="<?= site_url('Admin/devReg_view') ?>" class="links">Device Registration</a>
            <a href="<?= site_url('Admin/empReg_view') ?>" class="links">Employee Registration</a>
        </div>
    </div>
    <a class="nav-link" href="<?= site_url('Login/logout') ?>">Logout</a> <!-- Temporary only -->

    <a href="#" class="ts"><i class="far fa-user" id="nav-user-icon"></i>Admin</a>


</nav>

<script>
    let click = document.querySelector('.regbtn');
    let list = document.querySelector('.list');
    click.addEventListener("click", () => {
        list.classList.toggle('newList');
    });
</script>
<script src="//cdn.amcharts.com/lib/4/core.js"></script>
<script src="//cdn.amcharts.com/lib/4/charts.js"></script>

<div class="view-emp-container">
    <h1 class="page-title"><b>View Employee Details</b></h1>
    <div class="detail-container">
        <div id="chartdiv" style="width: 100%; height: 400px;"></div>
    </div>
</div>