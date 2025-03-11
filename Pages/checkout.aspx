<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Fruit.Pages.checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Checkout</span></p>
            <h1 class="mb-0 bread">Checkout</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-xl-7 ftco-animate">
						<form class="billing-form" runat="server">
							<h3 class="mb-4 billing-heading">Billing Details</h3>
	          	<div class="row align-items-end">
	          		<div class="col-md-6">
	                <div class="form-group">
	                	<label for="firstname">Name</label>
                        <asp:TextBox ID="Name" runat="server" class="form-control"></asp:TextBox>
	                </div>
	              </div>
	              <div class="col-md-6">
	                <div class="form-group">
	                	<label for="lastname">Country</label>
                        <asp:TextBox ID="Country" runat="server" class="form-control"></asp:TextBox>
	                </div>
                </div>
                <div class="w-100"></div>
		            <div class="w-100"></div>
		            <div class="col-md-6">
		            	<div class="form-group">
	                	<label for="streetaddress">Address</label>
                        <asp:TextBox ID="Address" runat="server" class="form-control"></asp:TextBox>
	                  </div>
		            </div>
		            <div class="col-md-6">
		            	<div class="form-group">
	                	<label for="streetaddress">City</label>
                        <asp:TextBox ID="City" runat="server" class="form-control"></asp:TextBox>
	                </div>
		            </div>
		            <div class="w-100"></div>
		            <div class="col-md-6">
		            	<div class="form-group">
	                	<label for="towncity">State</label>
                        <asp:TextBox ID="State" runat="server" class="form-control"></asp:TextBox>
                        </div>
		            </div>
		            <div class="col-md-6">
		            	<div class="form-group">
		            		<label for="postcodezip">Postcode / ZIP *</label>
                        <asp:TextBox ID="Zip" runat="server" class="form-control"></asp:TextBox>
                    </div>
		            </div>
		            <div class="w-100"></div>
		            <div class="col-md-6">
	                <div class="form-group">
	                	<label for="phone">Phone</label>
                        <asp:TextBox ID="Phone" runat="server" class="form-control"></asp:TextBox>
	                </div>
	              </div>
	              <div class="col-md-6">
	                <div class="form-group">
	                	<label for="emailaddress">Email Address</label>
                        <asp:TextBox ID="Email" runat="server" class="form-control"></asp:TextBox>
                        </div>
                </div>
	            </div>
                            <asp:TextBox ID="TotalPrice" runat="server" type="hidden"></asp:TextBox>
                                            <asp:Button ID="Button1" runat="server" class="btn btn-primary py-3 px-4" Text="Proceed" OnClick="Pay_Now"/>
	          </form><!-- END -->
					</div>
					<div class="col-xl-5">
	          <div class="row mt-5 pt-3">
	          	<div class="col-md-12 d-flex mb-5">
	          		<div class="cart-detail cart-total p-3 p-md-4">
	          			<h3 class="billing-heading mb-4">Cart Total</h3>
                          <asp:Repeater ID="Repeater1" runat="server">
                              <ItemTemplate>
                                  <p class="d-flex">
		    						<span><%# Eval("Name") %> * <%# Eval("Quantity") %></span>
		    						<span><%# Eval("Price") %></span>
		    					</p>
                              </ItemTemplate>
                          </asp:Repeater>
	          			
								</div>
	          	</div>
	          </div>
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->
</asp:Content>
