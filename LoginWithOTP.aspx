<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginWithOTP.aspx.cs" Inherits="ghar_ka_khana.LoginWithOTP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contact" class="text-center">
  <div class="container">
    <div class="section-title text-center">
      <h2>Login Form</h2>
      <hr>
      <p>Login with us</p>
        <p>Please Enter Your Email For OTP</p>
    </div>
    <div class="col-md-10 col-md-offset-1">
        <div class="row">
          <div class="col-md-12">
              <asp:Label ID="lblErrorMsg" runat="server" Text=""></asp:Label>
              <asp:TextBox ID="email" runat="server" class="form-control bg-light border-0 px-4" placeholder="Enter Your Email" TextMode="Email"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your Email" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter a Valid Email" ForeColor="Red" ControlToValidate="email"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
          </div>
          <div class="col-md-12">
              <div class="col-6" style="float:left;">
                  <asp:TextBox ID="captchacode" runat="server"  class="form-control bg-light border-0 px-4" Placeholder="Enter Captcha code"></asp:TextBox>
              </div>
              <div class="col-6" style="float:left;">
                   <asp:Image ID="captchaImage" runat="server" Height="37px" Width="150px" ImageUrl="~/MyCaptcha.aspx" />
              </div>
          </div>
        </div>
        <div class="form-group">          
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Login.aspx" runat="server">Login with Password</asp:HyperLink>
                      
        </div><br />
        <div class="form-group">
             <asp:Button ID="btnLgnOTPSbt" runat="server" OnClick="btnLgnOTPSbt_Click"  class="btn btn-success" Text="Submit" />
        </div>
        <br />
        <div class="form-group">
            <p> New User ?&nbsp
                <asp:HyperLink ID="registration" NavigateUrl="~/Registration.aspx" runat="server">Register Here</asp:HyperLink>

            </p>
        </div>

    </div>
  </div>
</div>
</asp:Content>
