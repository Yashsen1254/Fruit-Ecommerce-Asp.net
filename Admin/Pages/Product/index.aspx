<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Fruit.Admin.Pages.Product.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pc-container">
      <div class="pc-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
          <div class="page-block">
            <div class="row align-items-center">
              <div class="col-md-12">
                <ul class="breadcrumb">
                  <li class="breadcrumb-item"><a href="../dashboard/index.html">Admin</a></li>
                  <li class="breadcrumb-item"><a href="javascript: void(0)">Product</a></li>
                </ul>
              </div>
              <div class="col-md-12">
                <div class="page-header-title">
                  <h2 class="mb-0">Products</h2>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- [ breadcrumb ] end -->
                    <form runat="server">

        <div class="row">
          <!-- [ sample-page ] start -->
          <div class="col-sm-12">
            <div class="ecom-wrapper">
              
              <div class="ecom-content">
                <div class="d-sm-flex align-items-center mb-4">
                  <ul class="list-inline me-auto my-1">
                    <li class="list-inline-item">
                      <a href="add.aspx" class="btn btn-primary">Add</a>
                    </li>
                  </ul>
                </div>
                <div class="row">
                    <asp:Repeater ID="RepeaterDestinaion" runat="server">
                        <ItemTemplate>
                            <div class="col-sm-6 col-xl-4">
                    <div class="card product-card">
                      <div class="card-img-top">
                        <a href="ecom_product-details.html">
                          <img src='<%# "/uploads/" + Eval("ImageFileName") %>' alt="image" class="img-prod img-fluid" />
                        </a>
                        <div class="card-body position-absolute end-0 top-0">
                          <div class="form-check prod-likes">
                            <input type="checkbox" class="form-check-input" />
                            <i data-feather="heart" class="prod-likes-icon"></i>
                          </div>
                        </div>
                      </div>
                      <div class="card-body">
                        <a href="ecom_product-details.html">
                          <p class="prod-content mb-0 text-muted"><%# Eval("Name") %></p>
                        </a>
                        <div class="d-flex align-items-center justify-content-between mt-2 mb-3 flex-wrap gap-1">
                          <h4 class="mb-0 text-truncate"><b><%# Eval("Price") %></b></h4>
                        </div>
                        <div class="d-flex">
                          <div class="flex-grow-1 ms-3">
                            <div class="d-grid">
                              <a href="update.aspx?Id=<%# Eval("Id") %>" class="btn btn-link-secondary btn-prod-card">Update</a>
                            </div>
                          </div>
                          <div class="flex-grow-1 ms-3">
                            <div class="d-grid">
                                <asp:LinkButton runat="server" CommandName="Delete" CommandArgument='<%# Eval("Id") %>' class="btn btn-link-secondary btn-prod-card" onClick="DeleteProduct">Delete</asp:LinkButton>                                        
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                        </ItemTemplate>
                    </asp:Repeater>

                    </form>
                </div>
              </div>
            </div>
          </div>
          <!-- [ sample-page ] end -->
        </div>
      </div>
    </div>s
</asp:Content>
