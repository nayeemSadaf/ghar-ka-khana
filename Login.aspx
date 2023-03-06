<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ghar_ka_khana.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Contact Section -->
    <div id="contact" class="text-center">
      <div class="container">
        <div class="section-title text-center">
          <h2>Login</h2>
          <hr>
          <p>Login with us</p>
        </div>
        <div class="col-md-10 col-md-offset-1">
            <div class="row">
              <div class="col-md-6">
                  <asp:Label ID="lblErrorMsg" runat="server" Text=""></asp:Label>
                  <asp:TextBox ID="email" runat="server" class="form-control bg-light border-0 px-4" placeholder="Enter Your Email" TextMode="Email"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your Email" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter a Valid Email" ForeColor="Red" ControlToValidate="email"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
              </div>
              <div class="col-md-6">
                  <asp:TextBox ID="password" runat="server" class="form-control bg-light border-0 px-4" placeholder="Enter Your Password" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Your Password" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>
            </div>
            <div class="form-group">
                 <asp:Button ID="btnLgnSbt" runat="server" onClick="btnLgnSbt_Click"  class="btn btn-success" Text="Submit" />
            </div>
            <div class="form-group">          
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/LoginWithOTP.aspx" runat="server">Login with OTP</asp:HyperLink>
                      
            </div><br />
            <div class="form-group">
                <p> New User ?&nbsp
                    <asp:HyperLink ID="registration" NavigateUrl="~/Registration.aspx" runat="server">Register Here</asp:HyperLink>

                </p>
            </div>
        </div>

      </div>
    </div>
</asp:Content>
