using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace EvcilHayvanWeb
{
    public partial class Anasayfa : System.Web.UI.MasterPage
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbPawMateConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);

            baglanti.Open();
            SqlCommand komut = new SqlCommand("INSERT INTO tblIletisim(gonderenAd, gonderenMail, gonderenMesaj) VALUES (@gonderenAd, @gonderenMail, @gonderenMesaj)", baglanti);
            komut.Parameters.AddWithValue("@gonderenAd", txtAd.Text.ToString());
            komut.Parameters.AddWithValue("@gonderenMail", txtemail.Text.ToString());
            komut.Parameters.AddWithValue("@gonderenMesaj", txtmesaj.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();

            Response.Redirect("Default.aspx");

        }
    }
}