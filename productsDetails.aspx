<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="productsDetails.aspx.cs" Inherits="ghar_ka_khana.productsDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
        /* Remove the navbar's default rounded borders and increase the bottom margin */
        .navbar {
            margin-bottom: 50px;
            border-radius: 0;
        }

        /* Remove the jumbotron's default bottom margin */
        .jumbotron {
            margin-bottom: 0;
        }

        /* Add a gray background color and some padding to the footer */
        footer {
            background-color: #f2f2f2;
            padding: 25px;
        }
    </style>
    <script>
        function successalert() {
            swal({
                title: 'Cart!',
                text: 'Added to cart.',
                type: 'success'
            }).then(() => {
                window.location.href = "cart.aspx";
            });
        }
    </script>
    <br />
    <%--<form id="form1" runat="server">--%>
    
    <div id="contact" class="text-center">
      <div class="container">
        <div class="section-title text-center">
          <h2>Subscription Plan</h2>
          <hr>         
        </div>
        <div class="col-md-10 col-md-offset-1">
            <div class="row text-left">
                <div class="col-md-" style="clear:both;">
                    <asp:Image ID="Image1" CssClass="img-responsive" runat="server" />
                    <asp:Label ID="lblfarImg" runat="server" Text=""></asp:Label>
                </div>

                <div class="col-md-" style="clear:both;padding-left:30px;">
                    Product ID:
                    <asp:Label ID="lblProductID" runat="server" Text="Label"></asp:Label>
                    <br />
                    Product Name:
                    <asp:Label ID="lblProductName" runat="server" Text="Label"></asp:Label>
                    <br />
                    Design Price: &#8377;
                    <asp:Label ID="lblProductPrice" runat="server" Text="Label"></asp:Label>
                    <br />
                    Design Details: 
                    <asp:Label ID="lblServicesDetails" runat="server" Text="Label"></asp:Label>
                    <br />
                    Quantity:
                    <asp:TextBox ID="txtQuantity" CssClass="form-control" AutoPostBack="true" Text="1" runat="server" OnTextChanged="txtQuantity_TextChanged" style="width:100px;"></asp:TextBox>
                    <br />
                    Amount: &#8377;
                    <asp:Label ID="lblAmount" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Button ID="btnAddToCart" CssClass="btn btn-success" runat="server" Text="Add To Cart" OnClick="btnAddToCart_Click" />
                    <br />
                    <br />                           
                </div>
            </div>
        </div>
      </div>
    </div>
        <%--</form>--%>
</asp:Content>
