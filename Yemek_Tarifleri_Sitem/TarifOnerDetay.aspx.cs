using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifleri_Sitem
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];
            SqlCommand komut = new SqlCommand("select * from tbl_tarifler where Tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextTarifAd.Text = dr[1].ToString();
                TextMalzeme.Text = dr[2].ToString();
                TextYapilis.Text = dr[3].ToString();
                TextOneren.Text = dr[5].ToString();
                TextMail.Text = dr[6].ToString();
            }
            bgl.baglanti().Close();
        }
    }
}