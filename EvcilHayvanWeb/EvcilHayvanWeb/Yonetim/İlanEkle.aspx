<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="İlanEkle.aspx.cs" Inherits="EvcilHayvanWeb.Yonetim.İlanEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Yeni ilan ekleme sayfası</h3>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Yeni İlan Ekleme Formu</h4>
                <p class="card-description">
                    Form
                </p>
                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">Tür</label>
                        <asp:TextBox ID="TxtTur" runat="server" CssClass="form-control" placeholder="Tür"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Irk</label>
                        <asp:TextBox ID="TxtIrk" runat="server" CssClass="form-control" placeholder="Irk"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">İlan Başlığı</label>
                        <asp:TextBox ID="TxtBaslik" runat="server" CssClass="form-control" placeholder="İlan Başlığı"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">Yaşı</label>
                        <asp:TextBox ID="TxtYas" runat="server" CssClass="form-control" placeholder="Yaşı"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">Cinsiyeti</label>
                        <asp:TextBox ID="TxtCinsiyet" runat="server" CssClass="form-control" placeholder="Cinsiyeti"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">Konum</label>
                        <asp:TextBox ID="TxtKonum" runat="server" CssClass="form-control" placeholder="Konum"></asp:TextBox>
                    </div>


                    <div class="form-group">
                        <asp:Label ID="lblResim" runat="server" Text="Fotoğraf upload"></asp:Label>
                        <input type="file" name="img[]" class="file-upload-default">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" ForeColor="Red" />
                        <asp:Button ID="Button2" runat="server" Text="Fotoğrafı yükle" OnClick="Button2_Click1" CssClass="btn btn-gradient-primary mr-2" />

                    </div>

                    <div class="form-group">
                        <label for="exampleTextarea1">İlan Açıklama</label>
                        <asp:TextBox ID="TxtAciklama" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="İlan Açıklama"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">İlan Tarihi</label>
                        <asp:TextBox ID="TxtTarih" runat="server" CssClass="form-control" placeholder="İlan Tarihi"></asp:TextBox>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click" CssClass="btn btn-gradient-primary mr-2" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
