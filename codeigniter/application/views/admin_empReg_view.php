<nav>
        <div class="logo"><img src="<?= base_url('./assets/pictures/calibr8logo.jpg');?>" alt="Calibr8 Logo" height="30px"></div>
        <a class="nav-link" href="#">Dashboard</a>
        <a class="nav-link" href="#">View</a>
        <a class="nav-link" href="#">Edit</a>
        <a class="nav-link" href="#">Reservation</a>
        <a class="nav-link" href="#">Generate Reports</a>
        <div class="dropdown">
            <a href="#" class="regbtn" id="activebtn">Registration</a>
            <div class="list">
                <a href="<?= site_url('Admin/devReg_view')?>" class="links">Device Registration</a>
                <a href="<?= site_url('Admin/empReg_view')?>" class="links">Employee Registration</a>
            </div>
        </div>
        <a class="nav-link" href="<?= site_url('Login/logout')?>">Logout</a> <!-- Temporary only -->

        <a href="#" class="ts">Admin</a>
        </form>
</nav>
    <script>
        let click = document.querySelector('.regbtn');
        let list = document.querySelector('.list');
        click.addEventListener("click", ()=> {
            list.classList.toggle('newList');
        });
    </script>
  
    
    <section class="main_container">
        <div class="register_container">
            
            <div class="login_box">
                <!-- FORM HERE -->
                <form action="#" class="register_employee" method="#">
                    <h3 class="login_header" style="text-align: center">Employee Registration</h3>

                    <label for="empid" class="register_label">Employee ID</label><br>
                    <input type="text" id="empid" name="empid"><br>

                    <label for="empname" class="register_label">Employee Name</label><br>
                    <input type="text" id="empname" name="empname"><br>

                    <label for="superior" class="register_label">Direct Superior</label><br>
                    <input type="text" id="superior" name="superior"><br>

                    <label for="roles" class="register_label">Employee Role</label><br>
                    <select name="roles" id="roles">    
                        <option value="admin">Administrator</option>
                        <option value="employee">Employee</option>
                        <option value="exec">Executive</option>
                    </select><br>

                    <label for="init-pass" class="register_label">Initial Password</label><br>
                    <input type="text" id="superior" name="superior"><br>

                    <label for="emp-img" class="register_label">Employee Image</label><br>
                    <form action="/action_page.php">
                    <input type="file" id="myFile" name="filename">
                    </form>
                        
                    <input type="submit" class="all_btn" id="login_btn" value="REGISTER EMPLOYEE">
                </form>
            </div>
          
        </div>   
    </section>