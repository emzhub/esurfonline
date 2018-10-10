<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends Public_Controller
{
 
  function __construct()
  {
  //	$this->data['meta']['title'] = 'E-surf - Contact-Us';
    parent::__construct();
    		$this->load->library('email');
     		 $this->load->helper('url');
            $this->load->model('Bs_admin_model');

  }
	public function index()
	{
		 $this->data['page_title'] = 'E-surf -  Contact_us';
 		  $this->render('contact');
	}




// $to      = 'nobody@example.com';
// $subject = 'the subject';
// $message = 'hello';
// $headers = 'From: webmaster@example.com' . "\r\n" .
//     'Reply-To: webmaster@example.com' . "\r\n" .
//     'X-Mailer: PHP/' . phpversion();

// mail($to, $subject, $message, $headers);

	   public function send_mailv() 
	   {

$config['email_config']=$this->config->item('email_config', 'ion_auth');
		$config['admin_email']=$this->config->item('admin_email', 'ion_auth');
   $this->data['page_title'] = 'Contact';
        $this->load->library('form_validation');
       $this->form_validation->set_rules('contact-name','Your name','trim|required|required');
       $this->form_validation->set_rules('contact-email','Your email','trim|required');
       $this->form_validation->set_rules('contact-subject','Your Subject','trim|required|required');
       $this->form_validation->set_rules('contact-message','Your message','trim|required');
       $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
       
        if($this->form_validation->run()===FALSE)
        {
            $this->load->helper('form');
           $this->render('contact');
        }
        else
        {
				$name = $this->input->post('contact-name');
    			$email = $this->input->post('contact-email');
    			$subject = $this->input->post('contact-subject');
			    $message = $this->input->post('contact-message');

				$to      = $config['admin_email'];
				$subject = $subject;
				$message = $message;
				$headers = 'From: '.$email.'' . "\r\n" .
				    'Reply-To: '.$config['admin_email'].'' . "\r\n" .
				    'X-Mailer: PHP/' . phpversion();

				$r=mail($to, $subject, $message, $headers);
				     if($r===TRUE)
			     {
			        $this->session->set_flashdata('showSucces', 'Mail successfully sent... Thank You...');
			       $this->render('contact');
			     }
			     else
			    {
			     //show_error($this->email->print_debugger());
			    	     $this->session->set_flashdata('showErro', 'An Error occured ,Please Try again.');
         
			            $this->load->helper('form');
			            $this->render('contact');
			    }

		}
}

	   public function send_mail() {

$config['email_config']=$this->config->item('email_config', 'ion_auth');
		$config['admin_email']=$this->config->item('admin_email', 'ion_auth');
   $this->data['page_title'] = 'Contact';
        $this->load->library('form_validation');
       $this->form_validation->set_rules('contact-name','Your name','trim|required|required');
       $this->form_validation->set_rules('contact-email','Your email','trim|required');
       $this->form_validation->set_rules('contact-subject','Your Subject','trim|required|required');
       $this->form_validation->set_rules('contact-message','Your message','trim|required');
       $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
       
        if($this->form_validation->run()===FALSE)
        {
            $this->load->helper('form');
           $this->render('contact');
        }
        else
        {

      			$name = $this->input->post('contact-name');
    			$email = $this->input->post('contact-email');
    			$subject = $this->input->post('contact-subject');
			        $message = $this->input->post('contact-message');
			        $this->load->library('email');
			      $this->email->set_newline("\r\n");
			      $this->email->from($email); // change it to yours
			      $this->email->to($config['admin_email']);// change it to yours
			      $this->email->subject($subject);
			      $this->email->message($message);
			      if($this->email->send())
			     {
			        $this->session->set_flashdata('showSucces', 'Mail successfully sent... Thank You...');
			       $this->render('contact');
			     }
			     else
			    {
			     //show_error($this->email->print_debugger());
			    	     $this->session->set_flashdata('showErro', 'An Error occured ,Please Try again.');
         
			            $this->load->helper('form');
			            $this->render('contact');
			    }
    }
}
    function sendMail()
{

	$config['email_config']=$this->config->item('email_config', 'ion_auth');
		$config['admin_email']=$this->config->item('admin_email', 'ion_auth');
   $this->data['page_title'] = 'Contact';
        $this->load->library('form_validation');
       $this->form_validation->set_rules('contact-name','Your name','trim|required|required');
       $this->form_validation->set_rules('contact-email','Your email','trim|required');
       $this->form_validation->set_rules('contact-subject','Your Subject','trim|required|required');
       $this->form_validation->set_rules('contact-message','Your message','trim|required');
       $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
       
        if($this->form_validation->run()===FALSE)
        {
            $this->load->helper('form');
           $this->render('contact');
        }
        else
        {		 $name = $this->input->post('contact-name');
    			$email = $this->input->post('contact-email');
    			$subject = $this->input->post('contact-subject');
			        $message = $this->input->post('contact-message');
			        $this->load->library('email', $config['email_config']);
			      $this->email->set_newline("\r\n");
			      $this->email->from($email); // change it to yours
			      $this->email->to($config['admin_email']);// change it to yours
			      $this->email->subject($subject);
			      $this->email->message($message);
			      if($this->email->send())
			     {
			        $this->session->set_flashdata('showSucces', 'Mail successfully sent... Thank You...');
			       $this->render('contact');
			     }
			     else
			    {
			     //show_error($this->email->print_debugger());
			    	     $this->session->set_flashdata('showErro', 'An Error occured ,Please Try again.');
         
			            $this->load->helper('form');
			            $this->render('contact');
			    }
}
}
}
