<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Fruit.Admin.Pages.Admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="pc-container">
      <div class="pc-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
          <div class="page-block">
            <div class="row align-items-center">
              <div class="col-md-12">
                <ul class="breadcrumb">
                  <li class="breadcrumb-item"><a href="../dashboard/index.html">Admin</a></li>
                  <li class="breadcrumb-item"><a href="javascript: void(0)">Admin</a></li>
                </ul>
              </div>
              <div class="col-md-12">
                <div class="page-header-title">
                  <h2 class="mb-0">Admin</h2>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- [ breadcrumb ] end -->


        <!-- [ Main Content ] start -->
        <div class="row">
          <!-- prettier-ignore -->
          <div class="col-md-10 col-xxl-9 mb-4">
            <div>
              <a class="btn btn-primary"  href="add.aspx">Add</a>
            </div>
          </div>

        </div>
          <form runat="server">
              <div class="row">
          <!-- Base Style table start -->
          <div class="col-sm-12">
            <div class="card">
              <div class="card-header">
                <h5>Base Style</h5>
                <small
                  ></small
                >
              </div>
              <div class="card-body">
                <div class="dt-responsive table-responsive">
                  <table id="base-style" class="table table-striped table-bordered nowrap">
                    <thead>
                      <tr>
                        <th>Name</th>
                        <th>User Name</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Update</th>
                        <th>Delete</th>
                      </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="RepeaterAdmin" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Eval("Name") %></td>
                                    <td><%# Eval("UserName") %></td>
                                    <td><%# Eval("Email") %></td>
                                    <td><%# Eval("Password") %></td>
                                    <td>
                                        <a href="update.aspx?Id=<%# Eval("Id") %>">Update <i class="ti ti-edit"></i></a>
                                    </td>
                                    <td>
                                        <asp:LinkButton runat="server" CommandName="Delete" CommandArgument='<%# Eval("Id") %>' onClick="DeleteAdmin">Delete <i class="ti ti-trash"></i></asp:LinkButton>                                        
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>

                    <tfoot>
                      <tr>
                        <th>Name</th>
                        <th>User Name</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Update</th>
                        <th>Delete</th>
                      </tr>
                    </tfoot>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <!-- Base Style table end -->
        </div>
          </form>
        
        <!-- [ Main Content ] end -->
      </div>
    </section>
</asp:Content>
