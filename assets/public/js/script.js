var Login=function(){
    var r=function(){
//        $("#forget-password").click(function()
//        {
//            $(".login-form").hide(),$(".forget-form").show();
//        }),
//           $("#compancreate").click(function()
//        {
//            $(".jobsome").hide(),$(".companysome").show();
//        }), 
//                $("#back-btn").click(function()
//        {
//                    $(".login-form").show(),
//            $(".forget-form").hide();
//        }),
          $("#post-somer").click(function()
        {
          $(".some").show()
            $(".newsfeeds").hide(),
            $(".jobsome").hide();
            
        }),
           $("#post-job").click(function()
       {
           $(".newsfeeds").hide(),
           $(".some").hide(),
           $(".jobsome").show();
       }),
//            
//              $("#companyback-btn").click(function()
//        {
//                    $(".jobsome").show(),
//            $(".companysome").hide();
//        }),
                 $("#postback-btn").click(function()
        {
          $(".some").hide(),
            $(".jobsome").hide(),
            $(".newsfeeds").show();
        });
//                            $("#jobback-btn").click(function()
//        {
//            $(".newsfeeds").show(),
//            $(".some").hide(),
//            $(".companysome").hide(),
//            $(".jobsome").hide();
//        });
                
    $(document).ready(function() {
  $("#reg_sec_form").submit(function() {    
    $.ajax({
      type: "POST",
      url: '<?=ABSPATH;?>process/action/tpl_self_add_user_action.php',
      data:$("#reg_sec_form").serialize(),
        beforeSend: function()
      { 
        $("#results").fadeOut();
        $("#btn-login").html('<img src="btn-ajax-loader.gif" /> &nbsp;Sending...... ');
      },
      success: function (data) {  
        // Inserting html into the result div on success
       // $('#results').html(data);
                if(data > 0){

                   $('.success').show(3000).html("<div class='alert alert-success'><span class='glyphicon glyphicon-info-sign'></span> &nbsp; Record saved successfully .</div>").delay(2000).fadeOut(1000);
                        setTimeout(' window.location.href = "apply"; ',4000);
                 }else{
                   $('.error').show(3000).html("<div class='alert alert-danger'><span class='glyphicon glyphicon-info-sign'></span> &nbsp;  A network error occurred during your processing your request. Please try again. If this condition persists, contact your network service provider..</div>").delay(2000).fadeOut(1000);
                    $("#btn-login").html('<span class="glyphicon glyphicon-log-in"></span> &nbsp; Sign In');
                 }
      },
      error: function(jqXHR, text, error){
            // Displaying if there are any errors
             // $('#result').html(error);    
              $('.error').show(3000).html("<div class='alert alert-danger'><span class='glyphicon glyphicon-info-sign'></span> &nbsp;  A network error occurred during your processing your request. Please try again. If this condition persists, contact your network service provider..</div>").delay(2000).fadeOut(1000);  
                $("#btn-login").html('<span class="glyphicon glyphicon-log-in"></span> &nbsp; Sign In');     
        }

        
    });
    return false;
  });
});            
        
    };
    return{
        init:function(){
            r(),
                    
//                   $(".forget-form").hide(),
                     $(".some").hide();
//                      $(".companysome").hide(),
                      $(".jobsome").hide();
                    
                     // $('#code_preview0').summernote({height: 300})
       }};}();
       jQuery(document).ready(function(){
           Login.init();
    
            
            
       });
