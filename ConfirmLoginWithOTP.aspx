<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ConfirmLoginWithOTP.aspx.cs" Inherits="ghar_ka_khana.ConfirmLoginWithOTP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div id="contact" class="text-center">
    <div class="container">
    <div class="section-title text-center">
      <h2>Contact Form</h2>
      <hr>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit duis sed.</p>
    </div>
    <div class="col-md-10 col-md-offset-1">      
        <div class="row g-3">
            <asp:Label ID="lblErrorMsg" runat="server" Text=""></asp:Label>
                            
            <div class="col-12">
                <asp:TextBox ID="email" runat="server" class="form-control bg-light border-0 px-4" placeholder="Enter your email" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter you email" ControlToValidate="email" ForeColor="Red" ></asp:RequiredFieldValidator>
                <asp:regularexpressionvalidator runat="server" errormessage="Email address is not valid" ControlToValidate="email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:regularexpressionvalidator>
            </div>
            <div class="col-12">
                <asp:TextBox ID="otp" runat="server" class="form-control bg-light border-0 px-4" placeholder="Enter your OTP " TextMode="Password" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter you OTP" ControlToValidate="otp" ForeColor="Red" ></asp:RequiredFieldValidator>
            </div>

            <div class="col-12">
                <asp:Button ID="btnLgnCOTPSbt" runat="server" class="btn btn-success" OnClick="btnLgnCOTPSbt_Click" Text="Submit"  />
            </div>
        </div>
    </div>
  </div>
  </div>
</asp:Content>
