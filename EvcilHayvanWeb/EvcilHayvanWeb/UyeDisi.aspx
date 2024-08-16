<%@ Page Title="" Language="C#" MasterPageFile="~/UyeDisi.Master" AutoEventWireup="true" CodeBehind="UyeDisi.aspx.cs" Inherits="EvcilHayvanWeb.UyeDisi1" %>

<%@ Register TagPrefix="rsweb" Namespace="Microsoft.Reporting.WebForms" Assembly="Microsoft.ReportViewer.WebForms" %>
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
<div>

    <asp:SqlDataSource runat="server" ConnectionString="Data Source=DESKTOP-PDMMRU2\SQLEXPRESS;Initial Catalog=dbPawMate;Integrated Security=True;" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tblIlan]" ID="ctl00"></asp:SqlDataSource>
    
    <asp:GridView ID="GridView1" CssClass="table table-borderless" runat="server" DataSourceID="ctl00" AllowPaging="True" AllowSorting="True" DataKeyNames="id">
        <Columns>
            <asp:CommandField ShowDeleteButton="False" ShowEditButton="False"></asp:CommandField>
        </Columns>
    </asp:GridView>
</div>
</asp:Content>
