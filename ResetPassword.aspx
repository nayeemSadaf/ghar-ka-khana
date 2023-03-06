<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="ghar_ka_khana.ResetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contact" class="text-center">
  <div class="container">
    <div class="section-title text-center">
      <h2>Reset Password</h2>
      <hr>
        <p>Please Enter Password and Confirm Password </p>
    </div>
    <div class="col-md-10 col-md-offset-1">
        <div class="row">
          <div class="col-md-6">
              <asp:PlaceHolder ID="PlaceHolder1" runat="server">
                  <asp:Label ID="lblErrorMsg" runat="server" Text=""></asp:Label>
                  <div class="row">
                      <div class="col-md-6">
                          <div class="form-group">
                              <asp:TextBox ID="password" TextMode="Password" runat="server" class="form-control" placeholder="Enter Your Password"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your Password" ControlToValidate="fname" ForeColor="Red"></asp:RequiredFieldValidator>
                              <p class="help-block text-danger"></p>
                          </div>
                      </div>
                      <div class="col-md-6">
                          <div class="form-group">
                              <asp:TextBox ID="cpassword" TextMode="Password" runat="server" class="form-control" placeholder="Confirm Your Password"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter your Password" ControlToValidate="fname" ForeColor="Red"></asp:RequiredFieldValidator>
                              <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password and confirm password are not same" ControlToCompare="password" ControlToValidate="cpassword" ForeColor="Red"></asp:CompareValidator>
                              <p class="help-block text-danger"></p>
                          </div>
                      </div>
                  </div>
                  <div class="form-group">
                      <asp:Button ID="btnResetSbt" runat="server" OnClick="btnResetSbt_Click" class="btn btn-success" Text="Submit" />
                  </div>
                </asp:PlaceHolder>
          </div>
        </div>
    </div>
  </div>
</div>
</asp:Content>
