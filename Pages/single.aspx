<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="single.aspx.cs" Inherits="Fruit.Pages.single" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span class="mr-2"><a href="index.html">Product</a></span> <span>Product Single</span></p>
            <h1 class="mb-0 bread">Product Single</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section">
    	<div class="container">
    		<div class="row">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-6 mb-5 ftco-animate">
    				<a href="images/product-1.jpg" class="image-popup"><img src='<%# "/uploads/" + Eval("ImageFileName") %>' class="img-fluid" alt="Colorlib Template"></a>
    			</div>
    			<div class="col-lg-6 product-details pl-md-5 ftco-animate">
    				<h3><%# Eval("Name") %></h3>
    				<p class="price"><span><%# Eval("Price") %></span></p>
    				<p><%# Eval("Description") %></p>
						<div class="row mt-4">
							<div class="col-md-6">
								<div class="form-group d-flex">
		              <div class="select-wrap">
		            </div>
                    </ItemTemplate>
                </asp:Repeater>
                <form runat="server">
							</div>
							<div class="w-100"></div>
							<div class="input-group col-md-6 d-flex mb-3">
	             	<span class="input-group-btn mr-2">
	            		</span>
                        <asp:TextBox ID="Quantity" runat="server" class="form-control input-number"></asp:TextBox>
	             	<span class="input-group-btn ml-2">
	             	</span>
	          	</div>
	          	<div class="w-100"></div>
	          	<div class="col-md-12">
	          	</div>
          	</div>
        <%
                                         if (Session["ClientId"] != null)
                                         {
                                     %>
                                     <asp:Button ID="Button1" runat="server" Text="Order" OnClick="Book_Order" class="btn btn-black py-3 px-5"/>
                                     <% }
                                        else
                                        {
                                     %>
                                     <a href="register.aspx" class="btn btn-black py-3 px-5">Book
                                     </a>
                                     <% } %>
    			</div>

                </form>
    		</div>
    	</div>
    </section>
</asp:Content>
