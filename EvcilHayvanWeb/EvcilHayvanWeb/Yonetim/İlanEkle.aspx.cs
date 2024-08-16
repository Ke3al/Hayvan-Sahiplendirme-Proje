using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace EvcilHayvanWeb.Yonetim
{
    public partial class İlanEkle : System.Web.UI.Page
    {


        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbPawMateConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string ResimAd=FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images" + ResimAd));
                    lblResim.Text= ResimAd.ToString();
                }
                else
                {
                    lblResim.Text = "Lütfen jpg,jpeg veya png uzantılı fotoğraf  seçiniz";
                }
            }
            else
            {
                lblResim.Text = "Lütfen bir fotoğraf seçin";
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti=new SqlConnection(conf_baglanti);

            baglanti.Open();
            SqlCommand komut = new SqlCommand("INSERT INTO tblIlan(Tur, Irk, IlanBasligi, Yas, Cinsiyet, Konum, Fotograf, IlanAciklama, IlanTarihi) VALUES (@Tur, @Irk, @IlanBasligi, @Yas, @Cinsiyet, @Konum, @Fotograf, @IlanAciklama, @IlanTarihi)", baglanti);
            komut.Parameters.AddWithValue("@Tur", TxtTur.Text.ToString());
            komut.Parameters.AddWithValue("@Irk", TxtIrk.Text.ToString());
            komut.Parameters.AddWithValue("@IlanBasligi", TxtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@Yas", Convert.ToInt32(TxtYas.Text.ToString()));
            komut.Parameters.AddWithValue("@Cinsiyet", TxtCinsiyet.Text.ToString());
            komut.Parameters.AddWithValue("@Konum", TxtKonum.Text.ToString());
            komut.Parameters.AddWithValue("@Fotograf", lblResim.Text.ToString());
            komut.Parameters.AddWithValue("@IlanAciklama", TxtAciklama.Text.ToString());
            komut.Parameters.AddWithValue("@IlanTarihi", TxtTarih.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();

            Response.Redirect("İlanEkle.aspx");

        }





    }
}