<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Fruit.Pages.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Cart</span></p>
            <h1 class="mb-0 bread">My Cart</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section ftco-cart">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="cart-list">
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
						        <th>&nbsp;</th>
						        <th>Product name</th>
						        <th>Price</th>
						        <th>Quantity</th>
						      </tr>
						    </thead>
						    <tbody>
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr class="text-center">
						        
						        <td class="image-prod"><div class="img" style="background-image:url(<%# "/uploads/" + Eval("ImageFileName") %>);"></div></td>
						        
						        <td class="product-name">
						        	<h3><%# Eval("Name") %></h3>
						        	<p><%# Eval("Description") %></p>
						        </td>
						        
						        <td class="price"><%# Eval("Price") %></td>
						        
						        <td class="quantity">
						        	<div class="input-group mb-3">
                                        <%# Eval("Quantity") %>
					          	</div>
					          </td>
						      </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
    		<div class="row justify-content-end">
    			<div class="col-lg-4 mt-5 cart-wrap ftco-animate">
                    <form runat="server">
                        <asp:Button runat="server" class="btn btn-primary py-3 px-4" Text="Proceed to checkout" OnClick="ProceedToCheckout" />
                    </form>
    			</div>
    		</div>
			</div>
		</section>

</asp:Content>
