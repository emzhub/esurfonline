<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

   <?php foreach ($getblogpost as $menu) { ?>
      <div class="colorlib-about">
          <?php
            if (isset($menu->children)) {
                foreach ($menu->children as $child) {
                    ?>
                    <?php
    // First get your image
    $img2= base_url('files/upload/'.$menu->msg_id.'/'.$menu->filename.'');
    $picture2 = base64_encode(file_get_contents($img2));
   // echo '<img width="100" height="100" src="data:image/jpg;base64,'. $picture .'" />'
    ?>

        <div class="colorlib-narrow-content">
          <div class="row row-bottom-padded-md">
            <div class="col-md-12">
              <h2 class="colorlib-heading"><?=$child->title ?></h2>
                <p>Written by <a><strong><?php if($this->Welcome_model->get_username($child->from_id) =='administrator'){echo"Esurfonline";}else{echo"Esurfonline";} ?></strong></a>, <?=$child->date ?> </p>
              <div class="about-img animate-box" data-animate-effect="fadeInLeft" style="background-image: url(data:image/jpg;base64,<?=$picture2; ?>);">
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
              
             <p><?=$child->message?></p>
                
            </div>
          </div>
        </div>

 <?php
}
                }
?>
                      </div>
      <?php      }
            ?>
    
 