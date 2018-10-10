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


                 
          <?php echo form_open_multipart('admin/users/do_upload');?>
                  
                    <div class="line"></div>
                    <div class="form-group row">
                      <label class="col-sm-2 form-control-label">    Title * :        </label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="post_title" id="post_title" value="" placeholder="Title"><span class="text-small text-gray help-block-none">Title of post.</span> <?php
                              echo form_error('post_title');
                             ?>    
                      </div>
                    </div>
                    <div class="line"></div>
                    <div class="form-group row">
                      <label class="col-sm-2 form-control-label">Description :    </label>
                      <div class="col-sm-10">
                          <textarea class="form-control" id="summernote"   name="summernote" ></textarea>
                    <?php
                              echo form_error('summernote');
                             ?>  </div>
                    </div>
                    <div class="line"></div>
                    <div class="form-group row">
                      <label class="col-lg-2 form-control-label">Image : </label>
                      <div class="col-lg-10">
                              <input class="form-control" type="file" name="userfile" id="userfile">
                                            </div>
                    </div>
                  
            <button class="btn btn-primary" type="submit" name="save" id="">Save</button>


                  </form>
                </div>
              </div>
            </div>



  <?php echo form_close();?>




