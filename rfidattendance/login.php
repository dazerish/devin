<?php
session_start();
if (isset($_SESSION['Admin-name'])) {
  header("location: index.php");
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Calibr8 DEVIN</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel = "icon" href ="css/assets/c8.jpg" type = "image/x-icon">
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <script src="js/jquery-2.2.3.min.js"></script>
    <script>
      $(window).on("load resize ", function() {
          var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
          $('.tbl-header').css({'padding-right':scrollWidth});
      }).resize();
    </script>
    <script type="text/javascript">
      $(document).ready(function(){
        $(document).on('click', '.message', function(){
          $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
          $('h1').animate({height: "toggle", opacity: "toggle"}, "slow");
        });
      });
    </script>
</head>
<body class="login-body">
  <?php include'header.php'; ?>
<main>
  <!-- Remove reset password function based from wireframe?
  <h1 class="slideInDown animated">Login to your Calibr8 account</h1>
  <h1 class="slideInDown animated" id="reset">Reset Password</h1> -->

<!-- Log In -->
<section>
  <div class="slideInDown animated">
    <div class="login-box"> <!-- Changed from login-page -->
      <div class="login-header">
        <h1 class="slideInDown animated">Login to your Calibr8 account</h1>
        <h1 class="slideInDown animated" id="reset">Reset Password</h1>
      </div>
      <div class="form">

        <?php //Change error notif design
          if (isset($_GET['error'])) {
            if ($_GET['error'] == "invalidEmail") {
                echo '<div class="alert alert-danger">
                        This E-mail is invalid!!
                      </div>';
            }
            elseif ($_GET['error'] == "sqlerror") {
                echo '<div class="alert alert-danger">
                        There a database error!!
                      </div>';
            }
            elseif ($_GET['error'] == "wrongpassword") {
                echo '<div class="alert alert-danger">
                        Wrong password!!
                      </div>';
            }
            elseif ($_GET['error'] == "nouser") {
                echo '<div class="alert alert-danger">
                        This E-mail does not exist!!
                      </div>';
            }
          }
          if (isset($_GET['reset'])) {
            if ($_GET['reset'] == "success") {
                echo '<div class="alert alert-success">
                        Check your E-mail!
                      </div>';
            }
          }
          if (isset($_GET['account'])) {
            if ($_GET['account'] == "activated") {
                echo '<div class="alert alert-success">
                        Please Login
                      </div>';
            }
          }
          if (isset($_GET['active'])) {
            if ($_GET['active'] == "success") {
                echo '<div class="alert alert-success">
                        The activation like has been sent!
                      </div>';
            }
          }
        ?>
        <div class="alert1"></div>
        <form class="reset-form" action="reset_pass.php" method="post" enctype="multipart/form-data">
          <label for="email" class="login_label">Email</label>
          <input type="email" name="email" required/>
          <button type="submit" name="reset_pass">Reset</button>
          <p class="message"><a href="#">Log In</a></p>
        </form>

        <form class="login-form" action="ac_login.php" method="post" enctype="multipart/form-data">
          <label for="email" class="login_label">Email</label>
          <input type="email" name="email" id="email" required/>
          <label for="password" class="login_label">Password</label>
          <input type="pwd" name="pwd" id="pwd" required/>
          <button type="submit" name="login" id="login">Login</button>
          <p class="message">Forgot your Password? <a href="#"><b>Reset your password</b></a></p>
        </form>
      </div>
    </div>
  </div>
</section>
</main>
</body>
</html>