using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeOlacakKiBu.YoneticiPanel
{
    public partial class YoneticiGiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(tb_mail.Text))
            {
                if (!string.IsNullOrEmpty(tb_sifre.Text))
                {
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    lbl_mesaj.Text = "Şifre Boş Bırakılamaz";
                    pnl_hata.Visible = true;
                }
            }
            else
            {
                lbl_mesaj.Text = "Mail Boş Bırakılamaz";
                pnl_hata.Visible = true;
            }

        }
    }
}