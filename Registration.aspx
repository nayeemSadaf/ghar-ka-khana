<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ghar_ka_khana.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Contact Section -->
    <div id="contact" class="text-left">
      <div class="container">
        <div class="section-title text-center"> 
          <h2>Registration Form</h2>
          <hr>
          <p>Register with us.</p>
        </div>
        <div class="col-md-10 col-md-offset-1">
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
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your Email" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
              </div>          
            </div>
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">            
                    <asp:TextBox ID="password" TextMode="Password" runat="server" class="form-control" placeholder="Enter Your Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your Password" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                    <asp:TextBox ID="cpassword" TextMode="Password" runat="server" class="form-control" placeholder="Confirm Your Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter your Password" ControlToValidate="cpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password and confirm password are not same" ControlToCompare="password" ControlToValidate="cpassword" ForeColor="Red"></asp:CompareValidator>                
                </div>
              </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">            
                        <asp:TextBox ID="mobile" TextMode="number" MaxLength="10" runat="server" class="form-control" placeholder="Enter Your mobile no"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter your Mobile no" ControlToValidate="mobile" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>          
            </div>
            <div class="row">
              <div class="col-md-4">
                <div class="form-group"> 
                    <asp:Label ID="gender" runat="server" Font-Size="Medium" Text="Select your gender :"></asp:Label>                                        
                </div>
              </div>          
            </div>
            <div class="row">
                <div class="col-md-2">
                    <div class="form-group">
                        <asp:RadioButton ID="RadioButton1"  runat="server" CssClass="form-control" Text="Male" GroupName="gender" selected="" Font-Size="Medium" />
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <asp:RadioButton ID="RadioButton3"  runat="server" CssClass="form-control" Text="Female" GroupName="gender" />
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <asp:RadioButton ID="RadioButton2"  runat="server" CssClass="form-control" Text="Other" GroupName="gender" />
                    </div>
                </div>
            </div>
            <%--<div class="row">
                  <div class="col-md-12">
                    <div class="form-group">     
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                  </div>          
              </div>--%>
            <div class="row">
              <div class="col-md-4">
                <div class="form-group"> 
                    <asp:Label ID="address" runat="server" Font-Size="Medium" Text="Enter your address :"></asp:Label>                  
                </div>
              </div>          
            </div>
            <div class="row">
                <div class="col-md-2">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="House no :"></asp:Label>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <asp:TextBox ID="house_no" runat="server" Font-Size="Medium" placeholder="House no / Locality" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter your House no or Locality" ControlToValidate="house_no" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="row">
              <div class="col-md-2">
                  <div class="form-group">
                      <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Landmark :"></asp:Label>
                  </div>
              </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <asp:TextBox ID="landmark" runat="server" Font-Size="Medium" placeholder="Landmark" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter your Landmark" ControlToValidate="landmark" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>          
            </div>
            <div class="row">
                <div class="col-md-2">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Pincode :"></asp:Label>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <asp:TextBox ID="pincode" runat="server" Font-Size="Medium" placeholder="Pincode" TextMode="number" MaxLength="6" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter your pincode" ControlToValidate="pincode" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <asp:Label ID="lblcheckpin" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <asp:Button ID="btnRegSbt" runat="server" class="btn btn-success" Text="Submit" OnClick="btnRegSbt_Click1" />
                    </div>
                </div>
            </div>
        </div>
      </div>
</div>
</asp:Content>
