<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="ghar_ka_khana.MyProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- profile End -->
    <div id="contact" class="text-left offset-3">
      <div class="container">
        <div class="section-title text-center" > 
          <h2>My Information</h2>
          <hr>
        </div>
        <div class="col-md-10 col-md-offset-2">
            
            <div class="row">
              <div class="col-md-6">
                <div class="form-group"> 
                   <h5>First Name : <asp:Label ID="first_name" runat="server" Text="" ></asp:Label> </h5>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                   <h5> Last Name : <asp:Label ID="last_name" runat="server" Text=""></asp:Label></h5>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-6">
                <div class="form-group">            
                   <h5>Email : <asp:Label ID="email1" runat="server" Text=""></asp:Label></h5>
                </div>
              </div>          
            </div>
               
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">            
                        <h5>Mobile no : <asp:Label ID="phone" runat="server" Text=""></asp:Label></h5>
                    </div>
                </div>          
            </div>

            <div class="row">
              <div class="col-md-6">
                <div class="form-group"> 
                   <h5> Gender : <asp:Label ID="gender" runat="server" Text=""></asp:Label></h5>                                                           
                </div>
              </div>          
            </div>

            <div class="row">
              <div class="col-md-6">
                <div class="form-group"> 
                    <h5>Address  <asp:Label ID="address" runat="server" Text=""></asp:Label></h5>  
                 <%--   <hr />--%>
                </div>
              </div>          
            </div>

            <div class="row">
              <div class="col-md-6">
                <div class="form-group"> 
                    <h5>House no :&nbsp <asp:Label ID="house" runat="server" Text=""></asp:Label></h5>                
                </div>
              </div>          
            </div>

            <div class="row">
              <div class="col-md-6">
                <div class="form-group"> 
                    <h5>Landmark : <asp:Label ID="land_mark" runat="server" Text=""></asp:Label></h5>                
                </div>
              </div>          
            </div>

            <div class="row">
              <div class="col-md-6">
                <div class="form-group"> 
                    <h5>Pincode : <asp:Label ID="pin" runat="server" Text=""></asp:Label></h5>                
                </div>
              </div>          
            </div>
            <br />     
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">            
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/EditMyProfile.aspx">Edit Your Profile</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/myOrders.aspx">My Orders</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ForgotPassword.aspx">Change Password</asp:HyperLink>                
                </div>
              </div>          
            </div>

        </div>
      </div>
    </div>
    <%--profile end--%>
</asp:Content>
