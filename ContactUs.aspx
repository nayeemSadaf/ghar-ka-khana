<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="ghar_ka_khana.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Contact Section -->
                
    <div id="contact" class="text-center">
    <div class="container">
        <div class="section-title text-center">
          <h2>Contact us</h2>
          <hr>
          <p>If you have any issue, please let us know</p>
        </div>

        <div class="col-md-10 col-md-offset-1 ">
             <div class="row">
              <div class="col-md-12">
                <div class="form-group">            
                    <asp:Label ID="lblErrorMsg" runat="server" Text=""></asp:Label>                                   
                </div>
              </div>          
            </div>
            <div class="row">
              <div class="col-md-6">
                <div class="form-group"> 
                    <asp:TextBox ID="fname" runat="server" class="form-control" placeholder="Enter Your First Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your First Name" ControlToValidate="fname" ForeColor="Red"></asp:RequiredFieldValidator>                
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                    <asp:TextBox ID="lname" runat="server" class="form-control" placeholder="Enter Your Last Name"></asp:TextBox>              
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-12">
                <div class="form-group">            
                    <asp:TextBox ID="email" TextMode="email" runat="server" class="form-control" placeholder="Enter Your Email"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your Email" ControlToValidate="fname" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
              </div>          
            </div>

            <div class="row">
              <div class="col-md-12">
                <div class="form-group">            
                    <asp:TextBox ID="message" TextMode="MultiLine" class="form-control" placeholder="Enter Your Message" runat="server"></asp:TextBox>
                </div>
              </div>          
            </div>

            <div class="form-group">
                 <asp:Button ID="btncntSbt" runat="server"  class="btn btn-success"  Text="Submit"  OnClick="btncntSbt_Click"/>
            </div>
            
        </div>

      </div>
    </div>
        
    <!--contact end -->
</asp:Content>
