 <!-- Footer -->
<!-- </section>
 -->
 <footer class="main-footer">
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6">
              <p>Your company &copy; 2017-2019</p>
            </div>
            <div class="col-sm-6 text-right">
              <p>Design by <a href="https://bootstrapious.com" class="external">Bootstrapious</a></p>
              <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions and it helps me to run Bootstrapious. Thank you for understanding :)-->
            </div>
          </div>
        </div>
      </footer>
    </div>

    <!-- JavaScript files-->
 <script type="text/javascript" src="<?php echo site_url('assets/j/vendor/jquery/jquery.min.js');?>"></script>
 <script type="text/javascript" src="<?php echo site_url('assets/j/vendor/popper.js/umd/popper.min.js');?>"></script>
 <script type="text/javascript" src="<?php echo site_url('assets/j/vendor/bootstrap/js/bootstrap.min.js');?>"></script>
 <script type="text/javascript" src="<?php echo site_url('assets/j/js/grasp_mobile_progress_circle-1.0.0.min.js');?>"></script>
 <script type="text/javascript" src="<?php echo site_url('assets/j/vendor/jquery.cookie/jquery.cookie.js');?>"></script>
 <script type="text/javascript" src="<?php echo site_url('assets/j/vendor/chart.js/Chart.min.js');?>"></script>
 <script type="text/javascript" src="<?php echo site_url('assets/j/vendor/jquery-validation/jquery.validate.min.js');?>"></script>
 <script type="text/javascript" src="<?php echo site_url('assets/j/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js');?>"></script>
 <script type="text/javascript" src="<?php echo site_url('assets/public/js/summernote/summernote-lite.js');?>"></script>
    <!-- Main File-->
 <script type="text/javascript" src="<?php echo site_url('assets/j/js/front.js');?>"></script>
   <script type="text/javascript" src="<?php echo site_url('assets/public/js/script.js');?>"></script>
 <script>

$(document).ready(function(){

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
     $('#Sh').html(data);
    }
   });
  
  }
  else
  {
   $('#Sh').html('<option value="">Choose your option</option>');
  }
 });
 

  $('#catidgr').change(function(){
  var state_id = $('#catidgr').val();
  if(state_id != '')
  {
   $.ajax({
    url:"<?php echo base_url(); ?>admin/users/fetch_city",
    method:"POST",
    data:{cat:state_id},
    success:function(data)
    {
    $('#Shggr').html(data);
    }
   });
  
  }
  else
  {
   $('#Shggr').html('<option value="">Choose your option</option>');
  }
 });


 $('#Sh').change(function(){
  var state_id = $('#Sh').val();
  if(state_id != '')
  {
   $.ajax({
    url:"<?php echo base_url(); ?>admin/users/fetch_state",
    method:"POST",
    data:{country_id:state_id},
    success:function(data)
    {
    $('#Shm').html(data);
    }
   });
  
  }
  else
  {
   $('#Shm').html('<td>  </td>');
  }
 });


 $('#Sh').change(function(){
  var state_id = $('#Sh').val();
  if(state_id != '')
  {
   $.ajax({
    url:"<?php echo base_url(); ?>admin/users/fetch_state",
    method:"POST",
    data:{country_id:state_id},
    success:function(data)
    {
    $('#Shm').html(data);
    }
   });
  
  }
  else
  {
   $('#Shm').html('<td>  </td>');
  }
 });




});

      $('#summernote').summernote({
        placeholder: 'Hello stand alone ui',
        tabsize: 2,
        height: 100
      });

    </script>
 <?php echo $before_body;?>
</body>
 
</html>
