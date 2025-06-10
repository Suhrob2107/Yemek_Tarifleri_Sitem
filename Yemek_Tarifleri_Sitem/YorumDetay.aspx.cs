using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["yorumid"];

            if(Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select YorumAdSoyad,YorumMail,YorumIcerik,YemakAd from Tbl_Yorumlar inner join tbl_yemekler on tbl_yorumlar.yemekid = tbl_yemekler.yemekid where yorumid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextAd.Text = dr[0].ToString();
                    TextAddress.Text = dr[1].ToString();
                    TextIcerik.Text = dr[2].ToString();
                    TextYemek.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void ButtonOnay_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Yorumlar set YorumIcerik=@p1,YorumOnay=@p2 where yorumid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextIcerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}