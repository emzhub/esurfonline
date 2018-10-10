<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
  <link rel="icon" href="assets/public/img/ESURF-04.PNG" type="image/png" />
 
<title><?php echo $page_title;?></title>
<link href="<?php echo site_url('assets/admin-default.css');?>" rel="stylesheet">


<?php echo $before_head;?>
</head>
<body>

   <?php
if($this->ion_auth->logged_in() && $this->ion_auth->is_admin()) {
     echo $current_user_menu;   
?>
  

<?php
if($this->session->flashdata('message'))
{
?>
  <div class="container" style="padding-top:40px;">
    <div class="alert alert-info alert-dismissible" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
aria-hidden="true">&times;</span></button>
      <?php echo $this->session->flashdata('message');?>
    </div>
  </div>
<?php
}}

?>
