<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterpage.Master" AutoEventWireup="true" CodeBehind="applicationmanagement.aspx.cs" Inherits="E_MarkingOrderManagement.applicationmanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
      <div class="row">
         <div class="col-md-6 mx-auto">
    <div class="card" style="margin-top: 60px;">
        <div class="card-body">
           <div class="row">
               <div class="col">
                   <center>
                       <asp:Label ID="Label4" runat="server" Text="APPLICATION APPROVAL HERE"></asp:Label>
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
                      <center>
                          <asp:Label ID="Label2" runat="server" Text="All pending applications are listed Below:-"></asp:Label>
                      </center>
                  </div>
              </div>
                <asp:GridView ID="GridView1" class="table table-bordered table-condensed table-responsive table-hover" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="Approval">
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="name_of_applicant" HeaderText="Applicant Name">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="application_id" HeaderText="Application ID">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="no_of_trees" HeaderText="Number of trees to be marked">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                <br />
                <br />
            <center>
                <asp:Button ID="Button1" class="btn btn-success btn-block btn-lg" runat="server" OnClick="Button1_Click" Text="Submit For Approval" />
            </center>
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sikkimforestmarkingorderDBConnectionString %>" SelectCommand="SELECT application_id, name_of_applicant, purpose, no_of_trees FROM testtable WHERE (approval = 'unapproved')"></asp:SqlDataSource>
                <br />
            <div class="row">
                  <div class="col">
                      <center>
                          <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                      </center>
                  </div>
        </div>
        </div>
             </div>
          </div>
         </div>
      

</asp:Content>
