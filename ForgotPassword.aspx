<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="ghar_ka_khana.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contact" class="text-center">
       <div class="container">
            <div class="section-title text-center">
              
              <h2>Forgot Password</h2>
              <hr>
              <p>Please Enter Your Email To Reset Password</p>
            </div>
            <div class="col-md-12 col-md-offset-3">
                <div class="row">           
                    <div class="col-md-6 ">
                        <asp:Label ID="lblErrorMsg" runat="server" Text=""></asp:Label>
                        <asp:TextBox ID="email" runat="server" class="form-control bg-light border-0 px-4" placeholder="Enter Your Email" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your Email" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter a Valid Email" ForeColor="Red" ControlToValidate="email"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                    </div>  
                    <div class="col-md-3"></div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                       <div class="col-md-6" style="float: left;">
                           <asp:TextBox ID="captchacode" runat="server" class="form-control bg-light border-0 px-4" Placeholder="Enter Captcha code"></asp:TextBox>
                       </div>
                       <div class="col-md-6" style="float: left;">
                           <asp:Image ID="captchaImage" runat="server" Height="37px" Width="150px" ImageUrl="~/MyCaptcha.aspx" />
                           <br />
                       </div>
                      
                   </div>
                </div>

                <br />
                <div class="row">
                   <div class="col-md-6">
                       <div class="form-group">
                            <asp:Button ID="btnForgotSbt" runat="server" OnClick="btnForgotSbt_Click"  class="btn btn-success" Text="Submit" />
                        </div>
                    </div>
                </div>
            </div>            
        </div>
    </div>
</asp:Content>

