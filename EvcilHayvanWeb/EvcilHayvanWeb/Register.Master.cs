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
    public partial class Register : System.Web.UI.MasterPage
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbPawMateConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);

            baglanti.Open();
            SqlCommand komut = new SqlCommand("INSERT INTO tblKullanici (KullaniciMail, sifre) VALUES (@kullaniciMail, @sifre)", baglanti);



            if (txtSifreKayit.Text == txtSifreKayitTekrar.Text)
            {
                komut.Parameters.AddWithValue("@kullaniciMail", txtMailKayit.Text.ToString());
                komut.Parameters.AddWithValue("@sifre", txtSifreKayit.Text.ToString());
                komut.ExecuteNonQuery();
                baglanti.Close();
                Response.Redirect("Login.aspx");
            }
            else
            {
                Label1.Text = "Şifreler aynı olmalıdır.";
                Response.Redirect("Register.aspx");
            }



        }
    }
}