<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="DuzenleSil.aspx.cs" Inherits="EvcilHayvanWeb.Yonetim.DuzenleSil" %>

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
    <h3 class="page-title">İlan düzenle/sil sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="content-container">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbPawMateConnectionString %>" SelectCommand="SELECT * FROM [tblIlan]" DeleteCommand="DELETE FROM [tblIlan] WHERE [id] = @id" InsertCommand="INSERT INTO [tblIlan] ([Tur], [Irk], [IlanBasligi], [Yas], [Cinsiyet], [Konum], [Fotograf], [IlanAciklama], [IlanTarihi]) VALUES (@Tur, @Irk, @IlanBasligi, @Yas, @Cinsiyet, @Konum, @Fotograf, @IlanAciklama, @IlanTarihi)" UpdateCommand="UPDATE [tblIlan] SET [Tur] = @Tur, [Irk] = @Irk, [IlanBasligi] = @IlanBasligi, [Yas] = @Yas, [Cinsiyet] = @Cinsiyet, [Konum] = @Konum, [Fotograf] = @Fotograf, [IlanAciklama] = @IlanAciklama, [IlanTarihi] = @IlanTarihi WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Tur" Type="String"></asp:Parameter>
                <asp:Parameter Name="Irk" Type="String"></asp:Parameter>
                <asp:Parameter Name="IlanBasligi" Type="String"></asp:Parameter>
                <asp:Parameter Name="Yas" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="Cinsiyet" Type="String"></asp:Parameter>
                <asp:Parameter Name="Konum" Type="String"></asp:Parameter>
                <asp:Parameter Name="Fotograf" Type="String"></asp:Parameter>
                <asp:Parameter Name="IlanAciklama" Type="String"></asp:Parameter>
                <asp:Parameter Name="IlanTarihi" Type="DateTime"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Tur" Type="String"></asp:Parameter>
                <asp:Parameter Name="Irk" Type="String"></asp:Parameter>
                <asp:Parameter Name="IlanBasligi" Type="String"></asp:Parameter>
                <asp:Parameter Name="Yas" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="Cinsiyet" Type="String"></asp:Parameter>
                <asp:Parameter Name="Konum" Type="String"></asp:Parameter>
                <asp:Parameter Name="Fotograf" Type="String"></asp:Parameter>
                <asp:Parameter Name="IlanAciklama" Type="String"></asp:Parameter>
                <asp:Parameter Name="IlanTarihi" Type="DateTime"></asp:Parameter>
                <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" CssClass="table table-borderless" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" DataKeyNames="id">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
            </Columns>
        </asp:GridView>

    </div>
</asp:Content>
