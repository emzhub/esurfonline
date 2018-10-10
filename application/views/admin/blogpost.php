<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>



                <!-- Section: Blog v.3 --><!-- Section: Blog v.4 -->
<section class="my-5">
   <?php foreach ($getblogpost as $menu) { ?>
  <!-- Grid row -->
  <div class="row">

    <!-- Grid column -->
    <div class="col-md-12">
  <?php
            if (isset($menu->children)) {
                foreach ($menu->children as $child) {
                    ?>
      <!-- Card -->
      <div class="card card-cascade wider reverse">

        <!-- Card image -->
        <div class="view view-cascade overlay">
          <img class="card-img-top" src="<?= base_url('files/upload/10/'.$menu->filename.'')   ?>" alt=" <?=$menu->filename ?>">
          <a href="#!">
            <div class="mask rgba-white-slight"></div>
          </a>
        </div>

        <!-- Card content -->
        <div class="card-body card-body-cascade text-center">

          <!-- Title -->
          <h2 class="font-weight-bold"><a><?=$child->title ?></a></h2>
          <!-- Data -->
          <p>Written by <a><strong><?php echo $this->Welcome_model->get_username($child->from_id)?></strong></a>, <?=$child->date ?> </p>
          <!-- Social shares -->
          <div class="social-counters">
            <!-- Facebook -->
            <a class="btn btn-fb">
              <i class="fa fa-facebook pr-2"></i>
              <span class="clearfix d-none d-md-inline-block">Facebook</span>
            </a>
            <span class="counter">46</span>
            <!-- Twitter -->
            <a class="btn btn-tw">
              <i class="fa fa-twitter pr-2"></i>
              <span class="clearfix d-none d-md-inline-block">Twitter</span>
            </a>
            <span class="counter">22</span>
            <!-- Google+ -->
            <a class="btn btn-gplus">
              <i class="fa fa-google-plus pr-2"></i>
              <span class="clearfix d-none d-md-inline-block">Google+</span>
            </a>
            <span class="counter">31</span>
            <!-- Comments -->
            <a class="btn btn-default">
              <i class="fa fa-comments-o pr-2"></i>
              <span class="clearfix d-none d-md-inline-block">Comments</span>
            </a>
            <span class="counter">18</span>
          </div>
          <!-- Social shares -->
 
        </div>
        <!-- Card content -->

      </div>
      <!-- Card -->

      <!-- Excerpt -->
      <div class="mt-5">

        <p><?=$child->message?></p>

      </div>
 <?php
}
                }
            }
            ?>
    </div>
    <!-- Grid column -->

  </div>
  <!-- Grid row -->

  <!-- Grid row -->
</section>
				  


        