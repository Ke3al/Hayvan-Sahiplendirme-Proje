<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EvcilHayvanWeb.Yonetim.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <style>
        .content-container {
            overflow-x: auto;
            margin: 0 auto; 
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title"></h3>
    <div class="content-container">

        <asp:SqlDataSource runat="server" ConnectionString="Data Source=DESKTOP-PDMMRU2\SQLEXPRESS;Initial Catalog=dbPawMate;Integrated Security=True;" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tblIletisim]" ID="ctl00" OnSelecting="ctl00_Selecting"></asp:SqlDataSource>

        <asp:GridView ID="GridView1" CssClass="table table-borderless" runat="server" DataSourceID="ctl00" AllowPaging="True" AllowSorting="True" DataKeyNames="IletisimId">
            <Columns>
                <asp:CommandField ShowDeleteButton="False" ShowEditButton="False"></asp:CommandField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
