       <?php defined('BASEPATH') OR exit('No direct script access allowed'); 
     ?>


 <div class="col-lg-12">
              <div class="card">
                <div class="card-header d-flex align-items-center">
                  <h4>All form elements</h4>
                                    <?php if ($this->session->flashdata('Error')) { ?>
    <div class="alert alert-danger"> <?= $this->session->flashdata('Error') ?> </div>
<?php } ?>
<?php if ($this->session->flashdata('Success')) { ?>
        <div class="alert alert-success"> <?= $this->session->flashdata('Success') ?> </div>
    <?php } ?>   
                </div>
                <div class="card-body">
   <?php echo form_open('admin/users/editt',array('class'=>'form-horizontal'));?>
    <?php 
                foreach ($editblogpost as $stud) {
                    ?>
 <div class="line"></div>
                    <div class="form-group row">
                   
                      <div class="col-sm-10">
                        <input type="hidden" class="form-control" name="post_id" id="post_id" value="<?=$stud->item_id;?>" placeholder="Title"><span class="text-small text-gray help-block-none">Title of post.</span> 
                      </div>
                    </div>

                 <div class="line"></div>
                    <div class="form-group row">
                      <label class="col-sm-2 form-control-label">    Name* :        </label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="name" id="name" value="<?=$stud->item_name;?>" placeholder="Title"><span class="text-small text-gray help-block-none">Title of post.</span> 
                        <?php
                              echo form_error('name');
                             ?>    
                      </div>
                    </div>

                          <div class="form-group row">
                      <label class="col-sm-2 form-control-label">    Price* :        </label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="price" id="price" value="<?= $stud->item_price ?>" placeholder="Price"><span class="text-small text-gray help-block-none">Title of post.</span>
                         <?php
                              echo form_error('price');
                             ?>    
                      </div>
                    </div>

                       <div class="line"></div>
                    <div class="form-group row">
                      <label class="col-sm-2 form-control-label">    Caption* :        </label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="cap" id="cap" value="<?=$stud->item_caption ?>" placeholder="Caption"><span class="text-small text-gray help-block-none">Title of post.</span> 
                        <?php
                              echo form_error('cap');
                             ?> 
                      </div>
                    </div>
                    <div class="line"></div>
                    <div class="form-group row">
                      <label class="col-sm-2 form-control-label">Description :    </label>
                      <div class="col-sm-10">
                          <textarea class="form-control" id="summernote"   name="summernote" value="<?= $stud->item_description ?>" ></textarea>
                             <?php
                              echo form_error('summernote');
                             ?> 
               </div>
                    </div>
                    <div class="line"></div>
                         <button type="submit" class="btn btn-primary" name="btn_add_product">
                                <i class="fa fa-save"></i> Add / Save 
                            </button>
                        <?php
                }
            
            ?>
               <?php echo form_close();?>
                    </div>
                    </div>
                    </div>