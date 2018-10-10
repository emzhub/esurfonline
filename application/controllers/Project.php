<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Project extends Public_Controller
{
 
  function __construct()
  {

    parent::__construct();

  }
	public function index()
	{
		   $this->data['page_title'] = 'E-surf - Project';
 		  $this->render('project');
	}
}
