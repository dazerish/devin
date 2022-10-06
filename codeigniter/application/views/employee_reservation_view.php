<nav>
    <div class="logo"><img src="<?= base_url('./assets/pictures/calibr8logo.jpg');?>" alt="Calibr8 Logo" height="30px"></div>
    <a class="nav-link" href="<?= site_url('Employee')?>">View</a>
    <a class="nav-link" href="#" >Reservation</a>
    <a class="nav-link" href="<?= site_url('Employee/devList_view')?>">Device Masterlist</a>

    <a class="nav-link" href="<?= site_url('Login/logout')?>">Logout</a> <!-- Temporary only -->

    <a href="#" class="ts"><i class="far fa-user" id="nav-user-icon"></i>Employee</a>


</nav>



<section class="user-container">
    <h1 class="page-title"><b>Borrow This Device</b></h1>
    <div class="borrow_module">
        

        <div class="device-view">
            <img src="assets/pictures/lenovo.png" height="250px" alt="#">
            <h3>Lenovo Thinkpad X1</h3>
            <h6>Specifications</h6>
            <div class="device-info">
                
                <ul>
                    <li>Processor: Intel Core i7</li>
                    <li>RAM: 16GB 3200Mhz</li>
                    <li>Graphics: Integrated Intel HD Graphics 4000</li>
                    <li>Hard Drive: 1TB</li>
                    <li>Display: 14" inch; 1920 resolution</li>
                    <li>OS: Windows 10</li>
                </ul>
                    
                
            </div>
        </div>

        <div class="picker-flex">
            <div class="picker-div">
                <label for="reservation-date">Pick a reservation date:</label><br>
                <input type="date" id="reservation-date" class="date-picker" name="reservation-date">

                <div class="btn-grp">
                    <button class="cancel-btn">CANCEL</button>
                    <button class="reserve-btn">BORROW DEVICE</button>
                </div>

            </div>
        </div>
        

        
            
        

    </div>

    
        

    
</section>

</body>
</html>