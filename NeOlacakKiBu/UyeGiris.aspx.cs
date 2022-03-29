using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeOlacakKiBu
{
    public partial class UyeGiris : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {
            Uye u = dm.UyeGiris(tb_mail.Text, tb_sifre.Text);
            if (u != null)
            {
                if (u.Durum == true)
                {
                    Session["uye"] = u;
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    pnl_hata.Visible = true;
                    lbl_mesaj.Text = "Hesabınız Sistem Yöneticisi tarafından askıya alındı";
                }
            }
            else
            {
                pnl_hata.Visible = true;
                lbl_mesaj.Text = "Kullanıcı Bulunamadı. Email veya Şİfre Hatalı";
;
            }
        }
    }
}