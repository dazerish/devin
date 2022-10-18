<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<?= base_url('./assets/style.css'); ?>">
    <link rel="icon" href="<?= base_url('./assets/pictures/c8.jpg'); ?>" type="image/x-icon">
    <title><?= $title ?></title>
</head>

<nav>
    <div class="logo"><img src="<?= base_url('./assets/pictures/calibr8logo.jpg'); ?>" alt="Calibr8 Logo" height="30px"></div>
    <a class="nav-link" href="<?= site_url('Admin') ?>" id="activebtn">Dashboard</a>
    <div class="dropdown">
        <a href="<?= site_url('Admin/dev_masterlist_view') ?>" class="regbtn">View</a>
        <div class="list">
            <a href="<?= site_url('Admin/dev_masterlist_view') ?>" class="links">Device Masterlist</a>
            <a href="<?= site_url('Admin/emp_masterlist_view') ?>" class="links">Employee Masterlist</a>
        </div>
    </div>
    <a class="nav-link" href="#">Edit</a>
    <a class="nav-link" href="#">Reservation</a>
    <a class="nav-link" href="#">Generate Reports</a>
    </div>
    <div class="dropdown">
        <a href="<?= site_url('Admin/devReg_view') ?>" class="regbtn">Registration</a>
        <div class="list">
            <a href="<?= site_url('Admin/devReg_view') ?>" class="links">Device Registration</a>
            <a href="<?= site_url('Admin/empReg_view') ?>" class="links">Employee Registration</a>
        </div>
    </div>
    <a class="nav-link" href="<?= site_url('Login/logout') ?>">Logout</a> <!-- Temporary only -->

    <a href="#" class="ts"><i class="far fa-user" id="nav-user-icon"></i>Admin</a>


</nav>

<script src="//cdn.amcharts.com/lib/4/core.js"></script>
<script src="//cdn.amcharts.com/lib/4/charts.js"></script>

<body>