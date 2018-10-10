      <?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

  <div class="colorlib-contact">
        <div class="colorlib-narrow-content">
          <div class="row">
            <div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
              <span class="heading-meta">Read</span>
              <h2 class="colorlib-heading">Get in Touch</h2>
            </div>
          </div>
          <div class="row">
            <div class="col-md-5">
              <div class="colorlib-feature colorlib-feature-sm animate-box" data-animate-effect="fadeInLeft">
                <div class="colorlib-icon">
                  <i class="icon-globe-outline"></i>
                </div>
                <div class="colorlib-text">
                  <p><a href="#">info@esurfonline.com</a></p>
                </div>
              </div>

              <div class="colorlib-feature colorlib-feature-sm animate-box" data-animate-effect="fadeInLeft">
                <div class="colorlib-icon">
                  <i class="icon-map"></i>
                </div>
                <div class="colorlib-text">
                  <p>9 badaru street, jakande, lekki</p>
                </div>
              </div>

              <div class="colorlib-feature colorlib-feature-sm animate-box" data-animate-effect="fadeInLeft">
                <div class="colorlib-icon">
                  <i class="icon-phone"></i>
                </div>
                <div class="colorlib-text">
                  <p><a href="tel://">+234 70 8371466</a></p>
                </div>
              </div>
            </div>
            <div class="col-md-7 col-md-push-1">
              <div class="row">
                            <?php if ($this->session->flashdata('showErro')) { ?>
    <div class="alert alert-danger"> <?= $this->session->flashdata('showErro') ?> </div>
<?php } ?>
<?php if ($this->session->flashdata('showSucces')) { ?>
        <div class="alert alert-success"> <?= $this->session->flashdata('showSucces') ?> </div>
    <?php } ?> 
                <div class="col-md-10 col-md-offset-1 col-md-pull-1 animate-box" data-animate-effect="fadeInLeft">
                    <?php echo form_open('contact/sendMail',array('class'=>'form-horizontal'));?>

                    <div class="form-group">
                       <?php
                              echo form_error('contact-name');
                             ?>       
                      <input type="text" id="contact-name" name="contact-name" class="form-control" placeholder="Name">
                    </div>
                    <div class="form-group">
                        <?php
                              echo form_error('contact-email');
                             ?>          
                      <input type="text" id="contact-email" name="contact-email" class="form-control" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <?php
                              echo form_error('contact-subject');
                             ?>     
                      <input type="text" id="contact-Subject" name="contact-subject" class="form-control" placeholder="Subject">
                    </div>
                    <div class="form-group">
                       <?php
                              echo form_error('contact-message');
                             ?>       
                      <textarea id="contact-message" name="contact-message" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
                    </div>
                    <div class="form-group">
                      <input type="submit" class="btn btn-primary btn-send-message" name="btnSave" id="btnSave" value="Send Message">
                    </div>
                 <?php echo form_close();?>
                </div>
                
              </div>
            </div>
          </div>
        </div>
      </div>

    <!--   <div id="map"></div> -->

<div class="mapouter"><div class="gmap_canvas"><iframe width="1080" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=9%20badaru%20street%2C%20jakande%2C%20lekki&t=k&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.pureblack.de">webdesign agenturen</a></div><style>.mapouter{text-align:right;height:500px;width:1080px;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:1080px;}</style></div>
