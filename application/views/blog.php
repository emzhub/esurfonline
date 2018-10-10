<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

  <div class="colorlib-blog">
        <div class="colorlib-narrow-content">
          <div class="row">
            <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
              <span class="heading-meta">Blog</span>
              <h2 class="colorlib-heading">Read Blog</h2>
            </div>
          </div>
          <div class="row">
               <?php if (isset($results)) { ?>
              
                     
                    <?php foreach ($results as $menu) { ?>

                                          <?php
    // First get your image
    $img2= base_url('files/upload/'.$menu->msg_id.'/'.$menu->filename.'');
    $picture2 = base64_encode(file_get_contents($img2));
   // echo '<img width="100" height="100" src="data:image/jpg;base64,'. $picture .'" />'
    ?>
            <div class="col-md-4 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
              <div class="blog-entry">
                <a href="<?= base_url('blogpost/view/'.$menu->msg_id.'')   ?>" class="blog-img"> <img  class="img-fluid" src="data:image/jpg;base64,<?=$picture2; ?>" alt="<?=$this->Welcome_model->get($menu->msg_id)->title ?>"></a>
                <div class="desc">
                  <span><small> <?=  $menu->created_at ?>  </small> | <small><?php if($this->Welcome_model->get_username($menu->msg_id) =='administrator'){echo"Esurfonline";}else{echo"Esurfonline";} ?></small> | <small> <i class="icon-bubble3"></i>   </small></span>
                  <h3><a href="<?= base_url('blogpost/view/'.$menu->msg_id.'')   ?>"><?=$this->Welcome_model->get($menu->msg_id)->title ?></a></h3>
                  <p><?php echo word_limiter($this->Welcome_model->get($menu->msg_id)->message,25); ?></p>
                </div>
              </div>
            </div>
              <?php } ?>
              
            <?php } else { ?>
                <div>No New Post Yet.</div>
            <?php } ?>
          </div>

     

          <div class="row">
            <div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
                <?php if (isset($links)) { ?>
                <?php echo $links ?>
            <?php } ?>

            
            </div>
          </div>

        </div>
      </div>


