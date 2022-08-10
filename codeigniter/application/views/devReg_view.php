<nav>
        <div class="logo"><img src="assets/pictures/calibr8logo.jpg" alt="Calibr8 Logo" height="30px"></div>
        <div class="">
        <a href="#">Dashboard</a>
        <a href="#">View</a>
        <a href="#">Edit</a>
        <a href="#">Reservation</a>
        <a href="#">Generate Reports</a>
        </div>
        <div class="dropdown">
            <a href="#" class="regbtn" id="activebtn">Registration</a>
            <div class="list">
                <a href="device_register.html" class="links">Device Registration</a>
                <a href="employee_register.html" class="links">Employee Registration</a>
            </div>
        </div>
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
                <form action="#" class="register_device" method="#">
                    <h3 class="login_header" style="text-align: center">Device Registration</h3>

                    <label for="uniquenum" class="register_label">Device Unique Number</label><br>
                    <input type="text" id="uniquenum" name="uniquenum"><br>

                    <label for="devicename" class="register_label">Device Name</label><br>
                    <input type="text" id="devicename" name="devicename"><br>

                    <label for="model" class="register_label">Device Model</label><br>
                    <input type="text" id="model" name="model"><br>

                    <label for="manuf" class="register_label">Manufacturer</label><br>
                    <input type="text" id="manuf" name="manuf"><br>

                    <label for="specs" class="register_label">Specifications</label><br>
                    <input type="textarea" id="specs" name="specs"><br>

                    <label for="roles" class="register_label">Allowed Roles</label><br>
                    <select name="roles" id="roles">

                        <option value="admin">Administrator</option>
                        <option value="employee">Employee</option>
                        <option value="exec">Executive</option>
                    </select><br>

                    <label for="emp-img" class="register_label">Device Image</label><br>
                    <form action="/action_page.php">
                    <input type="file" id="myFile" name="filename">
                    </form>


                    <input type="submit" class="all_btn" id="login_btn" value="REGISTER DEVICE">
                </form>
            </div>
          
        </div>    
    </section>