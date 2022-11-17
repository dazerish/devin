<div class="user-container">

    <h1 class="page-title"><b>Arduino</b></h1>


    <div class="table-container">
        <table class="table-responsive" id="">
            <thead>
                <tr class="device-details">
                    <th>Arduino Name</th>
                    <th>Arduino Type</th>
                    <th>Arduino UID</th>
                    <th>Arduino Mode</th>
                </tr>
            </thead>

            <tbody>
                    <tr>
                        <td data-label="Arduino Name"><?=$device->name;?></td>
                        <td data-label="Arduino Type"><?=$device->type;?></td>
                        <td data-label="Arduino UID"><?=$device->device_uid;?></td>

                        <td data-label="Arduino Mode">
                            <div class="toggle-btn-div">
                                <div id="tog-btn-dev"></div>
                                <input type="hidden" value="<?=$device->device_mode?>">
                                <button type="button" class="toggle-btn"
                                onclick="toggleDev()">Enrollment</button>
                                <button type="button" class="toggle-btn"
                                onclick="toggleDev()">Attendance</button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td data-label="Device Name"><?=$employee->name;?></td>
                        <td data-label="Device Department"><?=$employee->type;?></td>
                        <td data-label="Device UID"><?=$employee->device_uid;?></td>

                        <td data-label="Device Mode">
                            <div class="toggle-btn-div">
                                <div id="tog-btn-emp"></div>
                                <input type="hidden" value="<?=$employee->device_mode?>">
                                <button type="button" class="toggle-btn"
                                onclick="leftClickEmp()">Enrollment</button>
                                <button type="button" class="toggle-btn"
                                onclick="rightClickEmp()">Attendance</button>
                            </div>
                        </td>
                    </tr>
            </tbody>
        </table>
    </div>
</div>

<script>
    var btn_dev = document.getElementById('tog-btn-dev')
    var btn_emp = document.getElementById('tog-btn-emp')

    function toggleDev() {
        <?php if($device->device_mode == 0) { ?>
                btn_dev.style.left = '0'
        <?php } elseif($device->device_mode == 1) { ?>
               btn_dev.style.left = '125px'
        <?php }   ?>
    }


    function leftClickDev() {
        btn_dev.style.left = '0'
    }

    function rightClickDev() {
        btn_dev.style.left = '125px'
    }

    function leftClickEmp() {
        btn_emp.style.left = '0'
    }

    function rightClickEmp() {
        btn_emp.style.left = '125px'
    }
</script>
