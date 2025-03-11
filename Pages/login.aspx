<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Fruit.Pages.login" %>

<!doctype html>
<html lang="en">
  <head runat="server">
  	<title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="assets/login/css/style.css">

	</head>
	<body class="img js-fullheight" style="background-image: url(assets/login/images/bg.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<h3 class="mb-4 text-center">Have an account?</h3>
		      	<form class="signin-form" runat="server">
                      <div class="form-group">
                          <asp:TextBox ID="Email" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
		      		</div>
                      <div class="form-group">
                          <asp:TextBox ID="Password" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
		      		</div>
	            <div class="form-group">
                    <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="LoginClient" class="form-control btn btn-primary submit px-3" />
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
								</div>
								<div class="w-50 text-md-right">
									<a class="txt1" href="./register.aspx">
										Don't have account
										<i class="fa fa-long-arrow-right"></i>					
									</a>
								</div>
	                            </div>
	          </form>
		      </div>
				</div>
			</div>
		</div>
	</section>

  <script src="assets/login/js/jquery.min.js"></script>
  <script src="assets/login/js/popper.js"></script>
  <script src="assets/login/js/bootstrap.min.js"></script>
  <script src="assets/login/js/main.js"></script>

	</body>
</html>