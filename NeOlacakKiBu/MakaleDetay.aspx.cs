using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeOlacakKiBu
{
    public partial class MakaleDetay : System.Web.UI.Page
    {
        DataModel dm = new DataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.Count != 0)
            {
                int id = Convert.ToInt32(Request.QueryString["mid"]);
                dm.MakaleGoruntulemeArttir(id);
                Makale m = dm.MakaleGetir(id);
                ltrl_baslik.Text = m.Baslik;
                img_resim.ImageUrl = "Assets/MakaleResim/" + m.KapakResim;
                ltrl_goruntulemeSayi.Text = m.GoruntulemeSayi.ToString();
                ltrl_icerik.Text = m.Icerik;
                ltrl_kategori.Text = m.Kategori;
                ltrl_yazar.Text = m.Yazar;
                ltrl_ozet.Text = m.Ozet;
                
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}