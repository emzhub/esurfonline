<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
                <!-- Section: Blog v.3 -->
<section class="my-5">
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

      <!-- Post data -->
      <p>by <a class="font-weight-bold"><?php echo $this->Welcome_model->get_username($child->from_id)?></a>, <?=  $child->date ?> </p>
      <!-- Read more button -->
      <a href="<?= base_url('blogpost/view/'.$menu->msg_id.'')   ?>" class="btn btn-green btn-md">Read more</a>
       <?php
                }
            }
            ?>
    </div>
    <!-- Grid column -->
      </div>
  <!-- Grid row -->
     <?php } ?>




  </div>
  <!-- Grid row -->
 <!--Pagination -->
  <div id="pagination">
<ul class="tsc_pagination">
    
    <!-- Show pagination links -->
<?php foreach ($links as $link) {
echo "<li class='page-item active'>". $link."</li>";
} ?>
</div>
</div>
  <!--Pagination -->

</section>
<!-- Section: Blog v.3 -->





        