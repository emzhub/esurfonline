<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div id="container">
  <h1>Welcome to the Admin Dashboard!</h1>
 </div>
 

<section  id="editpost" class="section team-section pb-4 wow fadeIn text-center  my-5" data-wow-delay="0.3s">

<h5 class="text-uppercase red-text font-weight-bold">
                                              <hr class="hr-lighter danger-hr my-4">
                                  Blog
   
                                    </h5>
                  <br>
                  <br>
            
 
   <?php foreach ($blogpost as $menu) { ?>
    <hr class="my-5">
    <!-- Grid row -->
  <div class="row">
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
    <!-- Grid column -->

    <!-- Grid column -->
    <div class="col-lg-7 col-xl-8">
  <?php
            if (isset($menu->children)) {
                foreach ($menu->children as $child) {
                    ?>
      <!-- Post title --><br>
      <h3 class="font-weight-bold mb-3"><strong><?= $child->title ?> </strong></h3>
      <!-- Excerpt -->
     <p class="dark-grey-text"><?php echo word_limiter($child->message,25); ?> </p>
<?php //echo base_url() . "delete_ctrl/delete_student_id/" . $student->student_id; ?>
      <!-- Post data -->
      <p>by <a class="font-weight-bold"><?php echo $this->Welcome_model->get_username($child->from_id)?></a>, <?=  $child->date ?> </p>
      <!-- Read more button -->
      <a href="<?= base_url('admin/users/edit/'.$menu->msg_id.'')   ?>" class="btn btn-green btn-md">Edit</a>   <a href="<?= base_url('admin/users/dele/'.$menu->msg_id.'')   ?>" class="btn btn-red btn-md">delete</a>
       <?php
                }
            }
            ?>
    </div>
    <!-- Grid column -->
      </div>
  <!-- Grid row -->
     <?php } ?>
<!-- Card -->
      
</div>
     <div id="pagination">
<ul class="tsc_pagination">

<!-- Show pagination links -->
<?php foreach ($links as $link) {
echo "<li>". $link."</li>";
} ?>
</div>                 
</section>          


 <script>
      $('#summernote').summernote({
        placeholder: 'Hello stand alone ui',
        tabsize: 2,
        height: 100
      });


    </script>