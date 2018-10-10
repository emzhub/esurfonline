<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Testimonials extends Public_Controller
{
 
  function __construct()
  {
    parent::__construct();
     		 $this->load->helper('url');
            $this->load->model('Bs_admin_model');

  }
	public function index()
	{
 		  $this->render('testimonials');
	}




// $to      = 'nobody@example.com';
// $subject = 'the subject';
// $message = 'hello';
// $headers = 'From: webmaster@example.com' . "\r\n" .
//     'Reply-To: webmaster@example.com' . "\r\n" .
//     'X-Mailer: PHP/' . phpversion();

// mail($to, $subject, $message, $headers);

	 
}

