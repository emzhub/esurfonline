<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>






  <!-- Breadcrumb-->
 <!--      <div class="breadcrumb-holder">
        <div class="container-fluid">
          <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="<?php echo site_url(''); ?>">Home</a></li>
            <li class="breadcrumb-item active">Dahboard    </li>
          </ul>
        </div>
      </div> -->
    <!-- Heading -->
            <div class="card mb-4 wow fadeIn">

                <!--Card content-->
                <div class="card-body d-sm-flex justify-content-between">

                    <h4 class="mb-2 mb-sm-0 pt-1">
                        <a href="<?php echo site_url(''); ?>" target="_blank">Home Page</a>
                        <span>/</span>
                        <span>Dashboard</span>
                    </h4>
Welcome to the Admin Dashboard!

                </div>

            </div>
            <!-- Heading -->
<section class="my-5">
<h5 class="text-uppercase red-text font-weight-bold">
                                             
                                  Blog
   
                                    </h5>
                 
            
                  <?php if (isset($results)) { ?>
              
                     
                    <?php foreach ($results as $menu) { ?>
                 <hr class="hr-lighter danger-hr my-4">
    <!-- Grid row -->
  <div class="row">
    <!-- Grid column -->
    <div class="col-lg-5 col-xl-4">

      <!-- Featured image -->
      <div class="view overlay rounded z-depth-1-half mb-lg-0 mb-4">
        <a  href="<?= base_url('blogpost/'.$menu->msg_id.'')   ?>">
      <img  class="img-fluid" src="<?= base_url('files/upload/'.$menu->msg_id.'/'.$menu->filename.'')   ?>" alt=" <?=$menu->filename ?>"/>
        </a>
          <div class="mask rgba-white-slight"></div>
        
      </div>

    </div>
    <!-- Grid column -->

    <!-- Grid column -->
    <div class="col-lg-7 col-xl-8">
         <!-- Post title --><br>
      <h3 class="font-weight-bold mb-3"><strong> <?=$this->Welcome_model->get($menu->msg_id)->title ?></strong></h3>
      <!-- Excerpt -->
     <p class="dark-grey-text"> <?php echo word_limiter($this->Welcome_model->get($menu->msg_id)->message,25); ?> </p>

      <!-- Post data -->
      <p>by <a class="font-weight-bold"><?php echo $this->Welcome_model->get_username($this->Welcome_model->get($menu->msg_id)->from_id)?></a>, <?=  $menu->created_at ?> </p>
      <!-- Read more button -->
       <a href="<?= base_url('admin/users/view/'.$menu->msg_id.'')   ?>" class="btn btn-green btn-md">Read more</a> <a href="<?= base_url('admin/users/edit/'.$menu->msg_id.'')   ?>" class="btn btn-green btn-md">Edit</a>   <a href="<?= base_url('admin/users/dele/'.$menu->msg_id.'')   ?>" class="btn btn-red btn-md">delete</a>
    </div>
      </div>

                    <?php } ?>
              
            <?php } 

            else { ?>
              <div><p>No New Post Yet.............</p></div>
            <?php } ?>
 
         

     <?php if (isset($links)) { ?>
                <?php echo $links ?>
            <?php } ?>

  <!--Pagination -->

</section>
<!-- Section: Blog v.3 -->


        

