<div class="user-container">

    <div class="back-btn">
        <a href="<?= site_url('Admin/dev_masterlist_view');?>">< BACK</a>
    </div>

    <h1 class="page-title"><b>View Device Details</b></h1>
    <div class="view-emp-container">
        <div class="view-box">
            <div class="remove-btn-div">
                <a href="#removeBtnModal" class="remove-btn" data-bs-toggle="modal" data-bs-target="#removeBtnModal" ><i class="fas fa-trash-alt" id="remove-icon"></i>Remove Device</a>
            </div>
            
            <div class="detail-header">
                <img 
                    <?php if(isset($device->dev_image)): ?>
                        class="device-pic"
                        src="<?= base_url('./assets/device_image/') . $device->dev_image; ?>"
                        alt="device pic"
                        height="200px"
                    <?php endif?>
                >
                <h4><?= $device->dev_name; ?></h4>
                
            </div>

            

            <div class="detail-table-div">
                <table class="dev-detail-table">
                    <tr>
                        <th>Device Unique ID</th>
                        <td><?= $device->unique_num; ?></td>
                    </tr>
                    <tr><th>Device Model</th>
                        <td><?= $device->dev_model; ?></td>
                    </tr>
                    <tr>
                        <th>Manufacturer</th>
                        <td><?= $device->manufacturer; ?></td>
                    </tr>
                    <tr>
                        <th>Specifications</th>
                        <td><?= $device->specs; ?></td>
                    </tr>
                    <tr>
                        <th>Allowed Roles</th>
                        <td><?= $device->allowed_roles; ?></td>
                    </tr>
                    <tr>
                        <th>Current Status</th>
                        <td><?= $device->cur_status; ?></td>
                    </tr>
                    <tr>
                        <th>Previous Device Status</th>
                        <td><?= $device->prev_status; ?></td>
                    </tr>
                    
            </div>
                    
                    
                    
               
                    
        
            
        </div>
        
        
</div>



<!-- Modal -->
<div class="modal fade" id="removeBtnModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Are you sure you want to remove this device?</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        You are going to remove <?= $device->dev_name; ?>. Continue?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        <a href="<?= site_url('Admin/remove_device/') . $device->id; ?>" class="btn btn-danger">Remove Device</a>
      </div>
    </div>
  </div>
</div>
</section>
