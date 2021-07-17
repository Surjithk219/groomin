<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgot.aspx.cs" Inherits="Forgot" %>

<!DOCTYPE html>

<html lang="en">
<head id="head1" runat="server">
    <title></title>

    
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Login_v11/Login_v11/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v11/Login_v11/vendor/bootstrap/Login_v11/Login_v11/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v11/Login_v11/fonts/font-awesome-4.7.0/Login_v11/Login_v11/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v11/Login_v11/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v11/Login_v11/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Login_v11/Login_v11/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v11/Login_v11/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v11/Login_v11/css/util.css">
	<link rel="stylesheet" type="text/css" href="Login_v11/Login_v11/css/main.css">

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
     <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-50 p-r-50 p-t-77 p-b-30">
				<div class="login100-form validate-form">
					<span class="login100-form-title p-b-55">
						Forgot Password
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Valid email is required: ex@abc.xyz">
						
                        <asp:TextBox ID="txtemail" runat="server" class="input100" placeholder="Email"></asp:TextBox>
                    	<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-envelope"></span>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Phone is required">
                                    <asp:TextBox ID="txtphone" runat="server" class="input100"  placeholder="Phone"></asp:TextBox>
            
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>

				
					<div class="container-login100-form-btn p-t-25">
                        <asp:Button ID="Button1" class="login100-form-btn" runat="server" OnClick="Button1_Click" Text="Reset" />
					
					</div>
                    <a class="txt1 bo1 hov1" href="Admin.aspx">
							Already have an Account?
                      						
						</a>
					
				</div>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="Login_v11/Login_v11/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_v11/Login_v11/vendor/bootstrap/Login_v11/Login_v11/js/popper.js"></script>
	<script src="Login_v11/Login_v11/vendor/bootstrap/Login_v11/Login_v11/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_v11/Login_v11/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_v11/Login_v11/js/main.js"></script>
    </div>
    </form>
</body>
</html>
