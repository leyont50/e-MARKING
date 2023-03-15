<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="E_MarkingOrderManagement.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="adminlogin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <section class="vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
          <img src="images/sampleimage.jpg"class="img-fluid" alt="Sample image" style="height: auto; width:auto;margin-top:40px"/>
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
       <div class="card" style="margin-top: 60px;">
                 <div class="card-body">
                     <div class="row">
                         <div class="col">
                            <center>
                               <h3>Admin Login</h3>
                            </center>
                         </div>
                      </div>
                     <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Admin id</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID"></asp:TextBox>
                        </div>
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                         <br>
                        <div class="form-group d-grid gap-2 col-6 mx-auto">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" />
                        </div>
                     </div>
                  </div>
                 </div>
      </div>
    </div>
  </div>
      </div>
</section>

</asp:Content>
