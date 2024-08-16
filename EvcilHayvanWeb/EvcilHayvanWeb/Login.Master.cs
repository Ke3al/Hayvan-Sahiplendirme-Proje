using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EvcilHayvanWeb
{
    public partial class Login : System.Web.UI.MasterPage
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbPawMateConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from tblKullanici where kullaniciMail = @kullaniciMail and sifre = @sifre",baglanti);
            komut.Parameters.AddWithValue("@kullaniciMail", txtMail.Text.ToString());
            komut.Parameters.AddWithValue("@sifre", txtSifre.Text.ToString());
            SqlDataReader oku = komut.ExecuteReader();

            if(oku.Read())
            {
                Session["kullaniciMail"] = oku["kullaniciMail"];
                Response.Redirect("~/Yonetim/Default");
            }
            else
            {
                Label1.Text = "Mail veya şifre hatalı";
            }
            oku.Close();
            baglanti.Close();
            baglanti.Dispose();

        }
    }
}