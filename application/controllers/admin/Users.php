<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends Admin_Controller
{

    function __construct()
    {
        parent::__construct();
 $this->db2 = $this->load->database('db', TRUE);
        $this->load->library('ajax');
          $this->load->helper('url');
            $this->load->model('Welcome_model');
            $this->load->model('Bs_admin_model');
   $this->load->model("calendar_model");
    $this->load->library('ion_auth');
     $this->load->library('session');
        if(!$this->ion_auth->in_group('admin'))
        {
            $this->postal->add('You are not allowed to visit the Users page','error');
            redirect('public');
        }
 //          $this->Message_model->count_messages();
 //          $this->data['sch'] = $this->Bs_admin_model->get_user_schabr();
 //    $this->data['avatar'] = $this->Bs_admin_model->get_user_avatar();
 // $this->data['recordb'] = $this->Message_model->get_new_messages();
      
       
    }

    public function index($group_id = NULL)
    {
        $this->data['page_title'] = 'Users';

       $this->data['users'] = $this->ion_auth->users($group_id)->result();
        //$this->data['users'] = $this->ion_auth->users(array(1,'members'))->result();
        $this->render('admin/users/index_view');
  }


 public function edity()
    {
          $id=$this->uri->segment(4);
             $this->data['page_title'] = 'Edit user';
         $this->data['blogpost'] = $this->Bs_admin_model->get_one_blog_post($id);
           $this->render('admin/users/edit_view');
    }

  public function mkc()
    {
        $this->data['page_title'] = 'Mkc';
         $this->data['sch'] = $this->Bs_admin_model->get_user_schabr();
          $this->data['cch'] = $this->Bs_admin_model->get_category();
          $this->render('admin/add/tpl_mkc_con');
  }

  public function mkcc()
    {

        $this->data['page_title'] = 'New Post';
         $this->data['sch'] = $this->Bs_admin_model->get_user_schabr();
          $this->data['cch'] = $this->Bs_admin_model->get_category();
          $this->render('admin/add/tpl_mkc_conn');

  }

   public function mkccv()
    {

        $this->data['page_title'] = 'New Post';
         $this->data['sch'] = $this->Bs_admin_model->get_user_schabr();
          $this->data['cch'] = $this->Bs_admin_model->get_category();
           $this->render('admin/add/tpl_mkc_con');
  }




   public function editt($user_id = NULL)
    {
      
        $this->data['page_title'] = 'Edit Post';
            $this->load->library('form_validation');

        
      $this->form_validation->set_rules('name','Title ','trim|required|required');
         $this->form_validation->set_rules('cap','Caption ','trim|required|required');
       $this->form_validation->set_rules('price','Price ','trim|required');
          $this->form_validation->set_rules('summernote','Description ','trim|required');
        $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');

        if($this->form_validation->run() === FALSE)
        {
            $this->data['editblogpost'] = $this->Bs_admin_model->get_one_mkc_blog_post($user_id);
            $this->session->set_flashdata('flasError', 'An Error occured Please Try again.');
            $this->load->helper('form');
            $this->render('admin/add/tpl_edit_mkc_con');
        }
      else{
      
                    $title = $this->input->post('name');
                    $price = $this->input->post('price');
                     $caption = $this->input->post('cap');
                      $message = $this->input->post('summernote');
                     $user_id =  $this->ion_auth->user()->row()->uid; 
                   // $message_id   = $randid;
                        $where =  $this->input->post('post_id');
         $additional = array(  
                     'item_name'     =>  $title,
                    'item_caption'      => $caption,
                    'item_description'           => $message,
                     'item_status'           => 1,
                      'item_price'           => $price
                  );

                    $id=$this->Bs_admin_model->update_alwel($additional,$where);
           
                    if($id==TRUE){
                          $this->session->set_flashdata('2flashSuccess', 'update  have successfully added Thank You...');  
                          $this->mkccv();
                    } else {
                       $this->session->set_flashdata('2flashError', 'Failed To update');
                          $this->mkccv();
                             }
                }

}

   
    public function edit($user_id = NULL)
    {
      
        $this->data['page_title'] = 'Edit user';
       //         $randid= mt_rand(13, rand(100, 99999990));
    
       //  $upload_path="./upload"; 
       //  $uid="10"; //creare seperate folder for each user 
       //  $upPath=$upload_path."/".$uid;
       //  if(!file_exists($upPath)) 
       //  {
       //             mkdir($upPath, 0777, true);
       //  }
       //  $config = array(
       //  'upload_path' => $upPath,
       //  'allowed_types' => "gif|jpg|png|jpeg",
       //  'overwrite' => TRUE,
       //  'max_size' => "92048000", 
       //  'max_height' => "99768",
       //  'max_width' => "991024"
       //  );
       // $this->load->library('upload', $config);
        $this->load->library('form_validation');

         $this->form_validation->set_rules('post_title','Title ','trim|required|required');
         $this->form_validation->set_rules('summernote','Description ','trim|required');
        $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');

        if($this->form_validation->run() === FALSE)
        {
            $this->data['blogpost'] = $this->Bs_admin_model->get_one_blog_post($user_id);
            $this->session->set_flashdata('flasError', 'An Error occured Please Try again.');
            $this->load->helper('form');
            $this->render('admin/users/edit_view');
        }
      else{
             // if (!$this->upload->do_upload('userfile')) {
             //        $error = $this->upload->display_errors();

             //         json_encode(array('status' => false, 'error' => $error));
             //        $this->session->set_flashdata('2flashError', $error);
                 
             //        //$this->data['groups'] = $this->ion_auth->groups()->result();
             //       // $this->load->helper('form');
             //       //redirect($_SERVER['HTTP_REFERER']);
             //      $this->render('admin/users/edit_view','admin_master');
             //    } else {
                   // $upload = $this->upload->data();
    
                    // $data = array(
                    //      'msg_id'         => $randid,
                    //     'filename'   => $upload['file_name'],
                    //     'created_at' => date("Y-m-d"),
                    // );
                      $title = $this->input->post('post_title');
                    $message = $this->input->post('summernote');
                      $mes_id =  $this->ion_auth->user()->row()->uid; 
                    // $message_id   = $randid;
                   
                    $where =  $this->input->post('post_id');
                    //$filename = $upload['file_name'];
                   $additional = array(  
                     'msg_id'         =>  $user_id,
                     'from_id'     =>  $mes_id,
                    'title'      => $title,
                    'message'           => $message,
                     'date'              => gmdate('d-m-Y h:i A'),
                     'time'              => time()
                  );

                    $id=$this->Bs_admin_model->update_all($additional,$where);
                    //unlink("upload/".$filename);
                //     $path = BASEPATH.'/upload/10/';
                // $get_file = $path.$filename;
                // if(file_exists($get_file)){
                //    unlink($get_file);
                // }
                    //$id = $this->Bs_admin_model->in($data);

                    if($id==TRUE){
                     // json_encode(array('status' => true, 'id' => $id));
                          $this->session->set_flashdata('2flashSuccess', 'update  have successfully added Thank You...');  
                 // $this->data['blogpost'] = $this->Bs_admin_model->get_one_blog_post($user_id);
                     // $this->render('admin/users/edit_view');
                      //redirect($_SERVER['HTTP_REFERER']);
                  // $this->render('admin/dashboard_view');
                          $this->edity();
                    } else {
                     //  json_encode(array('status' => false, 'error' => 'Failed To update'));
                       // unlink('./upload/'.$data['filename']);
               $this->session->set_flashdata('2flashError', 'Failed To update');
           //  $this->data['blogpost'] = $this->Bs_admin_model->get_one_blog_post($user_id);
             // $this->render('admin/users/edit_view');
               //  redirect($_SERVER['HTTP_REFERER']);
  $this->edity();
           //  $this->render('admin/dashboard_view');
                    }
                }

}





    public function view($sec_id)
  {
    //$sec_id=$this->uri->segment(3);
    $this->data['page_title'] = 'Read More';
       $this->data['users'] = $this->ion_auth->users()->result();
        $this->data['getblogpost'] = $this->Welcome_model->get_one_blog_post($sec_id);
      $this->render('admin/blogpost');
  } 

    public function delete($user_id = NULL)
    {
        if(is_null($user_id))
        {
            $this->postal->add('There\'s no user to delete','error');
        }
        else
        {
            $this->ion_auth->delete_user($user_id);
            $this->session->set_flashdata('message',$this->ion_auth->messages());
            //$this->postal->add($this->ion_auth->messages(),'success');
        }
        redirect('admin/users');
    }

   public function cp()
    {
        $randid= mt_rand(13, rand(100, 99999990));
        $this->data['page_title'] = 'Change Password';
        $this->load->library('form_validation');
         $this->form_validation->set_rules('password','password','required|min_length[6]');
         $this->form_validation->set_rules('password_confirm','Password confirmation','required|matches[password]');
        $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
        if($this->form_validation->run()===FALSE)
        {
          // Display error message
        //  $this->session->set_flashdata('flashError', 'An Error occured '.$this->ion_auth->errors().',Please Try again.');
            //$this->data['groups'] = $this->ion_auth->groups()->result();
            $this->load->helper('form');
            $this->render('admin/add/tpl_change_password','admin_master');
        }
        else
        {
         $new_data = array();
            if(strlen($this->input->post('password'))>=6) $new_data['password'] = $this->input->post('password');

            $user_id =  $this->ion_auth->user()->row()->id; 
    
            $id = $this->ion_auth->update($user_id, $new_data);
                 // $id=$this->ion_auth->adminregstud($uid,$username, $password,$email, $school_id, $department_id, $program_type, $additional, $dataarr, $group_ids);
          // $id=$this->Bs_admin_model->addstudent($dataarr);

        if($id!=TRUE){

                // Display error message
         $this->session->set_flashdata('2flashError', 'An Error occured ,Please Try again.');
         
            //$this->data['groups'] = $this->ion_auth->groups()->result();
            $this->load->helper('form');
            $this->render('admin/tpl_change_password','admin_master');

        }
        else
        {
  
             // Display Success message
          // echo "<script>alert('Change Submitted Successfully....!!!! ');</script>";
          $this->session->set_flashdata('2flashSuccess', 'Change Submitted Successfully....!!!!  Thank You.');
          // $this->postal->add($this->ion_auth->messages(),'success');
            redirect('admin/users/cp');
        }
        }  
    }


public function delcat()
{

$data = array();

    //$count = count($this->input->post['catname']);

   // for($i=0; $i < $count; $i++) {
          foreach($_POST['nprent'] as $k => $student_id){
            
          $this->db2->where("cat_id", $student_id);  
            $id= $this->db2->delete("vi_category");  
    }
   
 //  $id= $this->db2->insert_batch('vi_category', $data);
$r= $this->db2->error();
        if($id!=TRUE){

                // Display error message
         $this->session->set_flashdata('2flashError', 'An Error occured ,Please Try again.'.$r.'');
         
            //$this->data['groups'] = $this->ion_auth->groups()->result();
            $this->load->helper('form');
            $this->render('admin/add/tpl_mkc_con','admin_master');

        }
        else
        {
  
             // Display Success message
          // echo "<script>alert('Change Submitted Successfully....!!!! ');</script>";
          $this->session->set_flashdata('2flashSuccess', 'Operation Submitted Successfully....!!!!  Thank You.');
          // $this->postal->add($this->ion_auth->messages(),'success');
            redirect('admin/users/mkc');
        }
  }


public function delldpcat()
{

$data = array();

    //$count = count($this->input->post['catname']);

   // for($i=0; $i < $count; $i++) {
          foreach($_POST['nprentr'] as $k => $student_id){
            
          $this->db2->where("item_id", $student_id);  
            $id= $this->db2->delete("vi_items");  

                 $this->db2->where("item_id", $student_id);  
            $id= $this->db2->delete("vi_item_images"); 

            $path='../mkc/files/upload/product/'.$student_id.'';
$this->load->helper("file"); // load the helper
delete_files($path, true); // delete all files/folders
rmdir($path);
    }
   
 //  $id= $this->db2->insert_batch('vi_category', $data);
$r= $this->db2->error();
        if($id!=TRUE){

                // Display error message
         $this->session->set_flashdata('2flashError', 'An Error occured ,Please Try again.'.$r.'');
         
            //$this->data['groups'] = $this->ion_auth->groups()->result();
            $this->load->helper('form');
            $this->render('admin/add/tpl_mkc_con','admin_master');

        }
        else
        {
  
             // Display Success message
          // echo "<script>alert('Change Submitted Successfully....!!!! ');</script>";
          $this->session->set_flashdata('2flashSuccess', 'Operation Submitted Successfully....!!!!  Thank You.');
          // $this->postal->add($this->ion_auth->messages(),'success');
            redirect('admin/users/mkc');
        }
  }


public function delbrand()
{

$data = array();

    //$count = count($this->input->post['catname']);

   // for($i=0; $i < $count; $i++) {
          foreach($_POST['nprentr'] as $k => $student_id){
            
          $this->db2->where("brand_id", $student_id);  
            $id= $this->db2->delete("vi_brands");  
    }
   
 //  $id= $this->db2->insert_batch('vi_category', $data);
$r= $this->db2->error();
        if($id!=TRUE){

                // Display error message
         $this->session->set_flashdata('2flashError', 'An Error occured ,Please Try again.'.$r.'');
         
            //$this->data['groups'] = $this->ion_auth->groups()->result();
            $this->load->helper('form');
            $this->render('admin/add/tpl_mkc_con','admin_master');

        }
        else
        {
  
             // Display Success message
          // echo "<script>alert('Change Submitted Successfully....!!!! ');</script>";
          $this->session->set_flashdata('2flashSuccess', 'Operation Submitted Successfully....!!!!  Thank You.');
          // $this->postal->add($this->ion_auth->messages(),'success');
            redirect('admin/users/mkc');
        }
  }

public function addcat()
{

$data = array();

    //$count = count($this->input->post['catname']);

   // for($i=0; $i < $count; $i++) {
          foreach($_POST['catname'] as $k => $student_id){
             $randid= mt_rand(13, rand(100, 99999990));
        $data[] = array(
            'cat_id'=> $randid,
            'cat_name' =>   $student_id,
            'date'  => gmdate('d-m-Y h:i A'),
           );
    }
   $id= $this->db2->insert_batch('vi_category', $data);
$r= $this->db->error();
        if($id!=TRUE){

                // Display error message
         $this->session->set_flashdata('2flashError', 'An Error occured ,Please Try again.'.$r.'');
         
            //$this->data['groups'] = $this->ion_auth->groups()->result();
            $this->load->helper('form');
            $this->render('admin/add/tpl_mkc_con','admin_master');

        }
        else
        {
  
             // Display Success message
          // echo "<script>alert('Change Submitted Successfully....!!!! ');</script>";
          $this->session->set_flashdata('2flashSuccess', 'Operation Submitted Successfully....!!!!  Thank You.');
          // $this->postal->add($this->ion_auth->messages(),'success');
            redirect('admin/users/mkc');
        }
  }


public function addcatprodt()
{

$data = array();

   // $count = count($this->input->post['Schoolname']);

   // for($i=0; $i < $count; $i++) {
          foreach($_POST['Schoolname'] as $k => $student_id){
             $randid= mt_rand(13, rand(100, 99999990));
        $data[] = array(
              'cat_id'=> $_POST['School'],
            'brand_id'=> $randid,
            'brand_name' =>   $student_id,
            'date'  => gmdate('d-m-Y h:i A'),
           );
    }
   $id= $this->db2->insert_batch('vi_brands', $data);
$r= $this->db->error();
        if($id!=TRUE){

                // Display error message
         $this->session->set_flashdata('2flashError', 'An Error occured ,Please Try again.'.$r.'');
         
            //$this->data['groups'] = $this->ion_auth->groups()->result();
            $this->load->helper('form');
            $this->render('admin/add/tpl_mkc_con','admin_master');

        }
        else
        {
  
             // Display Success message
          // echo "<script>alert('Change Submitted Successfully....!!!! ');</script>";
          $this->session->set_flashdata('2flashSuccess', 'Operation Submitted Successfully....!!!!  Thank You.');
          // $this->postal->add($this->ion_auth->messages(),'success');
            redirect('admin/users/mkc');
        }
  }


  public function upload_multiple_files()
    {
     $this->load->library('form_validation');
        $brandid= mt_rand(13, rand(100, 99999990));
    
       // $upload_path="localhost/mkc/files/upload"; 
         $upload_path="./files/upload/product"; 
        $uid=$brandid; //creare seperate folder for each user 
        $upPath=$upload_path."/".$uid;
        if(!file_exists($upPath)) 
        {
                   mkdir($upPath, 0777, true);
        }
        $config = array(
        'upload_path' => $upPath,
        'allowed_types' => "gif|jpg|png|jpeg",
        'overwrite' => TRUE,
        'max_size' => "92048000", 
        'max_height' => "99768",
        'max_width' => "991024"
        );
       $this->load->library('upload', $config);
        for($count = 0; $count<count($_FILES["files"]["name"]); $count++)
  {
       $randid= mt_rand(13, rand(100, 99999990));
      $this->form_validation->set_rules('name','Title ','trim|required|required');
         $this->form_validation->set_rules('cap','Caption ','trim|required|required');
       $this->form_validation->set_rules('price','Price ','trim|required');
          $this->form_validation->set_rules('summernote','Description ','trim|required');
        $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
        if($this->form_validation->run()===FALSE && !$this->upload->do_upload('files'))
        {
          // Display error message
          $this->session->set_flashdata('Error', 'An Error occured '.$this->ion_auth->errors().',Please Try again.');
            //$this->data['groups'] = $this->ion_auth->groups()->result();
            $this->load->helper('form');
             $this->mkcc();
                //$this->data['depts'] = $this->Bs_admin_model->get_all_department();
       //  redirect($_SERVER['HTTP_REFERER']);
           // $this->render('admin/dashboard_view','admin_master');
        }
       else
         {
                // if (!$this->upload->do_upload('files')) {
                //     $error = $this->upload->display_errors();

                //      json_encode(array('status' => false, 'error' => $error));
                //     $this->session->set_flashdata('Error', $error);
                 
                //     //$this->data['groups'] = $this->ion_auth->groups()->result();
                //    // $this->load->helper('form');
                //     $this->mkcc();// redirect($_SERVER['HTTP_REFERER']);// $this->render('admin/dashboard_view','admin_master');
                // } else {

                    $upload = $this->upload->data();
    
                    $data = array(
                       'item_id'   => $brandid,
                        'image_id'   => $randid,
                        'vendor_id'   =>   $this->ion_auth->user()->row()->uid,
                        'image_url'   =>  $upload_path.'/'.$upload['file_name'],
                        'image_status'   => 1,
                        'created_at' => date("Y-m-d"),
                    );
                      $title = $this->input->post('name');
                    $price = $this->input->post('price');
                     $caption = $this->input->post('cap');
                      $message = $this->input->post('summernote');
                     $user_id =  $this->ion_auth->user()->row()->uid; 
                    $message_id   = $randid;
                   

                   $additional = array(  
                     'item_id'         => $brandid,
                     'item_name'     =>  $title,
                    'item_caption'      => $caption,
                    'item_description'           => $message,
                     'item_status'           => 1,
                      'item_catid'           => $this->input->post('catid'),
                       'item_subid'           => $this->input->post('sh'),
                      'price'           => $price
                  );
                    $id=$this->Bs_admin_model->insert_all($additional,$data);

                    //$id = $this->Bs_admin_model->in($data);

                    if ($id) {
                      json_encode(array('status' => true, 'id' => $id));
                 $this->session->set_flashdata('Success', 'New File  have successfully added Thank You...');
                     $this->mkcc();// redirect($_SERVER['HTTP_REFERER']);//  $this->render('admin/dashboard_view','admin_master');
                    } else {
                       json_encode(array('status' => false, 'error' => 'Failed insert image'));
                           unlink('./files/upload/111/'.$data['filename']);
                 $this->session->set_flashdata('Error', $error);
                 $this->mkcc();//redirect($_SERVER['HTTP_REFERER']);//  $this->render('admin/dashboard_view','admin_master');
                    }
                }

         }




    }


public function upwork()
{

$data = array();

    //$count = count($this->input->post['catname']);

   // for($i=0; $i < $count; $i++) {
          foreach($_POST['catname'] as $k => $student_id){
             $randid= mt_rand(13, rand(100, 99999990));
        $data[] = array(
            'cat_id'=> $randid,
            'cat_name' =>   $student_id,
            'date'  => gmdate('d-m-Y h:i A'),
           );
    }
   $id= $this->db2->insert_batch('vi_category', $data);
$r= $this->db->error();
        if($id!=TRUE){

                // Display error message
         $this->session->set_flashdata('2flashError', 'An Error occured ,Please Try again.'.$r.'');
         
            //$this->data['groups'] = $this->ion_auth->groups()->result();
            $this->load->helper('form');
            $this->render('admin/add/tpl_mkc_con','admin_master');

        }
        else
        {
  
             // Display Success message
          // echo "<script>alert('Change Submitted Successfully....!!!! ');</script>";
          $this->session->set_flashdata('2flashSuccess', 'Operation Submitted Successfully....!!!!  Thank You.');
          // $this->postal->add($this->ion_auth->messages(),'success');
            redirect('admin/users/mkc');
        }
  }
function dele($id) 
{
    $path='./files/upload/'.$id.'';
$this->load->helper("file"); // load the helper
delete_files($path, true); // delete all files/folders
rmdir($path);

//$id = $this->uri->segment(3);
$id=$this->Bs_admin_model->delet($id);
 
 if($id!=TRUE){

                // Display error message
         $this->session->set_flashdata('2flashError', 'An Error occured ,Please Try again.');
//redirect($this->uri->uri_string()); 
//redirect(current_url(), 'refresh');
  redirect($_SERVER['HTTP_REFERER']);
   //  $this->render('admin/dashboard_view');
    }
    else{
        
      $this->session->set_flashdata('2flashSuccess', 'Change Submitted Successfully....!!!!  Thank You.');
   redirect($_SERVER['HTTP_REFERER']);
    //  redirect(current_url(), 'refresh');
  //    $this->render('admin/dashboard_view');
    }
}


 public function do_upload()
    {  

         $this->data['page_title'] = 'Admin Control Panel';
        $this->load->library('form_validation');
        $randid= mt_rand(13, rand(100, 99999990));
    
        $upload_path="./files/upload"; 
        $uid=$randid; //creare seperate folder for each user 
        $upPath=$upload_path."/".$uid;
        if(!file_exists($upPath)) 
        {
                   mkdir($upPath, 0777, true);
        }
        $config = array(
        'upload_path' => $upPath,
        'allowed_types' => "gif|jpg|png|jpeg",
        'overwrite' => TRUE,
        'max_size' => "92048000", 
        'max_height' => "99768",
        'max_width' => "991024"
        );
       $this->load->library('upload', $config);
      $this->form_validation->set_rules('post_title','Title ','trim|required|required');
       $this->form_validation->set_rules('summernote','Description ','trim|required');
        $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
        if($this->form_validation->run()===FALSE && !$this->upload->do_upload('userfile'))
        {
          // Display error message
          $this->session->set_flashdata('Error', 'An Error occured '.$this->ion_auth->errors().',Please Try again.');
            //$this->data['groups'] = $this->ion_auth->groups()->result();
            $this->load->helper('form');
             $this->mkcc();
                //$this->data['depts'] = $this->Bs_admin_model->get_all_department();
       //  redirect($_SERVER['HTTP_REFERER']);
           // $this->render('admin/dashboard_view','admin_master');
        }
        // else
        // {
                if (!$this->upload->do_upload('userfile')) {
                    $error = $this->upload->display_errors();

                     json_encode(array('status' => false, 'error' => $error));
                    $this->session->set_flashdata('Error', $error);
                 
                    //$this->data['groups'] = $this->ion_auth->groups()->result();
                   // $this->load->helper('form');
                    $this->mkcc();// redirect($_SERVER['HTTP_REFERER']);// $this->render('admin/dashboard_view','admin_master');
                } else {
                    $upload = $this->upload->data();
            $filex= $upload['file_name'];
                    $data = array(
                         'msg_id'         => $randid,
                        'filename'   => $upload['file_name'],
                        'created_at' => date("Y-m-d"),
                    );
                      $title = $this->input->post('post_title');
                    $message = $this->input->post('summernote');
                     $user_id =  $this->ion_auth->user()->row()->uid; 
                    $message_id   = $randid;
                   

                   $additional = array(  
                     'msg_id'         => $message_id,
                     'from_id'     =>  $user_id,
                    'title'      => $title,
                    'message'           => $message,
                     'date'              => gmdate('d-m-Y h:i A'),
                     'time'              => time()
                  );
                    $id=$this->Bs_admin_model->insert_all($additional,$data);

                    //$id = $this->Bs_admin_model->in($data);

                    if ($id) {
                      json_encode(array('status' => true, 'id' => $id));
                 $this->session->set_flashdata('Success', 'New File  have successfully added Thank You...');
                     $this->mkcc();// redirect($_SERVER['HTTP_REFERER']);//  $this->render('admin/dashboard_view','admin_master');
                    } else {
                       json_encode(array('status' => false, 'error' => 'Failed insert image'));
                        unlink('./files/upload/10/'.$filex);
                 $this->session->set_flashdata('Error', $error);
                 $this->mkcc();//redirect($_SERVER['HTTP_REFERER']);//  $this->render('admin/dashboard_view','admin_master');
                    }
                }

        // }

    }



 public function do_uploadv()
    {  
         $this->data['page_title'] = 'Mkc - Upload';
        $this->load->library('form_validation');
        $brandid= mt_rand(13, rand(100, 99999990));
    
        //  $upload_path="../mkc/files/upload/product"; 
        // $uid="10"; //creare seperate folder for each user 
        // $upPath=$upload_path."/".$uid;
        // if(!file_exists($upPath)) 
        // {
        //            mkdir($upPath, 0777, true);
        // }
        // $config = array(
        // 'upload_path' => $upPath,
        // 'allowed_types' => "gif|jpg|png|jpeg",
        // 'overwrite' => TRUE,
        // 'max_size' => "92048000", 
        // 'max_height' => "99768",
        // 'max_width' => "991024"
        // );
   $this->form_validation->set_rules('namer','Title ','trim|required|required');
         $this->form_validation->set_rules('capr','Caption ','trim|required|required');
       $this->form_validation->set_rules('pricer','Price ','trim|required');
             $this->form_validation->set_rules('gror','Group ','trim|required');
                  $this->form_validation->set_rules('Shggr','Brand','trim|required|required');
       $this->form_validation->set_rules('catidgr','Category ','trim|required');
          $this->form_validation->set_rules('summernote','Description ','trim|required');
        $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
        if($this->form_validation->run()===FALSE )
        {
          // Display error message
          $this->session->set_flashdata('2flashError', 'An Error occured '.$this->ion_auth->errors().',Please Try again.');
            //$this->data['groups'] = $this->ion_auth->groups()->result();
            $this->load->helper('form');
             $this->mkcc();
                //$this->data['depts'] = $this->Bs_admin_model->get_all_department();
       //  redirect($_SERVER['HTTP_REFERER']);
           // $this->render('admin/dashboard_view','admin_master');
        }
        else
        {
                // if (!$this->upload->do_upload('userfile[]')) {
                //     $error = $this->upload->display_errors();

                //      json_encode(array('status' => false, 'error' => $error));
                //     $this->session->set_flashdata('Error', $error);
                 
                //     //$this->data['groups'] = $this->ion_auth->groups()->result();
                //    // $this->load->helper('form');
                //     $this->mkcc();// redirect($_SERVER['HTTP_REFERER']);// $this->render('admin/dashboard_view','admin_master');
                // } else {
          $titler = $this->input->post('namer');
                    $pricer = $this->input->post('pricer');
                     $captionr = $this->input->post('capr');
                        $grer = $this->input->post('gror');
                      $messager = $this->input->post('summernote');    
         $additional = array(  
           'item_id'         => $brandid,
           'item_name'     =>  $titler,
          'item_caption'      => $captionr,
          'item_description'   => $messager,
           'item_group'     => $grer,
           'item_status'      => 1,
            'item_category_id'     => $this->input->post('catidgr'),
             'item_subcategory_id'  => $this->input->post('Shggr'),
            'item_price'       => $pricer
                  );

        $id=   $this->db2->insert('vi_items',$additional);
    //  $id=$this->Bs_admin_model->_all($additional);
$r= $this->db2->error();
                    //$id = $this->Bs_admin_model->in($data);

                    if ($id) {
                      json_encode(array('status' => true, 'id' => $id));
                 $this->session->set_flashdata('Success', 'New File  have successfully added Thank You...');
                     $this->mkcc();// redirect($_SERVER['HTTP_REFERER']);//  $this->render('admin/dashboard_view','admin_master');
                    } else {
                       json_encode(array('status' => false, 'error' => 'Failed insert image'));
                       // unlink('./files/upload/10/'.$filex);
                 $this->session->set_flashdata('2flashError', 'An Error occured '.var_dump($r).',Please Try again.');
                 $this->mkccv();//redirect($_SERVER['HTTP_REFERER']);//  $this->render('admin/dashboard_view','admin_master');
                    }
               // }

         }

    }



// now the callback validation that deals with the upload of files
  public function  products()
  {
          $this->load->library('form_validation'); 
    // we first load the upload library
    $this->load->library('upload');
    // next we pass the upload path for the images
  $brandid= mt_rand(13, rand(100, 99999990));   
          $upload_path="../mkc/files/upload/product"; 
        $uid=$brandid; //creare seperate folder for each user 
        $upPath=$upload_path."/".$uid;
        if(!file_exists($upPath)) 
        {
                   mkdir($upPath, 0777, true);
        }
           $config = array(
        'upload_path' => $upPath,
        'allowed_types' => "gif|jpg|png|jpeg",
        'overwrite' => TRUE,
        'max_size' => "92048000", 
        'max_height' => "99768",
        'max_width' => "991024"
        );
 $this->form_validation->set_rules('namer','Title ','trim|required|required');
         $this->form_validation->set_rules('capr','Caption ','trim|required|required');
       $this->form_validation->set_rules('pricer','Price ','trim|required');
             $this->form_validation->set_rules('gror','Group ','trim|required');
                  $this->form_validation->set_rules('Shggr','Brand','trim|required|required');
       $this->form_validation->set_rules('catidgr','Category ','trim|required');
          $this->form_validation->set_rules('summernote','Description ','trim|required');
        $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
        if($this->form_validation->run()===FALSE )
        {
          // Display error message
          $this->session->set_flashdata('2flashError', 'An Error occured '.$this->ion_auth->errors().',Please Try again.');
            //$this->data['groups'] = $this->ion_auth->groups()->result();
            $this->load->helper('form');
             $this->mkccv();
           
        }
  else
         {
    // we retrieve the number of files that were uploaded
    $number_of_files = sizeof($_FILES['userfile']['tmp_name']);
 
    // considering that do_upload() accepts single files, we will have to do a small hack so that we can upload multiple files. For this we will have to keep the data of uploaded files in a variable, and redo the $_FILE.
    $files = $_FILES['userfile'];
 
    // first make sure that there is no error in uploading the files
    for($i=0;$i<$number_of_files;$i++)
    {
      if($_FILES['userfile']['error'][$i] != 0)
      {
        // save the error message and return false, the validation of uploaded files failed
        $this->form_validation->set_message('2flashError2', 'Couldn\'t upload the file(s)');
        return FALSE;
      }
    }

            

                $titler = $this->input->post('namer');
                    $pricer = $this->input->post('pricer');
                     $captionr = $this->input->post('capr');
                        $grer = $this->input->post('gror');
                      $messager = $this->input->post('summernote');    
         $additional = array(  
           'item_id'         => $brandid,
           'item_name'     =>  $titler,
          'item_caption'      => $captionr,
          'item_description'   => $messager,
           'item_group'     => $grer,
           'item_status'      => 1,
            'item_category_id'     => $this->input->post('catidgr'),
             'item_subcategory_id'  => $this->input->post('Shggr'),
            'item_price'       => $pricer,
                  );
      $id=$this->Bs_admin_model->_all($additional);

    $config['upload_path'] = $upPath;
    // also, we make sure we allow only certain type of images
  $this->load->library('upload', $config);//    $config['allowed_types'] = 'gif|jpg|png';


    // now, taking into account that there can be more than one file, for each file we will have to do the upload
    for ($i = 0; $i < $number_of_files; $i++)
    {

      $_FILES['uploadedimage']['name'] = $files['name'][$i];
      $_FILES['uploadedimage']['type'] = $files['type'][$i];
      $_FILES['uploadedimage']['tmp_name'] = $files['tmp_name'][$i];
      $_FILES['uploadedimage']['error'] = $files['error'][$i];
      $_FILES['uploadedimage']['size'] = $files['size'][$i];
      
      //now we initialize the upload library
      $this->upload->initialize($config);
      if ($this->upload->do_upload('uploadedimage'))
      {
        $this->_uploaded[$i] = $this->upload->data();

          $randid= mt_rand(13, rand(100, 99999990));       
          $data = array(
                       'item_id'   => $brandid,
                        'image_id'   => $randid,
                        'vendor_id'   =>   $this->ion_auth->user()->row()->uid,
                        'image_url'   =>  $upload_path.'/'.$brandid.'/'.$this->_uploaded[$i]['file_name'],
                        'image_status'   => 1,
                        'created_at' => date("Y-m-d"),
                    );
 $this->Bs_admin_model->iinsert_all($data);

      }
      else
      {
        $this->form_validation->set_message('2flashError', $this->upload->display_errors());
        return FALSE;
      }
    }

   $this->session->set_flashdata('2flashSuccess', 'New File  have successfully added Thank You...');
                    $this->mkccv();// redirect($_SERVER['HTTP_REFERER']);//      //return TRUE;
  }
  }





 public function productsbbbbb()
{    
   $this->load->library('form_validation');
        $brandid= mt_rand(13, rand(100, 99999990));   
          $upload_path="../mkc/files/upload/product"; 
        $uid=$brandid; //creare seperate folder for each user 
        $upPath=$upload_path."/".$uid;
        if(!file_exists($upPath)) 
        {
                   mkdir($upPath, 0777, true);
        }
           $config = array(
        'upload_path' => $upPath,
        'allowed_types' => "gif|jpg|png|jpeg",
        'overwrite' => TRUE,
        'max_size' => "92048000", 
        'max_height' => "99768",
        'max_width' => "991024"
        );
       $this->load->library('upload', $config);
    //$this->load->library('upload');
    $dataInfo = array();
    $files = $_FILES;
    $cpt = count($_FILES['userfile']['name']);

      $this->form_validation->set_rules('name','Title ','trim|required|required');
         $this->form_validation->set_rules('cap','Caption ','trim|required|required');
       $this->form_validation->set_rules('price','Price ','trim|required');
          $this->form_validation->set_rules('summernote','Description ','trim|required');
        $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
        if($this->form_validation->run()===FALSE && !$this->upload->do_upload('files'))
        {
          // Display error message
          $this->session->set_flashdata('Error', 'An Error occured '.$this->ion_auth->errors().',Please Try again.');
            //$this->data['groups'] = $this->ion_auth->groups()->result();
            $this->load->helper('form');
             $this->mkccv();
           
        }
  else
         {

                  $title = $this->input->post('name');
                    $price = $this->input->post('price');
                     $caption = $this->input->post('cap');
                        $gre = $this->input->post('gro');
                      $message = $this->input->post('summernote');
                     $user_id =  $this->ion_auth->user()->row()->uid; 
                   // $message_id   = $randid;
                    
         $additional = array(  
                     'item_id'         => $brandid,
                     'item_name'     =>  $title,
                    'item_caption'      => $caption,
                    'item_description'           => $message,
                     'item_group'      => $gre,
                     'item_status'           => 1,
                      'item_category_id'           => $this->input->post('catidg'),
                       'item_subcategory_id'           => $this->input->post('Shgg'),
                      'item_price'           => $price
                  );
       $this->Bs_admin_model->xinsert_all($additional);


    for($i=0; $i<$cpt; $i++)
    {   
     $randid= mt_rand(13, rand(100, 99999990));        
       $upload[] = $this->upload->data();
                 

        $_FILES['userfile']['name']= $files['userfile']['name'][$i];
        $_FILES['userfile']['type']= $files['userfile']['type'][$i];
        $_FILES['userfile']['tmp_name']= $files['userfile']['tmp_name'][$i];
        $_FILES['userfile']['error']= $files['userfile']['error'][$i];
        $_FILES['userfile']['size']= $files['userfile']['size'][$i];    

       // $this->upload->initialize($this->set_upload_options());


          $data = array(
                       'item_id'   => $brandid,
                        'image_id'   => $randid,
                        'vendor_id'   =>   $this->ion_auth->user()->row()->uid,
                        'image_url'   =>  $upload_path.'/'.$brandid.'/'. $upload['file_name'],
                        'image_status'   => 1,
                        'created_at' => date("Y-m-d"),
                    );
 $id=$this->Bs_admin_model->iinsert_all($data);
        $this->upload->do_upload();
        $dataInfo[] = $this->upload->data();
    }


          if ($id) {
                      json_encode(array('status' => true, 'id' => $id));
                 $this->session->set_flashdata('2flashSuccess', 'New File  have successfully added Thank You...');
                     $this->mkccv();// redirect($_SERVER['HTTP_REFERER']);//  $this->render('admin/dashboard_view','admin_master');
                    } else {
                       json_encode(array('status' => false, 'error' => 'Failed insert image'));
                         //  unlink($upPath.'/'.$dataInfo['filename']);
                 $this->session->set_flashdata('2flashError', 'Failed insert image');
                 $this->mkccv();//redirect($_SERVER['HTTP_REFERER']);//  $this->render('admin/dashboard_view','admin_master');
                    }
    // $data = array(
    //     'name' => $this->input->post('pd_name'),
    //     'prod_image' => $dataInfo[0]['file_name'],
    //     'prod_image1' => $dataInfo[1]['file_name'],
    //     'prod_image2' => $dataInfo[2]['file_name'],
    //     'created_time' => date('Y-m-d H:i:s')
    //  );
    // $result_set = $this->tbl_products_model->insertUser($data);
}


}







 public function productsnnnn()
{   
 $data = array();
   $this->load->library('form_validation');
        $brandid= mt_rand(13, rand(100, 99999990));   
          $upload_path="../mkc/files/upload/product"; 
        $uid=$brandid; //creare seperate folder for each user 
        $upPath=$upload_path."/".$uid;
        if(!file_exists($upPath)) 
        {
                   mkdir($upPath, 0777, true);
        }
           $config = array(
        'upload_path' => $upPath,
        'allowed_types' => "gif|jpg|png|jpeg",
        'overwrite' => TRUE,
        'max_size' => "92048000", 
        'max_height' => "99768",
        'max_width' => "991024"
        );
                $this->form_validation->set_rules('name','Title ','trim|required|required');
         $this->form_validation->set_rules('cap','Caption ','trim|required|required');
       $this->form_validation->set_rules('price','Price ','trim|required');
          $this->form_validation->set_rules('summernote','Description ','trim|required');
           $this->form_validation->set_rules('userfile[]','Upload image','callback_fileupload_check');
        $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
        // If file upload form submitted
        if($this->form_validation->run()!=FALSE && $this->input->post('save') && !empty($_FILES['files']['name']))
        {
            $filesCount = count($_FILES['files']['name']);
    $title = $this->input->post('name');
                    $price = $this->input->post('price');
                     $caption = $this->input->post('cap');
                        $gre = $this->input->post('gro');
                      $message = $this->input->post('summernote');
                     $user_id =  $this->ion_auth->user()->row()->uid; 
                   // $message_id   = $randid;
                    
         $additional = array(  
                     'item_id'         => $brandid,
                     'item_name'     =>  $title,
                    'item_caption'      => $caption,
                    'item_description'           => $message,
                     'item_group'      => $gre,
                     'item_status'           => 1,
                      'item_category_id'           => $this->input->post('catidg'),
                       'item_subcategory_id'           => $this->input->post('Shgg'),
                      'item_price'           => $price
                  );
            for($i = 0; $i < $filesCount; $i++){
                $_FILES['file']['name']     = $_FILES['files']['name'][$i];
                $_FILES['file']['type']     = $_FILES['files']['type'][$i];
                $_FILES['file']['tmp_name'] = $_FILES['files']['tmp_name'][$i];
                $_FILES['file']['error']     = $_FILES['files']['error'][$i];
                $_FILES['file']['size']     = $_FILES['files']['size'][$i];
                
                // File upload configuration
                // $uploadPath = 'uploads/files/';
                // $config['upload_path'] = $uploadPath;
                // $config['allowed_types'] = 'jpg|jpeg|png|gif';
                
                // Load and initialize upload library
                $this->load->library('upload', $config);
                $this->upload->initialize($config);
                
                // Upload file to server
                if($this->upload->do_upload('file')){
                    // Uploaded file data
                    $fileData = $this->upload->data();

                 
                       $uploadData[$i]['item_id']   = $brandid;
                        $uploadData[$i][ 'image_id']   = $randid;
                        $uploadData[$i][ 'vendor_id']   =   $this->ion_auth->user()->row()->uid;
                         $uploadData[$i]['image_url']   =  $upload_path.'/'.$brandid.'/'.$fileData['file_name'];
                         $uploadData[$i]['image_status']   = 1;
                         $uploadData[$i]['created_at'] = date("Y-m-d H:i:s");
                }
            }
            
            if(!empty($uploadData)){
                // Insert files data into the database
                //$insert = $this->file->insert($uploadData);
                 $id=$this->Bs_admin_model->iinsert_all($uploadData);
              $id= $this->Bs_admin_model->xinsert_all($additional);


           if ($id) {
                      json_encode(array('status' => true, 'id' => $id));
                 $this->session->set_flashdata('2flashSuccess', 'New File  have successfully added Thank You...');
                     $this->mkccv();// redirect($_SERVER['HTTP_REFERER']);//  $this->render('admin/dashboard_view','admin_master');
                    } else {
                       json_encode(array('status' => false, 'error' => 'Failed insert image'));
                         //  unlink($upPath.'/'.$dataInfo['filename']);
                 $this->session->set_flashdata('2flashError', 'Failed insert image');
                 $this->mkccv();//redirect($_SERVER['HTTP_REFERER']);//  $this->render('admin/dashboard_view','admin_master');
                    }

                // Upload status message
                // $statusMsg = $insert?'Files uploaded successfully.':'Some problem occurred, please try again.';
                // $this->session->set_flashdata('statusMsg',$statusMsg);
            }
        }
        else{
           // Display error message
          $this->session->set_flashdata('Error', 'An Error occured '.$this->ion_auth->errors().',Please Try again.');
            //$this->data['groups'] = $this->ion_auth->groups()->result();
            $this->load->helper('form');
             $this->mkccv();
           
        }
        
        // // Get files data from the database
        // $data['files'] = $this->file->getRows();
        
        // // Pass the files data to view
        // $this->load->view('upload_files/index', $data);
    }



private function set_upload_options()
{   
    //upload an image options
 $config = array();
    $config['upload_path'] = $upPath;
    $config['allowed_types'] = "gif|jpg|png|jpeg";
    $config['max_size']      = '92048000';
    $config['max_height']      = '99768';
    $config['max_width']      = '991024';
    $config['overwrite']     = TRUE;
    return $config;
}

   

// public function do_upload()
//      {
//         $upload_path="localhost/bns/upload"; 
//         $uid="10"; //creare seperate folder for each user 
//         $upPath=$upload_path."/".$uid;
//         if(!file_exists($upPath)) 
//         {
//                    mkdir($upPath, 0777, true);
//         }
//         $config = array(
//         'upload_path' => $upPath,
//         'allowed_types' => "gif|jpg|png|jpeg",
//         'overwrite' => TRUE,
//         'max_size' => "92048000", 
//         'max_height' => "99768",
//         'max_width' => "991024"
//         );
//         $this->load->library('upload', $config);
//         if(!$this->upload->do_upload('userfile'))
//         { 
//            $data['imageError'] =  $this->upload->display_errors();

//         }
//         else
//         {
//             $imageDetailArray = $this->upload->data();
//          $image =  $imageDetailArray['file_name'];
          
//                 $data = array('rti_no'=>$this->input->post('rtino'),
//                           'filer_name'=>$this->input->post('filername'),
//                           'filer_add'=>$this->input->post('fileradd'), 
//                           'city'=>$this->input->post('city'),
//                           'state'=>$this->input->post('state'),
//                           'pin_code'=>$this->input->post('pin_code'),
//                           'rti_cat'=>$this->input->post('rti_cat'),
//                           'rti_file'=>$upload['full_path'],
//                           'filed_on'=>$this->input->post('filedon')
//                           );

//             $this->rti_model->insert_rti($data);
        
//         }

//      }

// public function do_upload(){
// $config = array(
// 'upload_path' => "./uploads/",
// 'allowed_types' => "gif|jpg|png|jpeg|pdf",
// 'overwrite' => TRUE,
// 'max_size' => "2048000", // Can be set to particular file size , here it is 2 MB(2048 Kb)
// 'max_height' => "768",
// 'max_width' => "1024"
// );
// $this->load->library('upload', $config);
// if($this->upload->do_upload())
// {
// $data = array('upload_data' => $this->upload->data());
// $this->load->view('upload_success',$data);
// }
// else
// {
// $error = array('error' => $this->upload->display_errors());
// $this->load->view('custom_view', $error);
// }
// }



    // function upload_file() {

    //     //upload file
    //     $config['upload_path'] = 'uploads/';
    //     $config['allowed_types'] = '*';
    //     $config['max_filename'] = '255';
    //     $config['encrypt_name'] = TRUE;
    //     $config['max_size'] = '1024'; //1 MB

    //     if (isset($_FILES['file']['name'])) {
    //         if (0 < $_FILES['file']['error']) {
    //             echo 'Error during file upload' . $_FILES['file']['error'];
    //         } else {
    //             if (file_exists('uploads/' . $_FILES['file']['name'])) {
    //                 echo 'File already exists : uploads/' . $_FILES['file']['name'];
    //             } else {
    //                 $this->load->library('upload', $config);
    //                 if (!$this->upload->do_upload('file')) {
    //                     echo $this->upload->display_errors();
    //                 } else {
    //                     echo 'File successfully uploaded : uploads/' . $_FILES['file']['name'];
    //                 }
    //             }
    //         }
    //     } else {
    //         echo 'Please choose a file';
    //     }
    // }




 public function ajax_get_pchat_messages() 
 {
        $pchat_id = $this->input->post('user_id');
        // $pchat_tbl = $this->input->post('pchat_tbl');
        echo $this->_get_pchat_messages($pchat_id);
    }

      public function _get_pchat_messages($pchat_id) 
      {
       // $last_msg_id = (int) $this->session->userdata('last_msg_id_' . $pchat_id);

        $msg_data = $this->Message_model->get_messages2($pchat_id);

        if ($msg_data->num_rows() > 0) {
           // $last_msg_id = $msg_data->row($msg_data->num_rows() - 1)->cont_id;
            //$this->session->set_userdata('last_msg_id_' . $pchat_id, $last_msg_id);

            $msg_html = "<ul>";

            foreach ($msg_data->result() as $pcmsg) {

                $time = $pcmsg->date;

                $li_class = ($this->session->userdata('uid') == $pcmsg->user_to) ? 'class="triangle-isosceles left by_current_user"' : 'class="triangle-isosceles right other_user"';
                $msg_html .= '<li ' . $li_class . '>' . "<span class='msg_header'>" . $this->Message_model->get_username($pcmsg->user_from) . ' on ' . $time . "</span><p class='msg_content'>" . $this->Message_model->string_words($pcmsg->content). "</p></li>";
            }

            $msg_html .= "</ul>";

            $result = array('status' => 'ok', 'content' => $msg_html);
            return json_encode($result);
            exit();
        } else {
            $result = array('status' => 'ok', 'content' => '');
            return json_encode($result);
            exit();
        }
    }


   //     public function index() {
   //    $states = $this->db->get("demo_state")->result();
   //    $this->load->view('myform', array('states' => $states )); 
   // } 


   /**
    * Manage uploadImage
    *
    * @return Response
   */
   public function myformAjax($id) { 
       $result = $this->db->where("state_id",$id)->get("demo_cities")->result();
       echo json_encode($result);
   }


 function byuindex()
 {
  $data['country'] = $this->dynamic_dependent_model->fetch_country();
  $this->load->view('dynamic_dependent', $data);
 }

 function fetch_state()
 {
    $id = $this->input->post('country_id');
  if($this->input->post('country_id'))
  {
   echo $this->Bs_admin_model->fetch_state($id);
  }
 }

 function fetch_statecc()
 {
    $id = $this->input->post('country_id');
  if($this->input->post('country_id'))
  {
   echo $this->Bs_admin_model->fetch_statecc($id);
  }
 }


 function fetch_city()
 {
      $id = $this->input->post('cat');
  if($this->input->post('cat'))
  {
   echo $this->Bs_admin_model->fetch_city($id); 
  }
 }





 public function datanote()
  {
    $id = $this->input->post('cat');
       // $msg_data = $this->db2->where("cat_id",$id)->get("vi_brands")->result();
      // echo json_encode($result);
    $msg_data= $this->Bs_admin_model->get_new_messages($id);  
    // var_dump($msg_data);
    //        if ($msg_data !== FALSE && $msg_data->num_rows() == 1) 
    //        {

                $msg_html = '<option value="">Choose your option</option>';
                 foreach ($msg_data->result() as $pcmsg) 
                 {

               $msg_html .='<option value="'.$pcmsg->brand_id.'">'.$pcmsg->name.'</option>';
               // $msg_html .= '<li ' . $li_class . '>' . "<span class='msg_header'>" . $this->Message_model->get_username($pcmsg->user_from) . ' on ' . $time . "</span><p class='msg_content'>" . $this->Message_model->string_words($pcmsg->content). "</p></li>";
            }

            // $msg_html .= "</ul>";
//echo  $msg_html;
            $result = array('status' => 'ok', 'content' => $msg_html);
            return json_encode($result);
            exit();
            // $this->load->view('admin/view/tpl_view_alert_content',$data);   
          // }
          // else
          // {
          //     $result = array('status' => 'ok', 'content' => '');
          //   return json_encode($result);
          //   exit();
          // }

   
  }

 function uniqe() {
        //Calling the get_unique_states() function to get the arr of state. Model already loaded.
        $arrStates = $this->state_city_model->get_unique_states();
          
        //Getting the final array in the form which I will be using for the form helper to create a dropdown.
        foreach ($arrStates as $states) {
            $arrFinal[$states->state] = $states->state;
        }
          
        $data['states'] = $arrFinal;
          
        //Passing $data to the view, so that we can get the states as an array inside the view.
        $this->load->view('site_index',$data);
    }
      
    function ajax_call() {
        //Checking so that people cannot go to the page directly.
        if (isset($_POST) && isset($_POST['state'])) {
            $state = $_POST['state'];
            $arrCities = $this->state_city_model->get_cities_from_state($state);
              
            foreach ($arrCities as $cities) {
                $arrFinal[$cities->city] = $cities->city;
            }
              
            //Using the form_dropdown helper function to get the new dropdown.
            print form_dropdown('cities',$arrFinal);
        } else {
            redirect('site'); //Else redire to the site home page.
        }
    }
   
  


}


