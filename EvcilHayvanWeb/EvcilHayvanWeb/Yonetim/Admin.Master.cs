using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvcilHayvanWeb.Yonetim
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullaniciMail"] == null)
            {
                Response.Redirect("~/Login");
            }
            else
            {
                lblMail1.Text = Session["kullaniciMail"].ToString();
                lblMail2.Text = Session["kullaniciMail"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("kullaniciMail");
            Session.Abandon();
            Response.Redirect("~/Login");
        }
    }
}