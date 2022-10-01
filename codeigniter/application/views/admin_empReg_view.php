<section class="main_container">
    
    <div class="register_container">
        
        <div class="login_box">
            <!-- FORM HERE -->
                <?= form_open_multipart('Admin/employee_registration'); ?>
                <p class="login_header">Employee Registration</p>
                    <?php if($this->session->has_userdata('success')): ?>
                            <div class="alert alert-success">
                                <?= $this->session->userdata('success'); ?>
                            </div>
                    <?php endif; ?>
            <div class="row">
                <div class="col">
                    <label for="empid" class="register_label">Employee ID</label><br>
                    <input type="text" id="empid" name="empid"><br>
                    <span class="text-danger"><?= form_error('empid') ?></span>

                    <label for="empname" class="register_label">Employee Name</label><br>
                    <input type="text" id="empname" name="empname"><br>
                    <span class="text-danger"><?= form_error('empname') ?></span>

                    <label for="email" class="register_label">Employee Email</label><br>
                    <input type="text" id="email" name="email"><br>
                    <span class="text-danger"><?= form_error('email') ?></span>

                    <label for="superior" class="register_label">Direct Superior</label><br>
                    <input type="text" id="superior" name="superior"><br>
                    <span class="text-danger"><?= form_error('superior') ?></span>
                </div>

                <div class="col">
                    <label for="roles" class="register_label">Employee Role</label><br>
                    <select name="roles" id="roles">    
                        <option value="administrator">Administrator</option>
                        <option value="employee">Employee</option>
                        <option value="executive">Executive</option>
                    </select><br>
                    <span class="text-danger"><?= form_error('roles') ?></span>

                    <label for="init-pass" class="register_label">Initial Password</label><br>
                    <input type="password" id="init-pass" name="init-pass"><br>
                    <span class="text-danger"><?= form_error('init-pass') ?></span>

                    <label for="employee-image" class="register_label">Employee Image</label><br>
                    <input type="file" id="upload" name="employee_image" hidden/>
                        <label for="upload" class="upload-btn">Upload image </label>
                        <span class="text-danger" id="file-chosen"><?= form_error('employee_image') ?></span>
                </div>
            </div>
            
            
                
                
            <div class="reg-div">
                <input type="submit" class="all_btn" id="reg-emp" name="reg-emp" value="REGISTER EMPLOYEE">
            </div>
                
            <?= form_close(); ?>
        </div>
    
    </div> 
</section>