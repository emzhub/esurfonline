     <?php defined('BASEPATH') OR exit('No direct script access allowed');  //$csrf =array('name'=> $this->security->get_csrf_token_name(),'hash'=>$this->security->get_csrf_hash());
     ?>

  <div id="sidebar" class="span3">
    
  </div>

<div class="span9">
    <ul class="breadcrumb">
    <li><a href="<?php echo site_url(''); ?>">Home</a> <span class="divider">/</span></li>
    <li class="active">Mkc</li>
    </ul>

                            <?php if ($this->session->flashdata('2flashError2')) { ?>
    <div class="alert alert-danger"> <?= $this->session->flashdata('2flashError2') ?> </div>
<?php } ?>
                            <?php if ($this->session->flashdata('2flashError')) { ?>
    <div class="alert alert-danger"> <?= $this->session->flashdata('2flashError') ?> </div>
<?php } ?>
<?php if ($this->session->flashdata('2flashSuccess')) { ?>
        <div class="alert alert-success"> <?= $this->session->flashdata('2flashSuccess') ?> </div>
    <?php } ?>                  
  <h3> </h3>  
             
  <div class="well">
     <ul id="productDetail" class="breadcrumb nav nav-tabs">
                <li ><a href="#del" data-toggle="tab">Delete </a>     <span class="divider">//</span></li> 
                 <li class="active"><a href="#up" data-toggle="tab">     Upload Product</a>   <span class="divider">//</span></li>  
              <li ><a href="#Category_details" data-toggle="tab">     Category Details </a>   <span class="divider">//</span></li>
              <li ><a href="#Category" data-toggle="tab">     Brands  </a>  <span class="divider">//</span></li>
             <li ><a href="#dp" data-toggle="tab">     Delete Product</a> <span class="divider">//</span></li>
             
            </ul>
            <div id="myTabContent" class="tab-content">


                <div class="tab-pane fade " id="Category_details">
                        <?php echo form_open('admin/users/addcat',array('class'=>'form-horizontal'));?>                                        
                       <div class="form-group">
                        <div class="col-md-12">
                       
                        </div>
                    </div>

                              <div id="cat_fields">
          
        </div>
                                   <div class="col-sm-3 col-md-9 nopadding">
  <div class="form-group">
    <input type="text" class="form-control" id="catname" name="catname[]" value="" placeholder="Enter Category....">
  </div>
</div>    
                
 <div class="input-group-btn">
        <button class="btn btn-success" type="button"  onclick="cat_fields();"> <span class="icon-plus-sign" aria-hidden="true"></span>Add More  </button>
      </div>
                    <div class="clear"></div>
                   <div class="panel-footer">                                                                        
                                        <button class="btn btn-primary pull-right" type="submit">Save Changes <span class="fa fa-floppy-o fa-right"></span></button>
                                    </div>
                <?php echo form_close();?>
                </div>
                <div class="tab-pane fade " id="Category">
                   
                <?php echo form_open('admin/users/addcatprodt',array('class'=>'form-horizontal'));?>
                         <br><br>    
                                                      
                    
                    <div id="education_fields">
          
        </div>
  <div class="line"> </div>
                    <div class="row">
                      <label class="col-sm-2 form-control-label">Brand Name</label>
                      <div class="col-sm-10">
                        <div class="form-group-material">
                          <input  type="text" id="Schoolname" name="Schoolname[]" value=""  required class="input-material">
                          <label for="register-username" class="label-material">Brand Name</label>
                        </div>
                      
                      </div>
                    </div>
                 
        <div class="line"></div>
                    <div class="form-group row">
                      <label class="col-sm-2 form-control-label">Select Category</label>
                      <div class="col-sm-10 mb-3">
                        <select class="form-control" id="School" name="School">
    <option value="" disabled selected>Choose your option</option>
                          <?php    if (isset($sch)) { 
                  foreach($sch as $dept){
         echo '<option value="'.$dept->cat_id.'">'.$dept->cat_name.'</option>';
                }
                  }


            else { ?>
                <div>No user(s) found.</div>
            <?php } ?>
                        </select>
                      </div>
</div>
    <!--    <div class="col-sm-3 col-md-8 nopadding">
  <div class="form-group">
    <input type="text" class="form-control" id="Schoolname" name="Schoolname[]" value="" placeholder="Enter Brand Name....">
  </div>
</div> -->
 <div class="line"></div>
                    <div class="form-group row">
                      <div class="col-sm-4 offset-sm-2">
                           <button class="btn btn-success" type="button"  onclick="education_fields();"> <span class="icon-plus-sign" aria-hidden="true"></span>Add More </button>
                        <button type="submit" class="btn btn-primary" name="btn_add_product">
                                <i class="fa fa-save"></i> Add / Save 
                            </button>
                      </div>
                    </div>


        <?php echo form_close();?>
                </div>





                <div class="tab-pane fade " id="del">
                     <div class="span3"> &nbsp;</div>     
                                 <div class="span7">
                                         <div class=" newsfeeds ">
                                            <?php echo form_open('admin/users/delcat',array('class'=>'form-horizontal'));?>    
    <!--  <a href="javascript:;" id="post-job" class="text-success">Delete Product!</a>  -->
              <a href="javascript:;" id="post-somer" class="text-success">Delete Brands!</a>
              <br />
      <div class="success">
                
            </div>
               <div class="error">
                
            </div>
<div id="results"></div>
</p>  
             <table id="dtBasicExample" class="table table-striped table-bordered" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th class="th-sm">N/o
        <i class="fa fa-sort float-right" aria-hidden="true"></i>
      </th>
      <th class="th-sm">Cat Id
        <i class="fa fa-sort float-right" aria-hidden="true"></i>
      </th>
      <th class="th-sm">Category Name
        <i class="fa fa-sort float-right" aria-hidden="true"></i>
      </th>
      <th class="th-sm">Check
        <i class="fa fa-sort float-right" aria-hidden="true"></i>
      </th>
    </tr>
  </thead>
  <tbody>
    <?php    if (isset($sch)) { 
                  foreach($sch as $stud)
                  {
         echo '<tr>
                <td>'.$stud->id.'</td>
                <td>'.$stud->cat_id.'</td>
                <td>'.$stud->cat_name.'</td>
                <td>
 <div class="form-check form-check-inline">
                                <input type="checkbox" class="form-check-input"  value="'.$stud->cat_id.'" name="nprent[]" id="nprent[]">
                                <label class="form-check-label" for="materialInline1">mark</label>
                            </div>


             </td>
                </tr>';
                }
                  }


            else { ?>
                <div>No Category found.</div>
            <?php } ?>
              

  </tbody>
  <tfoot>
    <tr>
      <th>N/o</i>
      </th>
      <th>Category Id</i>
      </th>
      <th>Category Name</i>
      </th>
       <th>Check</th>
    </tr>
  </tfoot>   
    
                       <button type="submit" class="btn btn-default" name="btn-login" id="btn-login">
                                <span class="glyphicon glyphicon-log-in"></span> &nbsp; Sign In
                            </button> 
               
</table> 
       
          
    <?php echo form_close();?> 
        </div>    
 <div class="some">
             
                                             <?php echo form_open('admin/users/delbrand',array('class'=>'form-horizontal'));?> 
  <!--    <a href="javascript:;" id="post-job" class="text-success">Delete Product!</a>  -->  
    <a href="javascript:;" id="postback-btn" class="text-success">Delete Category!</a>
              <br />
      <div class="success">
                
            </div>
               <div class="error">
                
            </div>
<div id="results"></div>
</p>  
             <table id="dtBasicExample" class="table table-striped table-bordered" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th class="th-sm">N/o
        <i class="fa fa-sort float-right" aria-hidden="true"></i>
      </th>
      <th class="th-sm">Category Name
        <i class="fa fa-sort float-right" aria-hidden="true"></i>
      </th>
      <th class="th-sm">Brand Name
        <i class="fa fa-sort float-right" aria-hidden="true"></i>
      </th>
      <th class="th-sm">Check
        <i class="fa fa-sort float-right" aria-hidden="true"></i>
      </th>
    </tr>
  </thead>
  <tbody>
    <?php    if (isset($cch)) { 
                  foreach($cch as $studx)
                  {
         echo '<tr>
                <td>'.$studx->id.'</td>
               <td>'.$this->Bs_admin_model->get_schabr($studx->cat_id).'</td>
                <td>'.$studx->brand_name.'</td>
                <td>
 <div class="form-check form-check-inline">
                                <input type="checkbox" class="form-check-input"  value="'.$studx->brand_id.'" name="nprentr[]" id="nprentr[]">
                                <label class="form-check-label" for="materialInline1">Mark</label>
                            </div>


             </td>
                </tr>';
                }
                  }


            else { ?>
                <div>No Category found.</div>
            <?php } ?>
              

  </tbody>
  <tfoot>
    <tr>
      <th>N/o</i>
      </th>
      <th>Category Name</i>
      </th>
      <th>Brand Name</i>
      </th>
       <th>Check</th>
    </tr>
  </tfoot>   
    
                       <button type="submit" class="btn btn-default" name="btn-login" id="btn-login">
                                <span class="glyphicon glyphicon-log-in"></span> &nbsp; Sign In
                            </button> 
               
</table> 
       
          
    <?php echo form_close();?>    

         </div>   








                                 </div>
                </div >
            



 


   
                <div class="tab-pane fade " id="dp">
                        <?php echo form_open('admin/users/delldpcat',array('class'=>'form-horizontal'));?>                                        
                <div class="line"></div>
                    <div class="form-group row">
                      <label class="col-sm-2 form-control-label">Select Category</label>
                      <div class="col-sm-10 mb-3">
                        <select class="form-control" id="catid" name="catid" >
    <option value="">Choose your option</option>
                          <?php    if (isset($sch)) { 
                  foreach($sch as $dept){
         echo '<option value="'.$dept->cat_id.'">'.$dept->cat_name.'</option>';
                }
                  }


            else { ?>
                <div>No user(s) found.</div>
            <?php } ?>
                        </select>
                      </div>
</div>

            
        <div class="line"></div>
                    <div class="form-group row">
                      <label class="col-sm-2 form-control-label">Select brand</label>
                      <div class="col-sm-10 mb-3">
                       <!--  <div id='sh'>  </div>
 -->                        <select class="form-control" id="Sh" name="Sh" required>
    <option value="">Choose your option</option>
                         
             </select>
                    
</div></div>

                <div id="Shm"> </div>
                   <button type="submit" class="btn btn-default" name="btn-login" id="btn-login">
                                <span class="glyphicon glyphicon-log-in"></span> &nbsp; Delete
                            </button> 
   <?php echo form_close();?> 
                </div>






                <div class="tab-pane fade active in" id="up">
 <!--     <form class="forget-form" method="post" action="process/action/tpl_add_cat_action.php" enctype="multipart/form-data"> -->
     <?php //echo form_open('admin/users/do_uploadv');?>
        <?php echo form_open_multipart('admin/users/products');?>
                              
        <div class="line"></div>
                    <div class="form-group row">
                      <label class="col-sm-2 form-control-label">Select Category</label>
                      <div class="col-sm-10 mb-3">
                        <select class="form-control" id="catidgr" name="catidgr">
    <option value="">Choose your option</option>
                          <?php    if (isset($sch)) { 
                  foreach($sch as $dept){
         echo '<option value="'.$dept->cat_id.'">'.$dept->cat_name.'</option>';
                }
                  }


            else { ?>
                <div>No user(s) found.</div>
            <?php } ?>
                        </select>
                             <?php
                              echo form_error('catidgr');
                             ?> 
                      </div>
</div>

            
        <div class="line"></div>
                    <div class="form-group row">
                      <label class="col-sm-2 form-control-label">Select brand</label>
                      <div class="col-sm-10 mb-3">
                       <!--  <div id='sh'>  </div>
 -->                        <select class="form-control" id="Shggr" name="Shggr">
    <option value="">Choose your option</option>
                         
             </select>
         <?php
                              echo form_error('Shggr');
                             ?>               
</div></div>
                    <div class="line"></div>
                    <div class="form-group row">
                      <label class="col-sm-2 form-control-label">    Name* :        </label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="namer" id="namer"  placeholder="Title"><span class="text-small text-gray help-block-none">Title of post.</span> <?php
                              echo form_error('namer');
                             ?>    
                      </div>
                    </div>
                      <div class="line"></div>
                       <div class="form-group row">
                      <label class="col-sm-2 form-control-label">    Price* :        </label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="pricer" id="pricer"  placeholder="Price"><span class="text-small text-gray help-block-none">Title of post.</span> <?php
                              echo form_error('pricer');
                             ?>    
                      </div>
                    </div>
                      <div class="line"></div>
                    <div class="form-group row">
                      <label class="col-sm-2 form-control-label">    Caption* :        </label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="capr" id="capr" placeholder="Caption"><span class="text-small text-gray help-block-none">Title of post.</span> <?php
                              echo form_error('capr');
                             ?>    
                      </div>
                    </div>

                     <div class="line"></div>
                    <div class="form-group row">
                      <label class="col-sm-2 form-control-label">Select Group</label>
                      <div class="col-sm-10 mb-3">
                       <!--  <div id='sh'>  </div>
 -->                        <select class="form-control" id="gror" name="gror">
                  <option value="">Choose your option</option>
                   <option value="1">Male</option>
                  <option value="2">Female</option>
                  <option value="3">Both</option>       
             </select>       <?php
                              echo form_error('gror');
                             ?> 
                    
</div></div>
                    <div class="line"></div>
                    <div class="form-group row">
                      <label class="col-sm-2 form-control-label">Description :    </label>
                      <div class="col-sm-10">
                          <textarea class="form-control" id="summernote"   name="summernote" ></textarea>
                    <?php
                              echo form_error('summernote');
                             ?>  </div>
                    </div>
                    <div class="line"></div>
                    <div class="form-group row">
                      <label class="col-lg-2 form-control-label">Image : </label>
                      <div class="col-lg-10">
                              <input class="form-control" type="file" name="userfile[]" id="userfile[]" multiple>
                               <?php echo form_error('uploadedimages[]'); ?>
                                            </div>
                    </div>
                  
            <button class="btn btn-primary" type="submit" name="save" >Save</button>


              <?php echo form_close();?>
                </div>
              </div>
            </div>


                </div>

    <script>


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
    function getcat(val) {
  $.ajax({
  type: "POST",
  url: "../../process/load/get_cat.php",
  data:'country_id='+val,
  success: function(data){
    $("#sta-list").html(data);
  }
  });
}


  // function BindTable()
  //       {
            
  //           $.ajax({
  //               type: "POST",
  //               url: "WebService1.asmx/bindtable",
  //               data: "{}",
  //               contentType: "application/json; charset=utf-8",
  //               dataType: "json",
  //               success: function (msg) {
  //                   var json = JSON.parse(msg.d);
  //                   $.each(json, function (index, obj) 
  //                   { 
  //                  var row = '<tr><td> ' + obj.pid + ' </td> <td> ' + obj.p_name + ' </td> <td>' + obj.p_mobile + '</td> <td>' + obj.p_location + '</td> </tr>'
  //                   $("#tbDetails tbody").append(row);
  //                   }); 
  //               }
  //           });

  //       }

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





