<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="editUser.aspx.cs" Inherits="ghar_ka_khana.admin.editUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="middleBody" runat="server">
    
    <div id="contact" class="text-center">
      <div class="container">
        <div class="section-title text-center"> <br /> <br /> <br />
          <h2>Users</h2>           
          <hr>
          <p>Edit Users.</p>
        </div>
        <div class="col-md-10 col-md-offset-3">
            <div class="row">
                <div class="col-md-3"></div>
                  <div class="col-md-4">
                    <div class="form-group"> 
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>                
                        <asp:TextBox ID="fname" runat="server" class="form-control" placeholder="Enter Your First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your First Name" ControlToValidate="fname" ForeColor="Red"></asp:RequiredFieldValidator>

                      <p class="help-block text-danger"></p>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="form-group">
                        <asp:TextBox ID="lname" runat="server" class="form-control" placeholder="Enter Your Last Name"></asp:TextBox>              
                      <p class="help-block text-danger"></p>
                    </div>
                  </div>
            </div>

            <div class="row">
                <div class="col-md-3"></div>
              <div class="col-md-8">
                <div class="form-group">   
                   <%--  Email: <asp:Label ID="email" runat="server" Text=""></asp:Label>     --%>           
                    
                    <asp:TextBox ID="email" TextMode="email" runat="server" class="form-control" placeholder="Enter Your Email"></asp:TextBox>                   
                </div>
              </div>          
            </div>

            <br />

            <div class="row">
                <div class="col-md-3"></div>
                  <div class="col-md-8">
                    <div class="form-group">            
                        <asp:TextBox ID="mobile" TextMode="number" MaxLength="10" runat="server" class="form-control" placeholder="Enter Your mobile no"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter your Mobile no" ControlToValidate="fname" ForeColor="Red"></asp:RequiredFieldValidator>
                        <p class="help-block text-danger"></p>
                    </div>
                  </div>          
                </div>

            <div class="row">
                <div class="col-md-3"></div>
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
              </div>
            <br />
            <div class="row">
                <div class="col-md-1"></div>
                  <div class="col-md-8">
                    <div class="form-group"> &nbsp &nbsp   
                        photo: <asp:Label ID="lblImg" runat="server" Text="Label"></asp:Label>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                        <p class="help-block text-danger"></p>
                    </div>
                  </div>          
              </div>
                       
            <div class="row">
                <div class="col-md-3"></div>
              <div class="col-md-8">
                <div class="form-group">            
                    <asp:Button ID="updatUsrSbt" runat="server" class="btn btn-success" Text="Submit" OnClick="updatUsrSbt_Click" />
                  <p class="help-block text-danger"></p>
                </div>
              </div>          
            </div>

        </div>
      </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
