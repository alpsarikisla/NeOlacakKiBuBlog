using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeOlacakKiBu.YoneticiPanel
{
    public partial class KategoriListeleList : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            lv_kategoriler.DataSource = dm.KategoriListele();
            lv_kategoriler.DataBind();
        }

        protected void lv_kategoriler_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "sil")
            {
                dm.KategoriSil(id);
            }
            if (e.CommandName == "durum")
            {
                dm.KategoriDurumDegistir(id);
            }
            lv_kategoriler.DataSource = dm.KategoriListele();
            lv_kategoriler.DataBind();
        }
    }
}