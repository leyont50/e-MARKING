<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterpage.Master" AutoEventWireup="true" CodeFile="unapprovedapplications.aspx.cs" Inherits="E_MarkingOrderManagement.unapprovedapplications" %>
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
                       <asp:Label ID="Label4" runat="server" Text=" UNAPPROVED APPLICATIONS "></asp:Label>
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
                          <asp:Label ID="Label2" runat="server" Text="All APPROVED applications are listed Below:-"></asp:Label>
                      </center>
         
                  </div>
              </div>
            </div>
         <asp:GridView ID="GridView1" class="table table-bordered table-condensed table-responsive table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
              <Columns>
                  <asp:BoundField DataField="application_id" HeaderText="Application ID">
                  <ItemStyle HorizontalAlign="Center" />
                  </asp:BoundField>
                  <asp:BoundField HeaderText="Name of Applicant" DataField="name_of_applicant">
                  <ItemStyle HorizontalAlign="Center" />
                  </asp:BoundField>
                  <asp:BoundField DataField="no_of_trees" HeaderText="Number of Trees">
                  <ItemStyle HorizontalAlign="Center" />
                  </asp:BoundField>
                  <asp:BoundField HeaderText="Phone Number" DataField="ph_no">
                  <ItemStyle HorizontalAlign="Center" />
                  </asp:BoundField>
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1"  runat="server" ConnectionString="<%$ ConnectionStrings:sikkimforestmarkingorderDBConnectionString %>" SelectCommand="select application_id,name_of_applicant,no_of_trees,ph_no from testtable where approval='unapproved';"></asp:SqlDataSource>
        </div>
             </div>
         
          </div>
         </div>
</asp:Content>
