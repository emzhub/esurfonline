<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<!DOCTYPE html>
<html lang="en">

  <head>
     <meta charset="utf-8">
       <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
       <?php if(!empty($page_title)){?>
    <title><?php echo $page_title; ?></title>
<?php }else{ ?>
    <title>Esurf - Online</title>
<?php } ?>
<?= meta($page_title);  ?>
    


<meta name="author" content="metatags generator">
<meta name="revisit-after" content="3 days">
  <!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-5FL79NG');</script>
<!-- End Google Tag Manager -->
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
  (adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "ca-pub-3537918279933213",
    enable_page_level_ads: true
  });
</script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-125424328-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-125424328-1');
</script>

   
    <meta name="msvalidate.01" content="5B6D597E288C5E1E80BA6C549F4433A9" />
<?php
    // First get your image
    $image = 'assets/public/img/ESURF-04.PNG';
    $img2='assets/public/images/esurfimage.jpg';
    $picture = base64_encode(file_get_contents($image));
     $picture2 = base64_encode(file_get_contents($img2));
   // echo '<img width="100" height="100" src="data:image/jpg;base64,'. $picture .'" />'
    ?>


  <link rel="icon" href="<?=$picture?>" type="image/png" />


<link href="<?php echo site_url('assets/theme-default.css');?>" rel="stylesheet">
<script type="text/javascript">function add_chatinline(){var hccid=15099007;var nt=document.createElement("script");nt.async=true;nt.src="https://mylivechat.com/chatinline.aspx?hccid="+hccid;var ct=document.getElementsByTagName("script")[0];ct.parentNode.insertBefore(nt,ct);}
add_chatinline(); </script>
<?php echo $before_head;?>
</head>
  <body>
    <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5FL79NG"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
  <div id="colorlib-page">
    <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
    <aside id="colorlib-aside" role="complementary" class="border js-fullheight">
      <h1 id="colorlib-logo"><a href="<?php echo site_url(''); ?>">
 <img style="max-width:100px; margin-top: -7px;"
             <?php echo '<img width="100" height="100" src="data:image/jpg;base64,'. $picture2 .'" />'  ?></a></h1>
   <?php
if($this->ion_auth->logged_in() && $this->ion_auth->is_admin()) {
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
else {
   echo $current_user_menu;   
} ?>

   
 </aside>
    <div id="colorlib-main">