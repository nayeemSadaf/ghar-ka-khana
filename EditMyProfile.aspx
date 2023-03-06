<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditMyProfile.aspx.cs" Inherits="ghar_ka_khana.EditMyProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contact" class="text-center">
      <div class="container">
        <div class="section-title text-center"> 
          <h2>Edit your profile</h2>
          <hr>
         <%-- <p>Register with us.</p>--%>
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

            <div class="row text-left">
              <div class="col-md-12">
                <div class="form-group" >  
                  <h5>Email : &nbsp <asp:Label ID="email1" runat="server" Text="Label"></asp:Label></h5>
                </div>
              </div>        
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">            
                        <asp:TextBox ID="mobile" TextMode="number" MaxLength="10" runat="server" class="form-control" placeholder="Enter Your mobile no"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter your Mobile no" ControlToValidate="fname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>          
            </div>
                       
            <div class="row text-left">
              <div class="col-md-6">
                <div class="form-group"> 
                    <h5><asp:Label ID="gender" runat="server" Text="select your gender :"></asp:Label></h5>                                        
                </div>
              </div>          
            </div>

            <div class="row">
                  <div class="col-md-2">
                    <div class="form-group">    
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="male" GroupName="gender" selected=""/>                         
                    </div>
                  </div>   
                  <div class="col-md-2">
                    <div class="form-group">    
                        <asp:RadioButton ID="RadioButton3" runat="server" Text="female" GroupName="gender" />          
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="form-group">    
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="other1" GroupName="gender" />          
                    </div>
                  </div>
              </div>
                       
            <div class="row text-left">
              <div class="col-md-6">
                <div class="form-group"> 
                    <h5><asp:Label ID="address" runat="server" Text="Enter your address :"></asp:Label></h5>                  
                </div>
              </div>          
            </div>

            <div class="row text-left">
              <div class="col-md-2">
                <div class="form-group"> 
                    <h6><asp:Label ID="Label1" runat="server" Text="House no :"></asp:Label></h6>                     
                </div>
              </div>
              <div class="col-md-8 ">
                <div class="form-group"> 
                    <asp:TextBox ID="house_no" runat="server" placeholder="house no / locality" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter your House no or Locality" ControlToValidate="house_no" ForeColor="Red"></asp:RequiredFieldValidator>                  
                </div>
              </div>          
            </div>

            <div class="row text-left">
              <div class="col-md-2">
                <div class="form-group"> 
                    <h6><asp:Label ID="Label2" runat="server" Text="Landmark :"></asp:Label></h6>                     
                    
                </div>
              </div>
              <div class="col-md-8">
                <div class="form-group"> 
                    <asp:TextBox ID="landmark" runat="server" placeholder="Landmark" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter your Landmark" ControlToValidate="landmark" ForeColor="Red"></asp:RequiredFieldValidator>                  
                </div>
              </div>          
            </div>

            <div class="row text-left">
              <div class="col-md-2">
                <div class="form-group"> 
                    <h6><asp:Label ID="Label3" runat="server" Text="Pincode :"></asp:Label></h6>             
                </div>
              </div>
              <div class="col-md-8">
                <div class="form-group"> 
                    <asp:TextBox ID="pincode" runat="server" placeholder="Pincode" TextMode="number" MaxLength="6" CssClass="form-control"></asp:TextBox>
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
                    <asp:Button ID="updateprofile" runat="server" class="btn btn-success" Text="Submit" OnClick="updateprofile_Click" />                    
                </div>
              </div>          
            </div>

        </div>
      </div>
</div>
</asp:Content>
