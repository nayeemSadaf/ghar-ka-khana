<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BookATable.aspx.cs" Inherits="ghar_ka_khana.BookATable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contact" class="text-center">
        <div class="container">
            <div class="section-title text-center">
                <h2>Book A Table</h2>
                <hr>
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
                            <asp:TextBox ID="fname" runat="server" class="form-control" placeholder=" First Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your First Name" ControlToValidate="fname" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:TextBox ID="lname" runat="server" class="form-control" placeholder=" Last Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your last Name" ControlToValidate="lname" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:TextBox ID="email" TextMode="email" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your Email" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:TextBox ID="mobile" TextMode="number" MaxLength="10" runat="server" class="form-control" placeholder="Mobile no"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter your Mobile no" ControlToValidate="mobile" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:TextBox ID="date" TextMode="Date" runat="server" class="form-control" placeholder="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select a date" ControlToValidate="date" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RangeValidator runat="server"  ID="RangeValidator1"  Type="Date"  ControlToValidate="date" MaximumValue="9999/12/28" MinimumValue="1000/12/28" ErrorMessage="enter valid date" Display="None"></asp:RangeValidator>
                            <asp:CompareValidator id="dateValidator" runat="server"  Type="Date" Operator="DataTypeCheck" ControlToValidate="date"  ErrorMessage="Please enter a valid date."></asp:CompareValidator>    
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:TextBox ID="time" type="time" name="time" runat="server" class="form-control" placeholder="Time(12 hour format)" min="08:00" max="21:00" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="select time" ControlToValidate="time" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:Label ID="Label1" runat="server" Text="Booking time:08:00 to 21:00"></asp:Label>
                             <span class="validity"></span>
                        </div>
                    </div>
                    <%--<div class="col-md-6">
                        <div class="form-group">
                            <asp:TextBox ID="time" TextMode="Time" runat="server" class="form-control" placeholder="Time"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="select time" ControlToValidate="time" ForeColor="Red"></asp:RequiredFieldValidator>
                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Time Format" ControlToValidate="time" ForeColor="Red" ValidationExpression="^([ 01]?[0-9]2[0-3])(:([0-5][0-9]))?$"></asp:RegularExpressionValidator>--%>
                        <%--</div>
                    </div>--%>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:TextBox ID="people" TextMode="number" MaxLength="10" runat="server" class="form-control" placeholder="# Of People"></asp:TextBox>
                            <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="people" ErrorMessage="Value must be a whole number" />
                            <asp:RangeValidator runat="server" Type="Integer" MinimumValue="1" MaximumValue="8" ControlToValidate="people" ErrorMessage="Value must be a whole number between 1 and 8" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <asp:Button ID="btnBook" runat="server" class="btn btn-success" Width="200px" Height="40px" Text="Book" OnClick="btnBook_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </asp:Content>