<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div id="container">
  <h1>Welcome to the Admin Dashboard!</h1>
 </div>
 
<section  id="blogpost" class="section team-section pb-4 wow fadeIn text-center" data-wow-delay="0.3s">
<br>
<br>
    
           

       <h5 class="text-uppercase red-text font-weight-bold">
                                              <hr class="hr-lighter danger-hr my-4">
                                        Blog Post
                                    </h5><br>
     <div class="row">
  <!-- Card -->
<div class="card">

    <!-- Content -->
    <div class="text-white text-center d-flex align-items-center ">
        <?php if ($this->session->flashdata('2flashError')) { ?>
    <div class="alert alert-danger"> <?= $this->session->flashdata('2flashError') ?> </div>
<?php } ?>
<?php if ($this->session->flashdata('2flashSuccess')) { ?>
        <div class="alert alert-success"> <?= $this->session->flashdata('2flashSuccess') ?> </div>
    <?php } ?> 
   <?php foreach ($blogpost as $menu) { ?>
<?php echo form_open_multipart('admin/users/edit');?>
     <!--   <form method="post" action="" id="upload_file">   -->
    <fieldset>      
        <!-- Grid column -->
    <div class="col-lg-5 col-xl-4">

      <!-- Featured image -->
      <div class="view overlay rounded z-depth-1-half mb-lg-0 mb-4">
        <a  href="<?= base_url('blogpost/'.$menu->msg_id.'')   ?>">
      <img  class="img-fluid" src="<?= base_url('upload/10/'.$menu->filename.'')   ?>" alt=" <?=$menu->filename ?>"/>
        <a>
          <div class="mask rgba-white-slight"></div>
        </a>
      </div>

    </div>
    <?php  if (isset($menu->children)) {
                foreach ($menu->children as $child) {
                    ?>
    <!-- Grid column -->       <label>Title * : </label>  <?php
                              echo form_error('post_title');
                             ?>                
        
            <div class="form-control">
                    <input class="form-control" type="text" name="post_title" id="post_title" value="<?= $child->title ?> " placeholder="Title" />
                    </div>
                    <div class="form-control">
                    <input class="form-control" type="hidden" name="post_name" id="post_name" value="<?=$menu->filename ?>" placeholder="Title" />
                    </div>
                   

            <label>Description : </label>         <?php
                              echo form_error('summernote');
                             ?>    
                           <!--  <textarea class="form-control" rows="5" cols="9" id="editordata" name="editordata"></textarea>       -->  
                              <!--  <textarea class="mceEditor" rows="10" cols="40" name="summernote"></textarea>     -->
               <textarea class="form-control" id="summernote" id="summernote" value="<?= $child->message ?> " name="summernote" placeholder="summernote"></textarea>
 
            <label>Image : </label>   
             <div class="form-control">
                     <input class="form-control" type="file" name="userfile" id="userfile">
                        </div>                  
          <!--   <input type="file" multiple="" name="images[]">  -->                            

            <button class="submitbtn purple-gradient btn-lg" type="submit" name="save" id="">Save</button>
                <?php
                }
            }
            ?>
    </fieldset>         
</form>
      <?php } ?>
        
    </div>
    <!-- Content -->
</div>
<!-- Card -->
    
</div>
                
</section>



 <script>
      $('#summernote').summernote({
        placeholder: 'Hello stand alone ui',
        tabsize: 2,
        height: 100
      });


    </script>