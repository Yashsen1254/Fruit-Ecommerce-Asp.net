<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="Fruit.Pages.shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Products</span></p>
            <h1 class="mb-0 bread">Products</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section">
    	<div class="container">
    		<div class="row">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
    			        <div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href='single.aspx?Id=<%# Eval("Id") %>' class="img-prod"><img class="img-fluid" src='<%# "/uploads/" + Eval("ImageFileName") %>' alt="Colorlib Template">
    						<div class="overlay"></div>
    					</a>
    					<div class="text py-3 pb-4 px-3 text-center">
    						<h3><a href='single.aspx?Id=<%# Eval("Id") %>'><%# Eval("Name") %></a></h3>
    						<div class="d-flex">
    							<div class="pricing">
		    						<p class="price"><span class="mr-2 price-dc"></span><span class="price-sale"><%# Eval("Price") %></span></p>
		    					</div>
	    					</div>
	    					<div class="bottom-area d-flex px-3">
	    						<div class="m-auto d-flex">
	    							<a href='single.aspx?Id=<%# Eval("Id") %>' class="buy-now d-flex justify-content-center align-items-center mx-1">
	    								<span><i class="ion-ios-cart"></i></span>
	    							</a>
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>
                    </ItemTemplate>
                </asp:Repeater>
    		</div>
    	</div>
    </section>
</asp:Content>
