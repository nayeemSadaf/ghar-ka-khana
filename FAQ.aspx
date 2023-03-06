<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="ghar_ka_khana.FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contact" class="text-center">
      <div class="container">
        <div class="section-title text-center">
          <div class="col-md-2"></div>
          <div class="col-md-8">
              <h2>FAQ</h2>
              <hr>
              <h4>Ask us anything</h4>
                <asp:TextBox ID="comment" class="form-control bg-light border-0 px-3" TextMode="MultiLine" placeholder="Leave us a comment" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="cmtsbt" class="btn btn-success" runat="server" Text="submit" />
                <br />
          </div>
        </div>
        
        <div class="col-md-12">
            <h5>Do you have vegetarian, vegan, gluten free options?</h5>
            <p>Yes we do.</p>
        </div>

        <div class="col-md-12">
            <h5>Are you open on sunday ?</h5>
            <p>Yes we are open on sunday's from 10:00 AM to 11:00 PM</p>
        </div>
        <div class="col-md-12">
            <h5>Do you have Parking facility?</h5>
            <p>Yes we do.</p>
        </div>
        <div class="col-md-12">
            <h5>Do you have buffet system?</h5>
            <p>Yes we do.</p>
        </div>
        <div class="col-md-12">
            <h5>Do you have organise parties?</h5>
            <p>Yes we do.</p>
        </div>
        <div class="col-md-12">
            <h5>Do you give discounts on festivals?</h5>
            <p>Yes we do but it depends on the festival</p>
        </div>
        <div class="col-md-12">
            <h5>Do you have Dessert option?</h5>
            <p>Yes we have several dessets</p>
        </div>
        <div class="col-md-12">
            <h5>Do you have vegetarian, vegan, gluten free options?</h5>
            <p>Yes we do.</p>
        </div>
      </div>
    </div>
</asp:Content>
