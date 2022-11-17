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
                            <div class="action-icon">
                                <a href="#" class="ard-btn">Enrollment</a>
                                <a href="#" class="ard-btn">Attendance</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td data-label="Device Name"><?=$employee->name;?></td>
                        <td data-label="Device Department"><?=$employee->type;?></td>
                        <td data-label="Device UID"><?=$employee->device_uid;?></td>

                        <td data-label="Device Mode">
                            
                        </td>
                    </tr>
            </tbody>
        </table>
    </div>
</div>

