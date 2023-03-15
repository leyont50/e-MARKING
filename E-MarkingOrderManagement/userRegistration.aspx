<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="userRegistration.aspx.cs" Inherits="E_MarkingOrderManagement.userRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="main%20css/userRegistration.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container register-form">
            <div class="form">
                <div class="note">
                    <p>User Registration</p>
                </div>

                <div class="form-content">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Enter Your Name</label>
                            <div class="form-group">
                                   <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Your Name"></asp:TextBox>
                            </div>
                          </div>
                        <div class="col-md-6">
                            <label>Enter Your Email</label>
                             <div class="form-group">
                                   <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Your Email"></asp:TextBox>                                 
                             </div>
                        </div>
                        </div>
                    <br>
                    <div class="row">
                        <div class="col-md-6">
                            <label>Create Password</label>
                            <div class="form-group">
                                   <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                            </div>
                          </div>
                        <div class="col-md-6">
                            <label>Confirm Password</label>
                             <div class="form-group">
                                   <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Re-Enter Password"></asp:TextBox>                                 
                             </div>
                        </div>
                        </div>
                    <br>

                    <div class="row">
                        <div class="col-md-6">
                            <label>Enter Your Phone Number</label>
                            <div class="form-group">
                                   <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Enter Phone Number"></asp:TextBox>
                            </div>
                          </div>
                        </div>
                    <br>
                    <br>
                    </div>
                    <br />
                    <center>
                    <asp:Button ID="Button1" class="btnSubmit" runat="server" Text="Submit" OnClick="Button1_Click" />
                    
                    </center>
                </div>
            </div>

</asp:Content>
