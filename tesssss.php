<?=//(isset($meta) ? meta_tags($meta) : meta_tags());?>
<?=
//(isset($meta) ?
// $e = array(
//   'general' => true, //description
//   'og' => true,
//   'twitter'=> true,
//   'robot'=> true
// );
// meta_tags($e, $title = 'Esurf-Online', $desc = 'Your IT-SPECIALIST in Web designs [Of all kinds], Mobile applications, Logotypes ,Adverts & Business Branding We Are The Leading Brand,ESURF Solutions was launched to strategically help build your brand, improve your global web presence,& develop more meaningful relationships with your customers.', $imgurl ='https://pbs.twimg.com/profile_images/1015235830686810113/P9r9b_y8_400x400.jpg', $url = 'https://twitter.com/esurfonline');

//    meta_tags();
//  );
 ?>


 
To remove all pages under a particular directory (for example, listings), you'd use the following robots.txt entry:

User-agent: Googlebot
Disallow: /listings
To remove all files of a specific file type (for example, .gif), you'd use the following robots.txt entry:
Sitemap: https://esurfonline.com/sitemap.xml
User-agent: Googlebot
Disallow: /*.gif$ 
To remove dynamically generated pages, you'd use this robots.txt entry:

User-agent: Googlebot
Disallow: /*? 
Option 2: Meta tags

Another standard, which can be more convenient for page-by-page use, involves adding a <META> tag to an HTML page to tell robots not to index the page. This standard is described at http://www.robotstxt.org/wc/exclusion.html#meta.

To prevent all robots from indexing a page on your site, you'd place the following meta tag into the <HEAD> section of your page:

<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">

To allow other robots to index the page on your site, preventing only Search Engine's robots from indexing the page, you'd use the following tag:

<META NAME="GOOGLEBOT" CONTENT="NOINDEX, NOFOLLOW">

To allow robots to index the page on your site but instruct them not to follow outgoing links, you'd use the following tag:

<META NAME="ROBOTS" CONTENT="NOFOLLOW">



<footer class="page-footer font-small  #000000 black mt-4">

      <div class="container">

        <!-- Grid row-->
        <div class="row py-4 d-flex align-items-center ">

          <!-- Grid column -->
          <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
            <h6 class="mb-0">Get connected with us on social networks!</h6>
          </div>
          
          <div class="col-md-6 col-lg-7 text-center text-md-right">

            <a href="https://www.facebook.com/esurfonline/?ref=bookmarks">
              <i class="fa fa-facebook white-text mr-4"> </i>
            </a>
            <!-- Twitter -->
            <a href="https://twitter.com/esurfonline">
              <i class="fa fa-twitter white-text mr-4"> </i>
            </a>
            <!-- Google +-->
            <a href="https://plus.google.com/102379792876068981993">
              <i class="fa fa-google-plus white-text mr-4"> </i>
            </a>
            <!--Linkedin -->
            <a href="https://www.linkedin.com/in/esurf-online-467594159/">
              <i class="fa fa-linkedin white-text mr-4"> </i>
            </a>
            <!--Instagram-->
            <a href="https://www.instagram.com/esurfonline/">
              <i class="fa fa-instagram white-text"> </i>
            </a>

          </div>
        </div>
     
      </div>
   
    <div class="container text-center text-md-left mt-5">

      <div class="row mt-3">

        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

          <!-- Content -->
          <h6 class="text-uppercase font-weight-bold">OUR WORK</h6>
          <hr class="red accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
         <p>
            <a href="#!">Portfolio</a>
          </p>
          <p>
            <a href="#!">Case Studies</a>
          </p>
          <p>
            <a href="<?php echo site_url('testimonials'); ?>">Testimonials</a>
          </p>
        </div>
        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

          <!-- Links -->
          <h6 class="text-uppercase font-weight-bold">Our Services</h6>
          <hr class="red accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
          <p>
            <a href="#!">Website Design & Development</a>
          </p>
          <p>
            <a href="#!">eCommerce</a>
          </p>
          <p>
            <a href="#!">Branding & Creative</a>
          </p>
          <p>
            <a href="#!">Web Maintenance Service</a>
          </p>
      <p>
            <a href="#!">UX/UI Development</a>
          </p>
      <p>
            <a href="#!">Mobile Application</a>
          </p>

        </div>
      
        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

          <!-- Links -->
          <h6 class="text-uppercase font-weight-bold">the company</h6>
          <hr class="red accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
          <p>
            <a href="<?php echo site_url('about'); ?>">Company Profile</a>
          </p>
         <!--  <p>
            <a href="#!">Our Team</a>
          </p> -->
         

        </div>
     
        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

          <h6 class="text-uppercase font-weight-bold">get in touch</h6>
          <hr class="red accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <a href="https://www.facebook.com/esurfonline/?ref=bookmarks">
       <p >
            <i class="fa fa-facebook mr-3"></i> Facebook</p></a>
          <a href="https://www.linkedin.com/in/esurf-online-467594159/">
        <p>
            <i class="fa fa-linkedin mr-3"></i> Linkedin</p></a>
         <a href="https://www.instagram.com/esurfonline/">
       <p>
            <i class="fa fa-instagram mr-3"></i>Instagram</p></a>
          <a href="<?php echo site_url('contact'); ?>"><p>
        <i class="fa fa-phone mr-3"></i> Contact US</p></a>
          

        </div>
        <!-- Grid column -->

      </div>
      <!-- Grid row -->

    </div>
   
    <div class="footer-copyright text-center py-3">  Copyright© 2011- 2018. Esurfonline. All reserved
      <a href="#"> Private Policy</a>
    </div>
  
  </footer>


        <script src="<?php echo site_url('assets/lazyload.js');?>"></script>

           <script>
LazyLoad.js(["assets/public/js/jquery.min.js", "assets/public/js/jquery.easing.1.3.js", "assets/public/js/bootstrap.min.js", "assets/public/js/jquery.waypoints.min.js", "assets/public/js/jquery.flexslider-min.js","assets/public/js/sticky-kit.min.js","assets/public/js/owl.carousel.min.js","assets/public/js/jquery.countTo.js","assets/public/js/main.js"], function () {

      //alert('all js files have been loaded');


    });
</script>



  <!-- jQuery -->
  <script src="<?php echo site_url('assets/public/js/jquery.min.js');?>"></script>
  <!-- jQuery Easing -->
  <script src="<?php echo site_url('assets/public/js/jquery.easing.1.3.js');?>"></script>
  <!-- Bootstrap -->
  <script src="<?php echo site_url('assets/public/js/bootstrap.min.js');?>"></script>
  <!-- Waypoints -->
  <script src="<?php echo site_url('assets/public/js/jquery.waypoints.min.js');?>"></script>
  <!-- Flexslider -->
  <script src="<?php echo site_url('assets/public/js/jquery.flexslider-min.js');?>"></script>
  <!-- Sticky Kit -->
  <script src="<?php echo site_url('assets/public/js/sticky-kit.min.js');?>"></script>
  <!-- Owl carousel -->
  <script src="<?php echo site_url('assets/public/js/owl.carousel.min.js');?>"></script>
  <!-- Counters -->
  <script src="<?php echo site_url('assets/public/js/jquery.countTo.js');?>"></script>
  
  
  <!-- MAIN JS -->
  <script src="<?php echo site_url('assets/public/js/main.js');?>"></script>



<?php 





 public function products()
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
       $upload = $this->upload->data();
                 

        $_FILES['userfile']['name']= $files['userfile']['name'][$i];
        $_FILES['userfile']['type']= $files['userfile']['type'][$i];
        $_FILES['userfile']['tmp_name']= $files['userfile']['tmp_name'][$i];
        $_FILES['userfile']['error']= $files['userfile']['error'][$i];
        $_FILES['userfile']['size']= $files['userfile']['size'][$i];    

       // $this->upload->initialize($this->set_upload_options());


          $data[$i] = array(
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




















if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dynamic_dependent extends CI_Controller {
 
 public function __construct()
 {
  parent::__construct();
  $this->load->model('dynamic_dependent_model');
 }

 function index()
 {
  $data['country'] = $this->dynamic_dependent_model->fetch_country();
  $this->load->view('dynamic_dependent', $data);
 }

 function fetch_state()
 {
  if($this->input->post('country_id'))
  {
   echo $this->dynamic_dependent_model->fetch_state($this->input->post('country_id'));
  }
 }

 function fetch_city()
 {
  if($this->input->post('state_id'))
  {
   echo $this->dynamic_dependent_model->fetch_city($this->input->post('state_id'));
  }
 }
  
}


class Dynamic_dependent_model extends CI_Model
{
  function fetch_country()
 {
  $this->db->order_by("country_name", "ASC");
  $query = $this->db->get("country");
  return $query->result();
 }

 function fetch_state($country_id)
 {
  $this->db->where('country_id', $country_id);
  $this->db->order_by('state_name', 'ASC');
  $query = $this->db->get('state');
  $output = '<option value="">Select State</option>';
  foreach($query->result() as $row)
  {
   $output .= '<option value="'.$row->state_id.'">'.$row->state_name.'</option>';
  }
  return $output;
 }

 function fetch_city($state_id)
 {
  $this->db->where('state_id', $state_id);
  $this->db->order_by('city_name', 'ASC');
  $query = $this->db->get('city');
  $output = '<option value="">Select City</option>';
  foreach($query->result() as $row)
  {
   $output .= '<option value="'.$row->city_id.'">'.$row->city_name.'</option>';
  }
  return $output;
 }

}

?>


<script>
$(document).ready(function () {
var schli=document.getElementById(schlidd).innerText;
$.ajax({
type:"Post", 
dataType: "json",
url: "Default.aspx/getbook",
data: "{'Id':'" + schli + "'}",
success: function (data) {
if (data.d.length > 0) {
$("#dd").html('');
for (var i = 0; i < data.d.length; i++) {
var List = ["<tr><td>" + data.d[i].Id + "</td><td>"];
$("#dd").append(List);
}
}
}

})
})



$(document).ready(function(){
 $('#country').change(function(){
  var country_id = $('#country').val();
  if(country_id != '')
  {
   $.ajax({
    url:"<?php echo base_url(); ?>dynamic_dependent/fetch_state",
    method:"POST",
    data:{country_id:country_id},
    success:function(data)
    {
     $('#state').html(data);
     $('#city').html('<option value="">Select City</option>');
    }
   });
  }
  else
  {
   $('#state').html('<option value="">Select State</option>');
   $('#city').html('<option value="">Select City</option>');
  }
 });

 $('#state').change(function(){
  var state_id = $('#state').val();
  if(state_id != '')
  {
   $.ajax({
    url:"<?php echo base_url(); ?>dynamic_dependent/fetch_city",
    method:"POST",
    data:{state_id:state_id},
    success:function(data)
    {
     $('#city').html(data);
    }
   });
  }
  else
  {
   $('#city').html('<option value="">Select City</option>');
  }
 });
 
});

    $(document).ready(function() {
        $('select[name="catid"]').on('change', function() {
            var stateID = $(this).val();
            if(stateID) {
                $.ajax({
                    url: '../../admin/users/datanote/',
                     data:'cat='+stateID,
                    type: "POST",
                    dataType: "json",
                    success:function(data) {
                        $('select[name="sh"]').empty();
                        $.each(data, function(key, value) {
                             var curcont = $("div#sh").html();
                            $("#sh").html(curcont + data.content);
                            //$('select[name="sh"]').append('<option value="'+ value.id +'">'+ value.name +'</option>');
                        });
                    }
                });
            }else{
                $('select[name="sh"]').empty();
            }
        });
    });




$(document).ready(function(){
 $('#country').change(function(){
  var country_id = $('#country').val();
  if(country_id != '')
  {
   $.ajax({
    url:"<?php echo base_url(); ?>dynamic_dependent/fetch_state",
    method:"POST",
    data:{country_id:country_id},
    success:function(data)
    {
     $('#state').html(data);
     $('#city').html('<option value="">Select City</option>');
    }
   });
  }
  else
  {
   $('#state').html('<option value="">Select State</option>');
   $('#city').html('<option value="">Select City</option>');
  }
 });

 $('#catid').change(function(){
  var state_id = $('#catid').val();
  if(state_id != '')
  {
   $.ajax({
    url:"<?php echo base_url(); ?>admin/users/fetch_city",
    method:"POST",
    data:{cat:state_id},
    success:function(data)
    {
     $('#sh').html(data);
    }
   });
  }
  else
  {
   $('#sh').html('<option value="">Select City</option>');
  }
 });
 
});






          // $(document).ready(function () {
          //       $('#states-dropdown select').change(function () {
          //           var selState = $(this).attr('value');
          //           console.log(selState);
          //           $.ajax({   
          //               url: "../../admin/users/datanote", //The url where the server req would we made.
          //               async: false,
          //               type: "POST", //The type which you want to use: GET/POST
          //               data: "state="+selState, //The variables which are going.
          //               dataType: "html", //Return data type (what we expect).
                          
          //               //This is the function which will be called if ajax call is successful.
          //               success: function(data) {
          //                   //data is the html of the page where the request is made.
          //                   $('#sh').html(data);
          //               }
          //           })
          //       });
          //   });
    $(document).ready(function() {
        $('select[name="catid"]').on('change', function() {
            var stateID = $(this).val();
            if(stateID) {
                $.ajax({
                    url: '../../admin/users/datanote/'+stateID,
                    type: "GET",
                    dataType: "json",
                    success:function(data) {
                        $('select[name="sh"]').empty();
                        $.each(data, function(key, value) {
                            $('select[name="sh"]').append('<option value="'+ value.brand_id +'">'+ value.brand_name +'</option>');
                        });
                    }
                });
            }else{
                $('select[name="city"]').empty();
            }
        });
    });

    function getcat(val) {
  $.ajax({
  type: "POST",
  url: "../../admin/users/datanote",
  data:'cat='+val,
  success: function(data){
    $("#sh").html(data);
  }
  });
}


  var room = 1;
function img_fields() {
 
    room++;
    var objTo = document.getElementById('img_fields')
    var divtest = document.createElement("div");
  divtest.setAttribute("class", "form-group removeclass"+room);
  var rdiv = 'removeclass'+room;
    divtest.innerHTML = '<div class="col-sm-3 col-md-8 nopadding"><div class="form-group">  <input type="text" class="form-control" id="price[]" name="price[]"  placeholder="Enter Price"></div></div> <div class="col-sm-3 col-md-8 nopadding"><div class="form-group">  <input type="text" class="form-control" id="descr" name="descr[]"  placeholder="Enter Product Description"></div></div><div class="col-sm-3 col-md-8 nopadding"><div class="form-group">  <input type="text" class="form-control" id="qt[]" name="qt[]"  placeholder="Enter Product Quantity"></div></div><div class="col-sm-3 col-md-8 nopadding"><div class="form-group"><input type="checkbox" name="co_1[]" id="co_1[]" value="#FF0000"/><input type="color"  value="#FF0000"/> </div></div><div class="col-sm-3 col-md-8 nopadding"><div class="form-group"><input type="checkbox" name="co_2[]" id="co_2[]" value="#e6518e"/><input type="color" value="#e6518e"/></div></div><div class="col-sm-3 col-md-8 nopadding"><div class="form-group"><input type="checkbox" name="co_3[]" id="co_3[]" value="#1b7911"/><input type="color"  value="#1b7911"/></div></div><div class="col-sm-3 col-md-8 nopadding"><div class="form-group"><input type="checkbox" name="co_4[]" id="co_4[]" value="#c8d60d"/><input type="color" value="#c8d60d"/> </div></div><div class="col-sm-3 col-md-8 nopadding"><div class="form-group"><input type="checkbox" name="co_5[]" id="co_5[]" value="#ffffff"/><input type="color" value="#ffffff"/></div></div><div class="col-sm-3 col-md-8 nopadding"><div class="form-group"><input type="checkbox" name="co_6[]" id="co_6[]" value="#eee"/><input type="color" value="#eee"/></div></div><div class="col-sm-3 col-md-8 nopadding"><div class="form-group">  <input type="file" class="form-control" id="images" name="images[]" ></div></div><div class="input-group-btn"> <button class="btn btn-danger" type="button" onclick="remove_img_fields('+ room +');"> <span class="icon-minus-sign" aria-hidden="true"></span>Remove </button></div></div></div></div><div class="clear"></div>';
    
    objTo.appendChild(divtest)
}
   function remove_img_fields(rid) {
     $('.removeclass'+rid).remove();
   }
function education_fields() {
 
    room++;
    var objTo = document.getElementById('education_fields')
    var divtest = document.createElement("div");
  divtest.setAttribute("class", "form-group removeclass"+room);
  var rdiv = 'removeclass'+room;
    divtest.innerHTML = '<div class="col-sm-3 col-md-8 nopadding"><div class="form-group">  <input type="text" class="form-control" id="Schoolname" placeholder="Enter Brand Name...." name="Schoolname[]"></div></div><div class="input-group-btn"> <button class="btn btn-danger" type="button" onclick="remove_education_fields('+ room +');"> <span class="icon-minus-sign" aria-hidden="true"></span>Remove </button></div></div></div></div><div class="clear"></div>';
    
    objTo.appendChild(divtest)
}
   function remove_education_fields(rid) {
     $('.removeclass'+rid).remove();
   }
   
   
   function cat_fields() {
 
    room++;
    var objTo = document.getElementById('cat_fields')
    var divtest = document.createElement("div");
  divtest.setAttribute("class", "form-group removeclass"+room);
  var rdiv = 'removeclass'+room;
    divtest.innerHTML = '<div class="col-sm-3 col-md-8 nopadding"><div class="form-group">  <input type="text" class="form-control" id="catname" name="catname[]" value="" placeholder="Enter Category...."></div></div><div class="input-group-btn"> <button class="btn btn-danger" type="button" onclick="remove_cat_fields('+ room +');"> <span class="icon-minus-sign" aria-hidden="true"></span>Remove </button></div></div></div></div><div class="clear"></div>';
    
    objTo.appendChild(divtest)
}
   function remove_cat_fields(rid) {
     $('.removeclass'+rid).remove();
   }



   function addStudentCat(){
  var query = $('#reg_cat_form').serialize();
  $('#load').show();
  
//    $('#btn_reg_txt').html('<i class="fa fa-spin"></i> Processing...');
        var url = '../../process/delete/tpl_cat_del__action.php';
        $.post(url, query, function (response) {
        //alert(response);
                          $('#load').hide();
//                           setTimeout(5000);
//       $('#btn_reg_txt').html('Done.. <i class="fa fa-check"></i>');
                   // location.href='?target=1';// port bck
//          noty({   text: 'Event was processed successfully..',
//             layout: 'topRight', 
//             type: 'success'
//        });
       $('#btn_reg_txt').html('Send');
       location.href='?target=1';// port bck
            });
     

    } 
</script>







      <script src="http://demo.itsolutionstuff.com/plugin/jquery.js"></script>
    <link rel="stylesheet" href="http://demo.itsolutionstuff.com/plugin/bootstrap-3.min.css">
 <!--   <link rel="stylesheet" href="<?php echo base_url();?>assets/public/datatable/dataTables.bootstrap.min.css" /> 
    <link rel="stylesheet" href="<?php echo base_url();?>assets/public/summernote/summernote.css" /> -->    <script type="text/javascript">
           

      //datatable      
      var dataTable = $('#datanote').DataTable({             
           "serverSide":true,  
           "order":[],  
           "ajax":{  
                url:"<?php echo base_url();?>admin/users/datanote",  
                type:"POST"  
           },  
           "columnDefs":[  
                {  
                     "targets":[0, 1],  
                     "orderable":true,  
                },  
           ],  
      });  
      
      


    //edtor summernote
    $('#editordata').summernote({
      height: 200,
      toolbar: [    
        ['style', ['bold', 'italic', 'underline', 'clear']],
        ['fontsize', ['fontsize']],
        ['color', ['color']],
        ['para', ['ul', 'ol', 'paragraph']],       
        ['insert',['picture']]
      ],

            callbacks: {
                    onImageUpload: function(files) {
                        uploadFile(files[0]);
                    }
                }

    });


    function uploadFile(file) {
            data = new FormData();
            data.append("file", file);

            $.ajax({
                data: data,
                type: "POST",
                url: "saveGambar", //replace with your url
                cache: false,
                contentType: false,
                processData: false,
                success: function(url) {                                 
                 console.log(url);                                        
                 $('#editordata').summernote("insertImage", url);
                }
            });
        }



    //input form 
    $('#mydata').submit(function(e){

    e.preventDefault();
     var fa = $(this);

      $.ajax({
        url: fa.attr('action'),
        type: 'post' ,
        data: fa.serialize(),
        dataType: 'json',
        success: function(response) {
          if(response.success == true) {

            $('.form-group').removeClass('is-invalid')
                            .removeClass('is-valid');
            $('.text-danger').remove();
            fa[0].reset();         
            location.reload();

          } else {
            $.each(response.messages,function(key, value){
              var element = $('#' + key);
              element.closest('div.form-group')
              .removeClass('is-invalid')
              .addClass(value.length > 0 ? 'is-invalid' : 'is-valid')
              .find('.text-danger')
              .remove();
              element.after(value);
            });
          }
        }
     });

    });
    </script>
 <script src="<?php echo //base_url();?>assets/public/datatable/jquery.dataTables.min.js"></script>  
    <script src="<?php echo //base_url();?>assets/public/datatable/dataTables.bootstrap.min.js"></script>          
    <script src="<?php echo// base_url();?>assets/public/summernote/summernote.js"></script>  



<!-- start here -->
<div class="container">

  <div class="row">
    <div class="col-lg-12">
      <div class="page-header">
        <h2>Bootstrap with Summernote Note Editor Multiple Row Content</h2>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-lg-12">
      <button type="button" onclick="addContent();" data-toggle="tooltip" data-placement="top" title="Add Content" class="btn btn-primary"><i class="fa fa-plus-circle"></i> And New Content To Page</button>
    </div>
  </div>

  <?php $content_row=0 ; ?>
  <div id="content-row">

    <div class="form-group">
      <label class="col-sm-2">Page Content</label>
      <div class="col-sm-10">
        <textarea class="form-control" id="code_preview0" name="" style="height: 300px;"></textarea>
      </div>
    </div>
  </div>
  <?php $content_row++; ?>
</div>
<!-- Page - Content End -->
</div>

<script type="text/javascript">
  $(document).ready(function() {
    $('#code_preview0').summernote({height: 300});
    });
</script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>




.note-editor {
  margin-bottom: 5rem !important;
}


var content_row = 1;

function addContent() {
  html = '<div id="content-row">';
  html += '<div class="form-group">';
  html += '<label class="col-sm-2">Page Content</label>';
  html += '<div class="col-sm-10">';
  html += '<textarea class="form-control" id="code_preview' + content_row + '" name="page_code[' + content_row + '][code]" style="height: 300px;"></textarea>';
  html += '</div>';
  html += '</div>';
  html += '</div>';
  $('#content-row').append(html);
  $('#code_preview' + content_row).summernote({height: 300});

  content_row++;
}

<!-- ende here -->























<div class="login-container lightmode"> <div class="bg_img"> <img class="img-responsive" src="../../assets/public/img/Untitled-1.png" height="auto" width="580"> </div>
 
        
        <div class="login-logo">
  <span class="btn btn-primary btn-sm btn-flat  pull-right text-info text-sm">E-surf&raquo;Verison:<?=CI_VERSION ?> </span>
        
   <div class="col-md-12">
     <a href="<?php echo site_url('welcome');?>" class="btn btn-primary btn-sm btn-flat btn-rounded pull-left"><i class="fa fa-eye"></i> Welcome Page?</a>
            <div class="login-box animated fadeInDown">
                <div class="badge bg-info fa-lg">E-surf, Registered members only!</div>
                <br/><br/>
                <div class="login-body ">  <?php if ($this->session->flashdata('loginError')) { ?>
    <div class="alert alert-danger"> <?= $this->session->flashdata('loginError') ?> </div>
<?php } ?>
<?php if ($this->session->flashdata('flashSuccess')) { ?>
        <div class="alert alert-success"> <?= $this->session->flashdata('flashSuccess') ?> </div>
    <?php } ?><hr><br>
                   <div class="newsfeeds">
                       <div class="badge bg-primary fa-lg">Please Enter User id && Password!</div>
                                                
      
                         <?php echo form_open('',array('class'=>'form-horizontal'));?>

         
        <fieldset>
                <?php echo form_label('Username','identity');?>
        <?php echo form_error('identity');?>
        <?php echo form_input('identity','','class="form-control"');?>     
       
              <?php echo form_label('Password','password');?>
        <?php echo form_error('password');?>
        <?php echo form_password('password','','class="form-control"');?>
   
                <?php echo form_checkbox('remember','1',FALSE); echo form_label('Remember me','Remember me'); ?> 
 <a href="<?php echo site_url('auth/forgot_password');?>"  class="pull-right">forgot password...</a>
             </fieldset>

       <?php echo form_submit('submit', 'Log in', 'class="btn btn-primary btn-lg btn-block"');?>
    <?php echo form_close();?>
   
                         <div class="create-account">
                    <p>
                         <a href="javascript:;" id="post-somer"  class="btn btn-info btn-block btn-rounded ">Create an Account...</a>
                    </p>
                    
                </div>
                 
                    </div>
                     <div class="some">
                              <div class="badge bg-primary fa-lg">Please Check Mail && Enter First Key && Second Key!</div><hr><br>
                              <form class="form-horizontal " method="post" action="tpl_confirm_key.php">
                    <div class="form-group">
                        <div class="col-md-12">
           <input type="text" class="form-control" placeholder="First Key" name="fkey" id="fkey" value=""   required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
      <input type="password" class="form-control" placeholder="Second Key" name="skey" id="skey" value=""   required/>
                        </div>
                    </div>
                    <div class="form-group">
                     
                        <div class="col-md-6">
                            <button type="submit" class="btn btn-danger btn-block btn-rounded"  name="btn_key"><i class="fa fa-arrow-circle-o-right"></i><span id="user_login_btn">Confirm</span></button>
                        </div>
                        
                         
                    
                    </div>
                         <div class="create-account">
                    <p>
<!--                                <a href="register"  class="btn btn-info btn-block btn-rounded">Submit...</a>-->
                         <a href="javascript:;"  id="postback-btn"  class="btn btn-info btn-block btn-rounded ">Login...</a>
                
                    </p>
                    
                </div>
                  
                    </form>       
                    </div>    
                     
             
            
                    </div>
            </div>
<!--             end partition -->
         </div>


            
        
        </div>
        </div>
                

















  <?php
            // counter for ul.tabs
            $i=0;
            $bulletin_types = get_object_taxonomies( 'bulletinboard' );
            foreach( $bulletin_types as $bulletin_type ) :
                    $terms = get_terms( $bulletin_type );
        foreach( $terms as $term ) :
        // increment each one
        $i++; ?>

        <li class="tabs-title
            <?php // only for the first one, add .is-active
            if($i == 1) { echo ' is-active'; } ?>
        "><a data-tabs-target="panel-<?php echo $term->slug ;?>" href="#panel-<?php echo $term->slug ;?>"><?php echo $term->name ;?></a></li>
        <?php endforeach;?>
    </ul>
    <div class="tabs-content" data-tabs-content="example-tabs">
        <?php foreach( $terms as $term ) : ?>
        <?php $bulletins = new WP_Query( array(
            'taxonomy' => $bulletin_type,
            'term' => $term->slug,
        ));?>
        <?php if( $bulletins->have_posts() ):
        // move the while up
        while( $bulletins->have_posts() ) : $bulletins->the_post();
        // reset the counter
        $i=0; ?>
        <div class="tabs-panel<?php // again add .is-active only for first
if($i==0) { echo ' is-active'; } ?>" id="panel-<?php echo $term->slug ;?>">
            <ul class="accordion" data-accordion data-allow-all-closed="true">
                <li class="accordion-item" data-accordion-item>
                    <a href="#" class="accordion-title"><?php the_title();?></a>
                    <div class="accordion-content" data-tab-content >
                        //POST CONTENT HERE
                    </div>
                </li>
                <?php endwhile; ?>
            </ul>
        </div>
        <?php endif;?>
        <?php endforeach;?>
    </div>
    <?php endforeach; ?>








     <style type="text/css">
 .msg-container {
                        width: 100%;
                        height: 100%;
                    }

                    .msg-area {
                        height: calc(100% - 102px);
                        width: 100%;
                        background-color:#FFF;
                        overflow-y: scroll;
                    }
                    .msginput {
                        padding: 5px;
                        margin: 10px;
                        font-size: 14px;
                        width: calc(100% - 20px);
                        outline: none;
                    }
                    .bottom {
                        width: 100%;
                        height: 50px;
                        position: fixed;
                        bottom: 0px;
                        border-top: 1px solid #CCC;
                        background-color: #EBEBEB;
                    }

                    h1 {
                        padding: 0px;
                        margin: 20px 0px 0px 0px;
                        text-align: center;
                        font-weight: normal;
                    }
                    button {
                        background-color: #43ACEC;
                        border: none;
                        color: #FFF;
                        font-size: 16px;
                        margin: 0px auto;
                        width: 150px;
                    }
                    .buttonp {
                        width: 150px;
                        margin: 0px auto;
                    }

                    .msg {
                        margin: 10px 10px;
                        background-color: #fff;
                        max-width: calc(45% - 20px);
                        color: #000;
                        padding: 10px;
                        font-size: 14px;
                    }
                    .msgfrom {
                        background-color: #000;
                        color: #FFF;
                        margin: 10px 10px 10px 55%;
                    }
                    .msgarr {
                        width: 0;
                        height: 0;
                        border-left: 8px solid transparent;
                        border-right: 8px solid transparent;
                        border-bottom: 8px solid #fff;
                        transform: rotate(315deg);
                        margin: -12px 0px 0px 45px;
                    }
                    .msgarrfrom {
                        border-bottom: 8px solid #000;
                        float: right;
                        margin-right: 45px;

                    }
                    .msgsentby {
                        color: #8C8C8C;
                        font-size: 12px;
                        margin: 4px 0px 0px 10px;
                    }
                    .msgsentbyfrom {
                        float: right;
                        margin-right: 12px;
                    }

</style>
     <div class="row">
                        
                        <div class="col-md-12">
                               <!-- START PROJECTS BLOCK -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-title-box">
                                               <h2><span class="fa fa-comments"></span> Messages</h2>
                                                   <div class="btn-group">
         <button class="btn btn-default btn-sm" onClick="history.back();"><span class="glyphicon glyphicon-envelope"></span> Previous page</button>
                  <button type="button" class="btn btn-default btn-sm" onclick='location.reload(true); return false;'><i class="fa fa-refresh"></i> Reload</button>
                  </div>
                                  <!--   <h2><span class="fa fa-inbox"></span> Inbox <?php echo $count_inbox; ?> <small><?php echo ($count_inbox<=1)?'Message':'Messages';?></small>   </h2> -->
                                          <?php if ($this->session->flashdata('2flashError')) { ?>
    <div class="alert alert-danger"> <?= $this->session->flashdata('2flashError') ?> </div>
<?php } ?>
<?php if ($this->session->flashdata('2flashSuccess')) { ?>
        <div class="alert alert-success"> <?= $this->session->flashdata('2flashSuccess') ?> </div>
    <?php } ?> 

                                    </div>                                    
                                     
                                </div>

                                       <div class="panel-body">
                                       <div class="timeline-body comments">
                     <div id="imbox" style="height:400px;overflow:auto">
                    <div id="chat_box" style="height:400px;">

            <?php foreach($record as $row): ?>
     <div class="comment-item">
          <?php 
          if( !empty($avatar))
{
      foreach ($avatar as $child) { ?>
                                       
            <img src="<?= base_url('files/avatar/'.$child->user_id.'/'. $child->user_id.'.png')   ?>" alt="<?php echo $this->ion_auth->user()->row()->username;?>"/>
            
                              <?php  } } 
                              else{
    ?>
      <img src="<?= base_url('files/avatar/default_ava.gif')   ?>" alt="<?php echo $this->ion_auth->user()->row()->username;?>"/>
    <?php
}
            ?>
         <p class="comment-head">
         <a href="#"> <?php echo $this->Message_model->get_username($row->user_from);?></a> <span class="text-muted">@<?php echo $this->Message_model->get_username($row->user_from);?></span>
         </p>
        <p><?php echo $this->Message_model->string_words($row->content); //html_decode($com->comment);?></p>
        <small class="text-muted"><?php echo $this->Message_model->time_diff($row->date); ?></small>
         </div>  
              <?php endforeach; ?>
            </div>
          </div>
     <?php //} ?>     
          <div class="panel panel-default push-up-10">
                            <div class="panel-body panel-body-search">
                               <p id="errmessage" class="alert-danger"></p>
                                     <!--  <from class="form-horizontal" id="reply">  --> 
                                       <?php echo form_open('',array('id'=>'reply','class'=>'btnsave form-horizontal'));?>
                                          <div class="form-group">
                                        <input type="hidden" class="send_to" id="send_to" value="<?php echo $row->user_from;?>" name="send_to">
                                        </div>
                                            <div class="form-group">
                                        <input type="hidden" class="send_from" id="send_from" value="<?php echo $row->user_to;?>" name="send_from">
                                        </div>
                                           <div class="form-group">
                                        <input type="hidden" class="send_from" id="message_id" value="<?php echo $row->message_id;?>"  name="message_id">
                                        </div>
                                        <!--  <div class="form-group">
                                        <input type="hidden" name='<?php //echo json_encode($this->security->get_csrf_token_name()); ?>' value=<?php //echo json_encode($this->security->get_csrf_hash()); ?>>
                                        </div> -->
                                <div class="input-group">
                                     <input type="text" class="form-control" name="message" id="message"   placeholder="Your message..."/>
                                    <div class="input-group-btn">
                                            <button type="submit"  id="btnsave" class="btn btn-primary">Save</button>
                                    </div>
                                   
                                </div>
                        <!--       </from> -->
                                  <?php echo form_close();?>
                            </div>
                        </div>                                         
    </div>
<?php //}else{
    // echo '<p class="comment-head">No comment for this topic, Be the first to comment</p>'; 
    // }
    ?>
                     


                                       </div>
                                </div>
                            </div>
                        </div>



 








var token = data.csrf;

$.ajax({
    url: '/next/ajax/request/url',
    type: 'POST',
    data: { new_data: 'new data to send via post', csrf_token:token },
    cache: false,
    success: function(data, textStatus, jqXHR) {
        // Get new csrf token for next ajax post
        var new_csrf_token = data.csrf     
       //Do something with data returned from post request
    },
    error: function(jqXHR, textStatus, errorThrown) {
      // Handle errors here
      console.log('ERRORS: ' + textStatus + ' - ' + errorThrown );
    }
});





                                      <div class="timeline-body comments">
                     <div id="imbox" style="height:400px;overflow:auto">
                    <div id="chat_box" style="height:400px;">

            <?php foreach($record as $row): ?>
     <div class="comment-item">
          <?php 
          if( !empty($avatar))
{
      foreach ($avatar as $child) { ?>
                                       
            <img src="<?= base_url('files/avatar/'.$child->user_id.'/'. $child->user_id.'.png')   ?>" alt="<?php echo $this->ion_auth->user()->row()->username;?>"/>
            
                              <?php  } } 
                              else{
    ?>
      <img src="<?= base_url('files/avatar/default_ava.gif')   ?>" alt="<?php echo $this->ion_auth->user()->row()->username;?>"/>
    <?php
}
            ?>
         <p class="comment-head">
         <a href="#"> <?php echo $this->Message_model->get_username($row->user_from);?></a> <span class="text-muted">@<?php echo $this->Message_model->get_username($row->user_from);?></span>
         </p>
        <p><?php echo $this->Message_model->string_words($row->content); //html_decode($com->comment);?></p>
        <small class="text-muted"><?php echo $this->Message_model->time_diff($row->date); ?></small>
         </div>  
              <?php endforeach; ?>
            </div>
          </div>
     <?php //} ?>     
          <div class="panel panel-default push-up-10">
                            <div class="panel-body panel-body-search">
                                         <?php echo form_open('',array('id'=>'reply','class'=>'form-horizontal'));?>
                                          <div class="form-group">
                                        <input type="hidden" class="send_to" value="<?php echo $row->user_from;?>" name="send_to">
                                        </div>
                                            <div class="form-group">
                                        <input type="hidden" class="send_from" value="<?php echo $row->user_to;?>" name="send_from">
                                        </div>
                                           <div class="form-group">
                                        <input type="hidden" class="send_from" value="<?php echo $row->message_id;?>"  name="message_id">
                                        </div>
                                <div class="input-group">
                                     <input type="text" class="form-control" name="message" id="message"   placeholder="Your message..."/>
                                    <div class="input-group-btn">
                                        <button id="btnSave" onclick="save()" class="btn btn-default">Send</button>
                                    </div>
                                </div>
                                  <?php echo form_close();?>
                            </div>
                        </div>                                         
    </div>

 <?php












   string(70) "SELECT `DISTINCT` `from_id`
FROM `es_messag`
WHERE `to_id` = '1399031'"
$msgs = $database->query('SELECT DISTINCT(from_id) FROM '.DB_PREFIX.'message WHERE to_id='.$user->data()->user_id.''); 
                   if($msgs->count()){
          foreach($msgs->results() as $msg){
          $msguser = new User($utils->get_user_id($msg->from_id)->id);
            
     $mm= $database->query('SELECT * FROM '.DB_PREFIX.'message WHERE to_id='.$user->data()->user_id.' AND from_id='.$msguser->data()->user_id.'  ORDER BY id DESC');
                      $minfo = $mm->first();
                   ?>
                        












<?php $page=""; include 'abspath.php'; require ABSPATH.'core/init.php'; 


 $course_id = $_GET['course_id'];
 $comments  = $database->query('SELECT * FROM '.DB_PREFIX.'group_comment WHERE  group_id='.$course_id.' ORDER BY id ASC');
  
  if($comments->count()){
 
 ?>
<div class="timeline-body comments">
  <?php
    foreach($comments->results() as $com){
    $utils = new Utils($com->user_id);
    $user = new User($com->user_id);
    ?>
     <div class="comment-item">
       <img src="<?=$utils->get_user_avatar();?>"/>
         <p class="comment-head">
         <a href="#"><?=$user->data()->username;?></a> <span class="text-muted">@<?=$user->data()->username;?></span>
         </p>
        <p><?=html_decode($com->comment);?></p>
        <small class="text-muted"><?=$timestamp->time_since($com->time);?></small>
         </div>  
     <?php } ?>                                              
    </div>
<?php }else{
   echo '<p class="comment-head">No comment for this topic, Be the first to comment</p>'; 
   }?>
<!--        <script type="text/javascript" src="<?=APP_URL;?>js/plugins/summernote/summernote.js"></script>-->



  <!-- Info boxes -->
        <!--   <div class="row">
        <div class="col-xs-6">
              <div class="info-box">
                <span class="info-box-icon bg-red"><i class="fa fa-envelope"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Inbox</span>
                  <span class="info-box-number"><?php echo $count_inbox; ?> <small><?php echo ($count_inbox<=1)?'Message':'Messages';?></small></span>
                </div><!-- /.info-box-content -->
             <!--  </div> --><!-- /.info-box -->
            <!-- </div> --><!-- /.col -->

           <!--  <div class="col-xs-6">
              <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="fa fa-envelope-o"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Sent Items</span>
                  <span class="info-box-number"><?php echo $count_sent; ?> <small><?php echo ($count_sent<=1)?'Message':'Messages';?></small></span> -->
              <!--   </div> --><!-- /.info-box-content -->
            <!--  --><!-- /.info-box -->
          <!--   </div> --><!-- /.col -->
   <!--       </div> -->
    
  <!--     <div class="row">
        <div class="col-lg-6">
            <div class="box box-danger">
                <div class="box-header with-border">
                    <h3 class="box-title">Messages Chart</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <div class="box-body chart-responsive">
                    <div class="chart" id="bar" style="height: 300px; position: relative;"></div>
                </div> -->
                <!-- /.box-body -->
      <!--       </div> -->
            <!-- /.box -->            
        <!-- </div>
 -->        <!-- /.col -->
          
        <!--   <div class="col-lg-6">
            <div class="box box-success">
                <div class="box-header with-border">
                    <h3 class="box-title">Messages Report</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <div class="box-body chart-responsive">
                    <div class="chart" id="line" style="height: 300px; position: relative;"></div>
                </div> -->
                <!-- /.box-body -->
           <!--  </div> -->
            <!-- /.box -->            
   <!--      </div> -->
        <!-- /.col -->
      <!-- </div> -->
      <!-- /.row -->
        
    <!-- </section> -->
    <!-- /.content -->
<!-- </div> -->
<!-- /.content-wrapper --> 

<!-- <?php // $this->load->view('admin/modal/compose'); ?>
    <script src="<?php //echo base_url('assets/public/jquery/jquery-3.1.0.min.js')?>"></script>
<link rel="stylesheet" href="<?php //echo base_url();?>assets/public/plugins/morris/morris.css">
<script src="<?php //echo base_url();?>assets/public/plugins/morris/raphael-min.js"></script>
<script src="<?php //echo base_url();?>assets/public/plugins/morris/morris.js"></script> 
 -->

<!-- <script type="text/javascript">
$(function(){
    var data = null;
    <?php echo "var url='".base_url()."';";?>
    $.ajax({    
        url: url+'admin/users/barGraph', 
        type: 'POST',
        success: function(dataJim) {  
           
            data = jQuery.parseJSON(dataJim);
            Morris.Bar({
              element: 'bar',
              data: data,
              xkey: 'section',
              ykeys: ['messages'],
              labels: ['Messages'],
              resize: true,
              xLabelAngle: 60
            });
        }
     }); 

    
    $.ajax({    
        url: url+'admin/users/lineGraph', 
        type: 'POST',
        success: function(dataJim) {                                                
            data = jQuery.parseJSON(dataJim);
            Morris.Line({
              element: 'line',
              data: data,
              xkey: 'period',
              ykeys: ['inbox', 'sent'],
              labels: ['Inbox', 'Sent Items'],
              resize: true
            });  
        }
     }); 
    
});
</script>
 -->














<?if($this->session->flashdata('flashSuccess')):?>
<p class='flashMsg flashSuccess'> <?=$this->session->flashdata('flashSuccess')?> </p>
<?endif?>
 
<?if($this->session->flashdata('flashError')):?>
<p class='flashMsg flashError'> <?=$this->session->flashdata('flashError')?> </p>
<?endif?>
 
<?if($this->session->flashdata('flashInfo')):?>
<p class='flashMsg flashInfo'> <?=$this->session->flashdata('flashInfo')?> </p>
<?endif?>
 
<?if($this->session->flashdata('flashWarning')):?>
<p class='flashMsg flashWarning'> <?=$this->session->flashdata('flashWarning')?> </p>
<?endif?>


<!-- <div id="mainBody">
    <div class="container">
    <div class="row">
            <div class="span3"></div>     
            <div class="span9"> 
                <div class="well">
                       <?php echo form_open();?>
                    <h1>Sign Up</h1>
                        <h4>Your personal information</h4>
        
    

        
        <div class="control-group">
              <?php
                echo form_label('First name','first_name');
                echo form_error('first_name');
                echo form_input('first_name',set_value('first_name'),'class="form-control"');
                ?>
        </div>
        <div class="control-group">
               <?php
                echo form_label('Last name','last_name');
                echo form_error('last_name');
                echo form_input('last_name',set_value('last_name'),'class="form-control"');
                ?>
        </div>

               <div class="form-group">
                <?php
                echo form_label('Username','username');
                echo form_error('username');
                echo form_input('username',set_value('username'),'class="form-control"');
                ?>
            </div>
        <div class="control-group">
         <?php
                echo form_label('Email','email');
                echo form_error('email');
                echo form_input('email',set_value('email'),'class="form-control"');
                ?>
      </div>
<div class="control-group">
  <?php
                echo form_label('Password','password');
                echo form_error('password');
                echo form_password('password','','class="form-control"');
                ?>
</div>
    <div class="control-group">
         
         <?php
                echo form_label('Confirm password','password_confirm');
                echo form_error('password_confirm');
                echo form_password('password_confirm','','class="form-control"');
                ?>
      </div>


             <?php echo form_submit('submit', 'Create user', 'class="btn btn-success  btn-lg"');?>
            <?php echo anchor('/public/user/login', 'Cancel','class="btn btn-default btn-lg "');?>
            <?php echo form_close();?>
        </div>
    </div>
    </div>
        </div>
    </div>
 -->





                               <?php
$user_img = !empty($this->session->userdata('user_id')) ? $this->session->userdata('user_id') : 'no-avatar.jpg';
?>
<img height="180px" width="180px" class="ppborder" src="<?= base_url('files/avatar/'.$this->session->userdata('user_id').'/'.$this->session->userdata('user_id').'.png')   ?>"> 
<?php
//if($this->ion_auth->logged_in() && $this->ion_auth->in_group('super')) {
?>

                            <?php
$user_img = !empty($this->session->userdata('user_id')) ? $this->session->userdata('user_id') : 'no-avatar.jpg';
?>
<img height="180px" width="180px" class="ppborder" src="<?php echo base_url().'/uploads/'.$user_img; ?>"> 
<?php
//if($this->ion_auth->logged_in() && $this->ion_auth->in_group('super')) {
?>
<!-- <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="<?php echo site_url('super');?>"> 
<?php echo $this->config->item('cms_title');?></a>
    </div>
   <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><?php echo anchor('super/menus','Menus');?></li>
                    <li><?php echo anchor('super/contents/index/page','Pages');?></li>
                    <li><?php echo anchor('super/contents/index/category','Categories');?></li>
                    <li><?php echo anchor('super/contents/index/post','Posts');?></li>
                    <li><?php echo anchor('super/rake','RAKE Tool');?></li>
                </ul>
                <ul class="nav navbar-nav navbar-right"> -->
<!--                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Multilanguage <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="<?php echo site_url('admin/languages');?>">Languages</a></li>
                            <li class="divider"></li>
                            <?php
                            foreach($langs as $slug=>$language)
                            {
                                echo '<li>';
                                echo anchor('admin/dictionary/index/'.$slug.'/1','Dictionary '.$language['name']);
                                echo '</li>';
                            }
                            ?>
                        </ul>
                    </li>-->
              <!--       <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Take care! <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="<?php echo site_url('super/master');?>">Website settings</a></li>
                            </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><?php echo $this->ion_auth->user()->row()->username;?> <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="<?php echo site_url('super/user/profile');?>">Profile page</a></li>
                            <?php echo $current_user_menu;?>
                            <li class="divider"></li>
                            <li><a href="<?php echo site_url('super/user/logout');?>">Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!--/.nav-collapse -->
  </div>
</nav> -->
<?php
if($this->session->flashdata('message'))
{
?>
 <!--  <div class="container" style="padding-top:40px;">
    <div class="alert alert-info alert-dismissible" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
aria-hidden="true">&times;</span></button>
      <?php echo $this->session->flashdata('message');?>
    </div>
  </div> -->
<?php
}}?>









                  <div class="row">
                        <div class="col-md-12">
                            
                            <form class="form-horizontal">
                                                            
                                <div class="panel panel-default tabs"> 
                                  <!-- START OF YOUR CODE -->
    <ul class="nav nav-tabs" id="lb-tabs">
    <?php 
    // I just made an array with some data, since I don't have your data source
        // $sqlCat =   array(
        //                 array('tab_title'=>'Home'),
        //                 array('tab_title'=>'Profile'),
        //                 array('tab_title'=>'Messages'),
        //                 array('tab_title'=>'Settings')
        //             );
foreach ($bulletin_types  as $value) {
    # code...
     $sqlC =$value->department_id;
}
        //set the current tab to be the first one in the list.... or whatever one you specify
        $current_tab = $sqlC;
    ?>
    <?php 
    foreach ($bulletin_types as $row):
        //set the class to "active" for the active tab.
        $tab_class = ($row->department_id==$current_tab) ? 'active' : '' ;
        echo '<li class="'.$tab_class.'"><a href="#' . urlencode($row->department_id) .  '" data-toggle="tab">' .           
        $row->department .  ' </a></li>';
    endforeach;
    ?>
    </ul><!-- /nav-tabs -->
    <div class="tab-content">
        <?php foreach ($bulletin_types as $row2): 
        $tab = $row2->department_id;
        //set the class to "active" for the active content.
        $content_class = ($tab==$current_tab) ? 'active' : '' ;
        ?>
        <div class="tab-pane <?php echo $content_class;?>" id="<?php echo $tab; //--  this right here is from yoru code, but there was no "echo" ?>">
            <div class="links">
                <ul class="col">
                    <?php  
                    // Again, I just made an array with some data, since I don't have your data source
                    // $items = array(
                    //             array('title'=>'Home','tab_link'=>'http://home.com'),
                    //             array('title'=>'Profile','tab_link'=>'http://profile.com'),
                    //             array('title'=>'Messages','tab_link'=>'http://messages.com'),
                    //             array('title'=>'Settings','tab_link'=>'http://settings.com'),
                    //             array('title'=>'Profile','tab_link'=>'http://profile2.com'),
                    //             array('title'=>'Profile','tab_link'=>'http://profile3.com'),
                    //         );
                    // you have a while loop here, my array doesn't have a "fetch" method, so I use a foreach loop here        
                    foreach($row as $children) {
              //output the links with the title that matches this content's tab.
            var_dump($row);  if($children['department_id'] == $tab){
                           // echo '<li>' . $item['title'] . ' - '. $item['tab_link'] .'</li>';
                        }
                    }
                    ?>
                </ul>
            </div>
        </div><!-- /tab-pane  -->
    <?php endforeach; ?>
    </div><!-- /tab-content  -->

<!-- END OF YOUR CODE -->  
<!--                                    <ul class="nav nav-tabs" role="tablist">
                                        <li class="active"><a href="#tab-first" role="tab" data-toggle="tab">Personal Data</a></li>
                                        <li><a href="#tab-second" role="tab" data-toggle="tab">Payment Settings</a></li>
                                        <li><a href="#tab-third" role="tab" data-toggle="tab">Email Settings</a></li>
                                    </ul>
                                    <div class="panel-body tab-content">
                                        <div class="tab-pane active" id="tab-first">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum dolor sem, quis pharetra dui ultricies vel. Cras non pulvinar tellus, vel bibendum magna. Morbi tellus nulla, cursus non nisi sed, porttitor dignissim erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc facilisis commodo lectus. Vivamus vel tincidunt enim, non vulputate ipsum. Ut pellentesque consectetur arcu sit amet scelerisque. Fusce commodo leo eros, ut eleifend massa congue at.</p>

                                  
                                            
                                        </div>
                                        <div class="tab-pane" id="tab-second">
                                            <p>Donec tristique eu sem et aliquam. Proin sodales elementum urna et euismod. Quisque nisl nisl, venenatis eget dignissim et, adipiscing eu tellus. Sed nulla massa, luctus id orci sed, elementum consequat est. Proin dictum odio quis diam gravida facilisis. Sed pharetra dolor a tempor tristique. Sed semper sed urna ac dignissim. Aenean fermentum leo at posuere mattis. Etiam vitae quam in magna viverra dictum. Curabitur feugiat ligula in dui luctus, sed aliquet neque posuere.</p>
                                            
                                      
                                            
                                        </div>                                        
                                        <div class="tab-pane" id="tab-third">
                                            <p>This is non libero bibendum, scelerisque arcu id, placerat nunc. Integer ullamcorper rutrum dui eget porta. Fusce enim dui, pulvinar a augue nec, dapibus hendrerit mauris. Praesent efficitur, elit non convallis faucibus, enim sapien suscipit mi, sit amet fringilla felis arcu id sem. Phasellus semper felis in odio convallis, et venenatis nisl posuere. Morbi non aliquet magna, a consectetur risus. Vivamus quis tellus eros. Nulla sagittis nisi sit amet orci consectetur laoreet.</p>
                                            
                                       
                                            
                                        </div>
                                    </div>
                                    <div class="panel-footer">                                                                        
                                        <button class="btn btn-primary pull-right">Save Changes <span class="fa fa-floppy-o fa-right"></span></button>
                                    </div>-->
                                </div>                                
                            
                            </form>
                            
                        </div>
                    </div>   








                     <!-- START CONTENT FRAME BODY -->
                    <div class="content-frame-body">
                        <div class="block">
                             <div class="modal-header">
                       <?php if ($this->session->flashdata('2flashError')) { ?>
    <div class="alert alert-danger"> <?= $this->session->flashdata('2flashError') ?> </div>
<?php } ?>
<?php if ($this->session->flashdata('2flashSuccess')) { ?>
        <div class="alert alert-success"> <?= $this->session->flashdata('2flashSuccess') ?> </div>
    <?php } ?> 
                        <h5 class="modal-title" id="defModalHead">Select a User to begin Conversation</h5><p>Statistics: <?=$this->Message_model->get_school_name($this->ion_auth->user()->row()->school_id) ;?>  currently has:</p>
<span class="badge bg-primary">  [<?php echo $count_admin; ?>] Admin  </span>,
<span class="badge bg-warning">  [<?php echo $count_hod; ?>] Hod  </span>,
<span class="badge bg-info">  [<?php echo $count_lecturer; ?>] Lecturer  </span>,
<span class="badge bg-success">  [<?php echo $count_src; ?>] Src  </span>
<span class="badge bg-default">  [<?php echo $count_student; ?>] Students  </span>
<span class="badge bg-default">  [<?php echo $count_librarians; ?>] Librarians  </span>
                    </div>
                            <div class="list-group border-bottom">
                                <a href="<?php echo site_url('hod/users/message');?>" class="list-group-item"><span class="fa fa-inbox"></span> Inbox <span class="badge badge-success"><?php echo $count_inbox; ?></span></a>
                                <a href="#" class="list-group-item"><span class="fa fa-rocket"></span> Sent <span class="badge badge-warning"><?php echo $count_sent; ?></span></a>
                             <!--   <a href="#" class="list-group-item"><span class="fa fa-flag"></span> Flagged</a>
                                <a href="#" class="list-group-item"><span class="fa fa-trash-o"></span> Deleted <span class="badge badge-default">1.4k</span></a>         -->                    
                            </div>                        
                        </div>
                        <div class="block">
                        <?php echo form_open('hod/users/sendmessage',array('class'=>'form-horizontal'));?>
                          <!--   <div class="form-group">
                                <div class="col-md-12">
                                    <div class="pull-left">
                                        <button class="btn btn-default"><span class="fa fa-trash-o"></span> Delete Draft</button>
                                    </div>
                                    <div class="pull-right">
                                        <button class="btn btn-danger"><span class="fa fa-envelope"></span> Send Message</button>
                                    </div>                                    
                                </div>
                            </div> -->
                            <div class="form-group">
                                <label class="col-md-2 control-label">From:</label>
                                <div class="col-md-9">                                        
                                     <input type="text" name="user_from" class="tagsinput" value="<?=$this->ion_auth->user()->row()->uid ;?>" data-placeholder="<?=$this->ion_auth->user()->row()->email;?>"  disabled/>
                                </div>
                            </div>                        
                            <div class="form-group">
                                <label class="col-md-2 control-label">To:</label>
                                <div class="col-md-10">                                        
                                 
                                     <select  id="to_id[]" name="to_id" multiple="multiple" class="form-control select">
                                         <?php
                            foreach($to_id as $lecturer){
  if(!empty($lecturer->username) ){
    
                    echo '<option value="'.$lecturer->uid.'">'.$lecturer->username.'     ['.$this->Bs_admin_model->get_user_department($lecturer->department_id).'  Department ]     ['.$this->Bs_admin_model->get_group_name($this->Bs_admin_model->get_users_id($lecturer->id)).']</option>';
                }
           else{
          echo '<option value="">Contact Unavailable  </option>';                              
             }
        
                            }
            
                           ?>                                                    
                                    </select>                                
                                </div>
                               <!--  <div class="col-md-1">
                                    <button class="btn btn-link toggle" data-toggle="mail-cc">Cc</button>
                                </div> -->
                            </div>
                          <!--   <div class="form-group hidden" id="mail-cc">
                                <label class="col-md-2 control-label">Cc:</label>
                                <div class="col-md-10">                                        
                                <input type="text" class="tagsinput" value="" data-placeholder="add email"/>
                                </div>
                            </div> -->
                            <div class="form-group">
                                <label class="col-md-2 control-label">Subject:</label>
                                <div class="col-md-10">                                        
                                    <input type="text" class="form-control" name="subject" id="subject"   value=""/>                                
                                </div>                                
                            </div>
                           <!--  <div class="form-group">
                                <label class="col-md-2 control-label">Attachments:</label>
                                <div class="col-md-10">                                        
                                    <input type="file" class="file" data-filename-placement="inside"/>
                                </div>                                
                            </div> -->
                            <div class="form-group">
                                <div class="col-md-12">                            
                                    <textarea class="summernote_email" name="content"><p>Hello Sir/Madam,</p>








<p><strong>Best Regards<br/><?=$this->ion_auth->user()->row()->username ;?><br/><?=$this->ion_auth->user()->row()->email ;?><br/><?=$this->Bs_admin_model->get_user_department($lecturer->department_id) ;?> Department</strong></p>                                        
                                    </textarea>                            
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                  <!--   <div class="pull-left">
                                        <button class="btn btn-default"><span class="fa fa-trash-o"></span> Delete Draft</button>
                                    </div> -->
                                    <div class="pull-right">
                                        <button class="btn btn-danger"><span class="fa fa-envelope"></span> Send Message</button>
                                    </div>                                    
                                </div>
                            </div>
                      <?php echo form_close();?>
                        </div>
                        
                    </div>
                    <!-- END CONTENT FRAME BODY -->
                </div>
                <!-- END CONTENT FRAME -->   -->
            </div>


             <!-- Bootstrap4 CSS - -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">   
  
  <!-- Note - If your website not use Bootstrap4 CSS as main style, please use custom css style below and delete css line above. 
  It isolate Bootstrap CSS to a particular class 'bootstrapiso' to avoid css conflicts with your site main css style -->
  <!-- <link rel="stylesheet" href="css/bootstrapcustom.min.css" crossorigin="anonymous"> -->
  
  
  <!-- JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" crossorigin="anonymous"></script>
  <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" crossorigin="anonymous"></script>
 
 
  <!-- CSS for Payment Box -->
  <style>
            html { font-size: 14px; }
            @media (min-width: 768px) { html { font-size: 16px; } .tooltip-inner { max-width: 350px; } }
            .mncrpt .container { max-width: 980px; }
            .mncrpt .box-shadow { box-shadow: 0 .25rem .75rem rgba(0, 0, 0, .05); }
            img.radioimage-select { padding: 7px; border: solid 2px #ffffff; margin: 7px 1px; cursor: pointer; box-shadow: none; }
            img.radioimage-select:hover { border: solid 2px #a5c1e5; }
            img.radioimage-select.radioimage-checked { border: solid 2px #7db8d9; background-color: #f4f8fb; }
    </style>



<div id="container">
  <h1>Welcome to the Hod Dashboard!</h1>

  <?php
  /**** CONFIGURATION VARIABLES ****/ 
   $userID    = $this->ion_auth->user()->row()->uid;        // place your registered userID or md5(userID) here (user1, user7, uo43DC, etc).
   // you don't need to use userID for unregistered website visitors
   // if userID is empty, system will autogenerate userID and save in cookies
$userFormat   = "COOKIE";     // save userID in cookies (or you can use IPADDRESS, SESSION)
$orderID    = "invoice".$this->ion_auth->user()->row()->uid;  // invoice number - 000383
$amountUSD    = 2.21;       // invoice amount - 2.21 USD
$period     = "NOEXPIRY";   // one time payment, not expiry
$def_language = "en";       // default Payment Box Language
$public_key   = "31206AAtfI2sBitcoin77BTCPUBvAuGLNO8ZH3rzcdSRcptnch"; // from gourl.io
$private_key  = "31206AAtfI2sBitcoin77BTCPRVSz4ey8a2v0Mfe3hXhslt7Vs";// from gourl.io

  
   
   // *** For convert Euro/GBP/etc. to USD/Bitcoin, use function convert_currency_live() with Google Finance
   // *** examples: convert_currency_live("EUR", "BTC", 22.37) - convert 22.37 Euro to Bitcoin
   // *** convert_currency_live("EUR", "USD", 22.37) - convert 22.37 Euro to USD
 
   // IMPORTANT: Please read description of options here - https://gourl.io/api-php.html#options  
 
 
 
    /** PAYMENT BOX **/
  $options = array(
    "public_key"  => $public_key,   // your public key from gourl.io
    "private_key" => $private_key,  // your private key from gourl.io
    "webdev_key"  => "",    // optional, gourl affiliate key
    "orderID"     => $orderID,    // order id or product name
    "userID"      => $userID,     // unique identifier for every user
    "userFormat"  => $userFormat,   // save userID in COOKIE, IPADDRESS or SESSION
    "amount"      => 0,       // product price in coins OR in USD below
    "amountUSD"   => $amountUSD,  // we use product price in USD
    "period"      => $period,     // payment valid period
    "language"    => $def_language  // text on EN - english, FR - french, etc
);
 

// Initialise Payment Class
$box = new Cryptobox ($options);
  
// coin name
$coinName = $box->coin_name(); 

// Successful Cryptocoin Payment received
if ($box->is_paid()) 
{
  if (!$box->is_confirmed()) {
    $message =  "Thank you for order (order #".$orderID.", payment #".$box->payment_id()."). Awaiting transaction/payment confirmation";
  }                     
  else 
  { // payment confirmed (6+ confirmations)

    // one time action
    if (!$box->is_processed())
    {
      // One time action after payment has been made/confirmed
      // !!For update db records, please use function cryptobox_new_payment()!!
       
      $message = "Thank you for order (order #".$orderID.", payment #".$box->payment_id()."). Payment Confirmed. <br>(User will see this message one time after payment has been made)"; 
      
      // Set Payment Status to Processed
      $box->set_status_processed();  
    }
    else $message = "Thank you for order (order #".$orderID.", payment #".$box->payment_id()."). Payment Confirmed. <br>(User will see this message during ".$period." period after payment has been made)"; // General message
  }
}
else $message = "This invoice has not been paid yet";


// Optional - Language selection list for payment box (html code)
$languages_list = display_language_box($def_language);





// ...
// Also you need to use IPN function cryptobox_new_payment($paymentID = 0, $payment_details = array(), $box_status = "") 
// for send confirmation email, update database, update user membership, etc.
// You need to modify file - cryptobox.newpayment.php, read more - https://gourl.io/api-php.html#ipn
// ...
    


?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
 "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<title>Pay-Per-Download Cryptocoin (payments in multiple cryptocurrencies) Payment Example</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv='cache-control' content='no-cache'>
<meta http-equiv='Expires' content='-1'>
<meta name='robots' content='all'>
<script src='<?php echo site_url('assets/public/js/cryptobox.min.js');?>' type='text/javascript'></script>
</head>
<body style='font-family:Arial,Helvetica,sans-serif;font-size:13px;color:#666;margin:0'>

<br>
<!-- <img style='position:absolute;margin-left:auto;margin-right:auto;left:0;right:0;' alt='status' src='https://gourl.io/images/<?php echo ($box->is_paid()?"paid":"unpaid"); ?>.png'>
<img alt='Invoice' border='0' height='500' src='https://gourl.io/images/invoice.png'> -->

<?php if (!$box->is_paid()) echo "<h2>Pay Invoice Now - </h2>"; else echo "<br><br>";  ?>
<div style='margin:30px 0 5px 300px'>Language: &#160; <?php echo $languages_list; ?></div>
<?php echo $box->display_cryptobox(true, 580, 230); ?>
<br><br><br>
<h3>Message :</h3>
<h2 style='color:#999'><?php echo $message; ?></h2>


</div><br><br><br><br><br><br>

 </div>
 .container-fluid {
  width: 100%;
}
@media screen and (max-width: 400px){
  .container {
    width: 123px;
  }
}
@media screen and (min-width: 401px) and (max-width: 800px){

  .container {
    width: 456px;
  }
}
@media screen and (min-width: 801px){
  .container {
    width: 789px;
  }
}