using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

namespace NeOlacakKiBu
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uye"] != null)
            {
                Uye u = (Uye)Session["uye"];
                ltrl_kullanici.Text = u.KullaniciAdi;
                img_kullanici.ImageUrl = "Assets/UyeResim/abdullah.jpg";
                pnl_girisVar.Visible = true;
                pnl_girisYok.Visible = false;
            }
            else
            {
                pnl_girisVar.Visible = false;
                pnl_girisYok.Visible = true;
            }

            rp_kategoriler.DataSource = dm.KategoriListele(true);
            rp_kategoriler.DataBind();
        }
    }
}