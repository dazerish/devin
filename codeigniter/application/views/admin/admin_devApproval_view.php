
<script>
    let click = document.querySelector('.regbtn');
    let list = document.querySelector('.list');
    click.addEventListener("click", ()=> {
        list.classList.toggle('newList');
    });
</script>

<div class="user-container">

    <h1 class="page-title"><b>Device Approval List</b></h1>
    <span class="device-count"><?= $total; ?> Pending Devices</span>

    <?php if ($this->session->has_userdata('approved')) : ?>
            <div class="alert alert-success">
                <?= $this->session->userdata('approved'); ?>
            </div>
    <?php elseif ($this->session->has_userdata('rejected')): ?>
            <div class="alert alert-danger">
                <?= $this->session->userdata('rejected'); ?>
            </div>
    <?php endif; ?>


    <div class="table-container">
        <table class="table-responsive">
            <thead>
                <tr class="user-details">
                    <th scope="col"></th>
                    <th scope="col">Device ID</th>
                    <th scope="col">Device Name</th>
                    <th scope="col">Borrower</th>
                    <th scope="col">Reserved Date</th>
                    <th scope="col">Return Date</th>
                    <th scope="col">Actions</th>             
                </tr>
            </thead>

            <!--placed a placeholder so it can easily be identified and replaced with php function-->
            <tbody>
                <?php foreach ($transactions as $transaction) : ?>
                    <tr class="align-middle">
                        <td data-label="Transaction">
                            <img src="<?= base_url('./assets/device_image/placeholder1.png'); ?>" alt="device pic" class="device-pic">
                        </td>
                        <td class="emp-name-bold" data-label="Device ID"><?= $transaction->borrowedDev_id; ?></td>
                        <td data-label="Device Name"><?= $transaction->borrowedDev_name; ?></td>
                        <td data-label="Borrower"><?= $transaction->borrower; ?></td>
                        <td data-label="Reserved Date"><?= $transaction->decision_time; ?></td>
                        <td data-label="Return Date"><?= $transaction->return_date; ?></td>
                        <td data-label="Actions">
                            <a href="<?= site_url('Admin/reject_device/') .$transaction->transaction_id. '/'. $transaction->borrowedDev_id; ?>"><i class="fa far fa-times"></i></a>
                            <a href="<?= site_url('Admin/approve_device/'). $transaction->transaction_id. '/'. $transaction->borrowedDev_id; ?>"><i class="fas fa-check"></i></a>
                        </td>   
                    </tr>
                <?php endforeach; ?> 
            </tbody>
        </table>
    </div>
    
    <?= $this->pagination->create_links(); ?>
</div>