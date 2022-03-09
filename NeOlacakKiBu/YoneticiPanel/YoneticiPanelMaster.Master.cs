using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

namespace NeOlacakKiBu.YoneticiPanel
{
    public partial class YoneticiPanelMaster : System.Web.UI.MasterPage
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yonetici"] != null)
            {
                Yonetici y = (Yonetici)Session["yonetici"];
                lbl_kullanici.Text = y.Isim + " " + y.Soyisim + " (" + y.YoneticiTur + ")";
            }
            else
            {
                Response.Redirect("YoneticiGiris.aspx");
            }
        }

        protected void lbtn_cikis_Click(object sender, EventArgs e)
        {
            Session["yonetici"] = null;
            Response.Redirect("YoneticiGiris.aspx");
        }
    }
}