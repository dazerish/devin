<nav>
    <div class="logo"><img src="<?= base_url('./assets/pictures/calibr8logo.jpg'); ?>" alt="Calibr8 Logo" height="30px"></div>
    <a class="nav-link" href="<?= site_url('Employee') ?>">View</a>
    <a class="nav-link" href="#">Reservation</a>
    <a class="nav-link" href="<?= site_url('Employee/devList_view') ?>">Device Masterlist</a>

    <a class="nav-link" href="<?= site_url('Login/logout') ?>">Logout</a> <!-- Temporary only -->

    <a href="#" class="ts"><i class="far fa-user" id="nav-user-icon"></i>Employee</a>


</nav>



<section class="user-container">
    <h1 class="page-title"><b>Borrow This Device</b></h1>
    <div class="borrow_module">

        <?php foreach ($stocks as $stock) : ?>
            <div class="device-view">
                <img src="assets/pictures/lenovo.png" height="250px" alt="#">
                <h3><?= $stock->dev_name; ?></h3>
                <h3><?= $stock->unique_num; ?></h3>
                <h6>Specifications</h6>
                <div class="device-info">

                    <ul>
                        <li><?= $stock->specs; ?></li>
                        <li>RAM: 16GB 3200Mhz</li>
                        <li>Graphics: Integrated Intel HD Graphics 4000</li>
                        <li>Hard Drive: 1TB</li>
                        <li>Display: 14" inch; 1920 resolution</li>
                        <li>OS: Windows 10</li>
                    </ul>

                </div>
            </div>
        <?php endforeach; ?>
        <div class="picker-flex">
            <div class="picker-div">
                <?= form_open_multipart('Employee/set_reserveDate') ?>
                <?php if ($this->session->has_userdata('success')) : ?>
                    <div class="alert alert-success">
                        <?= $this->session->userdata('success'); ?>
                    </div>
                <?php endif; ?>

                <input type="hidden" name="unique-num" value="<?= $stock->unique_num; ?>">
                <input type="hidden" name="borrower" value="<?= $employee->emp_name; ?>">

                <label for="reservation-date">Pick a reservation date:</label><br>
                <input type="date" id="reservation-date" class="date-picker" name="reservation-date">

                <div class="btn-grp">
                    <button type="submit" class="cancel-btn" name="cancel-button">CANCEL</button>
                    <button type="submit" class="reserve-btn" name="borrow-device">BORROW DEVICE</button>
                </div>
                <?= form_close(); ?>
            </div>

        </div>






    </div>





</section>

</body>

</html>