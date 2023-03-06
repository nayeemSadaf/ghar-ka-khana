<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="ghar_ka_khana.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="banner-bottom-wthree py-lg-5 py-md-5 py-3" style="padding-top:10rem !important;">
    <div class="container">
        <div class="section-title text-center">
          <h2> Buy A Subscription Plan</h2>
          <hr>         
        </div>
        <div class="row">
            <div class="container">
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </div>
            <div id="pagingDiv" runat="server"></div>
        </div>
    </div>
</section>
</asp:Content>
