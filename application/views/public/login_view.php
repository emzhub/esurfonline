 <?php defined('BASEPATH') OR exit('No direct script access allowed');?>
  
 <!--Intro Section-->
        <section class="view intro-2">
            <div class="full-bg-img">
              <div class="mask rgba-stylish-strong flex-center">
                <div class="container">
                    <div class="row">
                        <?php if ($this->session->flashdata('loginError')) { ?>
    <div class="alert alert-danger"> <?= $this->session->flashdata('loginError') ?> </div>
<?php } ?>
<?php if ($this->session->flashdata('flashSuccess')) { ?>
        <div class="alert alert-success"> <?= $this->session->flashdata('flashSuccess') ?> </div>
    <?php } ?>
                        <div class="col-xl-5 col-lg-6 col-md-10 col-sm-12 mx-auto mt-lg-5">

                            <!--Form with header-->
                            <div class="card wow fadeIn" data-wow-delay="0.3s">
                                <div class="card-body">

                                    <!--Header-->
                                    <div class="form-header purple-gradient">
                                        <h3><i class="fa fa-user mt-2 mb-2"></i> Log in:</h3>
                                    </div>

                                    <!--Body-->
                                        <?php echo form_open('',array('class'=>'form-horizontal'));?>
                                    <div class="md-form">
                                        <i class="fa fa-user prefix white-text"></i>
                                        <?php echo form_input('identity','','class="form-control"');?>  
                                        <label for="orangeForm-name">Your name</label>
                                        <br>  <?php echo form_error('identity');?>
                                    </div>
                                    <div class="md-form">
                                        <i class="fa fa-envelope prefix white-text"></i>
                                <?php echo form_password('password','','class="form-control"');?>
                                        <label for="orangeForm-pass">Your password</label>
                                        <br><?php echo form_error('password');?>
                                    </div>

                                      
 <a href="<?php echo site_url('auth/forgot_password');?>"  class="pull-right">forgot password...</a>

                                    <div class="text-center">
                                           <?php echo form_submit('submit', 'Sign up', 'class="btn purple-gradient btn-lg"');?>
    <?php echo form_close();?>
                                        
                                        <hr>
                                        <div class="inline-ul text-center d-flex justify-content-center">
                                            <a class="p-2 m-2 fa-lg tw-ic"><i class="fa fa-twitter white-text"></i></a>
                                            <a class="p-2 m-2 fa-lg li-ic"><i class="fa fa-linkedin white-text"> </i></a>
                                            <a class="p-2 m-2 fa-lg ins-ic"><i class="fa fa-instagram white-text"> </i></a>
                                            
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--/Form with header-->

                        </div>
                    </div>
                </div>
              </div>
            </div>
        </section>