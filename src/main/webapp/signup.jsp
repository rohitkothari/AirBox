
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Login &amp; Signup forms in panel - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="C:\Users\Bhagyashree\Desktop\bootstrap\css\bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style type="text/css">
        </style>



</head>
<body>
	    <div class="container"> </div>
 <div class="well">      </div> 
        <div id="loginbox" style="margin-top:160px"></div>
	<div style= "margin-bottom:100px">       </div>           
            <div class="panel panel-info" > </div>
                    <div class="panel-heading">
			<div class="panel-title">Drop here</div>
                        <div class="panel-title">Sign Up</div>
                        
                    </div>     

                    <div style="padding-top:30px" class="panel-body" ></div>

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal" ></form>
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="login-firstname" type="text" class="form-control" name="firstname" value="" placeholder="Firstname">                                        
                                    </div>
                                <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="login-lastname" type="text" class="form-control" name="lastname" value="" placeholder="Lastname">                                        
                                    </div>
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="login-email" type="text" class="form-control" name="email" value="" placeholder="Email Address" onChange="EmailVerify();">                                        
                                    </div>
				<div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="password" type="text" class="form-control" name="password" value="" placeholder="Password">                                        
                                    </div>
				<div style="margin-bottom: 25px" class="input-group"></div>
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="confirmpassword" type="text" class="form-control" name="confirm password" value="" placeholder="Confirm Password"onChange="PassVerify();">                                        
                                   

                                
                          

                                
                            <div class="input-group">
                                      </div>
                                    

                                    <!-- Button -->

                                    <div class="col-sm-12 controls">
                                      <a id="btn-login" href="#" class="btn btn-info">Register </a>
                                     
                                    </div>
                                </div>


                            </form>     



                        </div>                     
                    </div>  
        </div>
        <script src="C:\Users\Bhagyashree\Desktop\bootstrap\css\bootstrap.css"></script>
    <script>
        function PassVerify(){
            var pass1 = $('#password').val();
            var pass2 = $('#confirmpassword').val();
            var message = document.getElementById('confirmMessage');
            var badColor = "red";
            if(password == confirmpassword){
                message.innerHTML = "";
            }else{
                message.style.color = badColor;
                message.innerHTML = "Passwords Do Not Match..";
            }
        } 
        function EmailVerify() {
            var email = document.getElementById('email').value;
            var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            var message = document.getElementById('emailMessage');
            var badColor = "red";
            message.style.color = badColor;

            if (!filter.test(email)) {   
               $('#emailMessage').html("Please Enter valid Email");
               return false;
            }else{
               $('#emailMessage').html("");
               $.get('/check_email?email=' + email, function(data){
                    if(data == "true")
                        $('#emailMessage').html("Email already exists");
               });
            }
            return true;
        }
        function validateAndSubmit(){
            
        }
        </script>
</body>
</html>


