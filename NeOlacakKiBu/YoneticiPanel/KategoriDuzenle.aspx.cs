using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeOlacakKiBu.YoneticiPanel
{
    public partial class KategoriDuzenle : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.Count != 0)
            {
                if (!IsPostBack)
                {
                    int id = Convert.ToInt32(Request.QueryString["kid"]);
                    Kategori k = dm.KategoriGetir(id);
                    tb_isim.Text = k.Isim;
                    cb_durum.Checked = k.Durum;
                }
            }
            else
            {
                Response.Redirect("KategoriListeleList.aspx");
            }
        }

        protected void lbtn_duzenle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["kid"]);
            Kategori k = new Kategori();
            k.ID = id;
            k.Isim = tb_isim.Text;
            k.Durum = cb_durum.Checked;

            if (dm.KategoriDuzenle(k))
            {
                pnl_basarili.Visible = true;
                pnl_basarisiz.Visible = false;
            }
            else
            {
                pnl_basarili.Visible =false;
                pnl_basarisiz.Visible = true;
                lbl_mesaj.Text = "Kategori güncellenirken bir hata oluştu";
            }
        }
    }
}