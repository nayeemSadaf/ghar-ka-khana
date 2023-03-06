<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="ghar_ka_khana.admin.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="middleBody" runat="server">
    <br />
    <br />
    <div id="page-wrapper" class="col-md-offset-3">
        <div class="row">
            <div class="col-lg-3"></div>

            <div class="col-lg-7"><br />
                <h1 class="page-header">Users List</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row" >

            <div class="col-lg-3"></div>

            <div class="col-lg-7" >
                <div class="panel panel-default">
                    <div class="panel-heading ">
                        Users
                        <asp:HyperLink ID="adduser" runat="server" style="float:right;" NavigateUrl="#" CssClass="btn" >Add User</asp:HyperLink>
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="flot-chart">
                            <div class="flot-chart-content" id="flot-line-chart">
                                <asp:GridView ID="GridView1" CssClass="table table-hover" GridLines="None" runat="server" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
                                        <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
                                        <asp:BoundField DataField="email_id" HeaderText="Email Id" SortExpression="email_id" />
                                        <asp:TemplateField HeaderText="Photo">
                                            <ItemTemplate>
                                                <asp:Image Width="50px" ID="Image1" ImageUrl='<%# String.Format("~/admin/userHandler.ashx?sadaf={0}",Eval("user_id")) %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <%--<asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
                                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                                            <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                                        --%>
                                        <asp:TemplateField HeaderText="Edit">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# String.Format("~/admin/editUser.aspx?user_id={0}",Eval("user_id")) %>'>Edit</asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="user_id">
                                </asp:GridView>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:conString %>" SelectCommand="SELECT * FROM [user_info]"></asp:SqlDataSource>

                            </div>
                        </div>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
        </div>
            <!-- /.row -->
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>
</asp:Content>
