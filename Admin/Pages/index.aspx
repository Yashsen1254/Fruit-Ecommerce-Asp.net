<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Fruit.Admin.Pages.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pc-container">
      <div class="pc-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
          <div class="page-block">
            <div class="row align-items-center">
              <div class="col-md-12">
                <ul class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                  <li class="breadcrumb-item"><a href="javascript: void(0)">Dashboard</a></li>
                  <li class="breadcrumb-item" aria-current="page">Home</li>
                </ul>
              </div>
              <div class="col-md-12">
                <div class="page-header-title">
                  <h2 class="mb-0">Home</h2>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="col-md-4 col-sm-6">
                        <div class="card statistics-card-1 overflow-hidden">
                            <div class="card-body">
                              <img src="./assets/images/widget/img-status-4.svg" alt="img" class="img-fluid img-bg" />
                              <h5 class="mb-4">No of Category</h5>
                              <div class="d-flex align-items-center mt-3">
                                <h3 class="f-w-300 d-flex align-items-center m-b-0"><%# Eval("Total") %></h3>
                              </div>
                            </div>
                         </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <div class="col-md-4 col-sm-6">
                        <div class="card statistics-card-1 overflow-hidden">
                            <div class="card-body">
                              <img src="./assets/images/widget/img-status-4.svg" alt="img" class="img-fluid img-bg" />
                              <h5 class="mb-4">No of Product</h5>
                              <div class="d-flex align-items-center mt-3">
                                <h3 class="f-w-300 d-flex align-items-center m-b-0"><%# Eval("Total") %></h3>
                              </div>
                            </div>
                         </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Repeater ID="Repeater3" runat="server">
                <ItemTemplate>
                    <div class="col-md-4 col-sm-6">
                        <div class="card statistics-card-1 overflow-hidden">
                            <div class="card-body">
                              <img src="./assets/images/widget/img-status-4.svg" alt="img" class="img-fluid img-bg" />
                              <h5 class="mb-4">No of Client</h5>
                              <div class="d-flex align-items-center mt-3">
                                <h3 class="f-w-300 d-flex align-items-center m-b-0"><%# Eval("Total") %></h3>
                              </div>
                            </div>
                         </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Repeater ID="Repeater4" runat="server">
                <ItemTemplate>
                    <div class="col-md-4 col-sm-6">
                        <div class="card statistics-card-1 overflow-hidden">
                            <div class="card-body">
                              <img src="./assets/images/widget/img-status-4.svg" alt="img" class="img-fluid img-bg" />
                              <h5 class="mb-4">No of Orders</h5>
                              <div class="d-flex align-items-center mt-3">
                                <h3 class="f-w-300 d-flex align-items-center m-b-0"><%# Eval("Total") %></h3>
                              </div>
                            </div>
                         </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Repeater ID="Repeater5" runat="server">
                <ItemTemplate>
                    <div class="col-md-4 col-sm-6">
                        <div class="card statistics-card-1 overflow-hidden">
                            <div class="card-body">
                              <img src="./assets/images/widget/img-status-4.svg" alt="img" class="img-fluid img-bg" />
                              <h5 class="mb-4">No of Payment</h5>
                              <div class="d-flex align-items-center mt-3">
                                <h3 class="f-w-300 d-flex align-items-center m-b-0"><%# Eval("Total") %></h3>
                              </div>
                            </div>
                         </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Repeater ID="Repeater6" runat="server">
                <ItemTemplate>
                    <div class="col-md-4 col-sm-6">
                        <div class="card statistics-card-1 overflow-hidden">
                            <div class="card-body">
                              <img src="./assets/images/widget/img-status-4.svg" alt="img" class="img-fluid img-bg" />
                              <h5 class="mb-4">No of Feedback</h5>
                              <div class="d-flex align-items-center mt-3">
                                <h3 class="f-w-300 d-flex align-items-center m-b-0"><%# Eval("Total") %></h3>
                              </div>
                            </div>
                         </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
      </div>
    </div>
</asp:Content>
