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

            if(Page.IsPostBack == false)
            {
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

                //Kategori listesi
                SqlCommand komut2 = new SqlCommand("select * from tbl_kategoriler",bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoryAd";
                DropDownList1.DataValueField = "Kategoryid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
            
        }

        protected void ButtonOnay_Click(object sender, EventArgs e)
        {
            //Durum Guncelleme
            SqlCommand komut = new SqlCommand("update tbl_tarifler set tarifdurum=1 where tarifid=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Yemegi ana sayfaya ekleme
            SqlCommand komut2 = new SqlCommand("insert into tbl_yemekler (YemakAd,YemekMalzeme,YemekTarif,Kategoryid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",TextTarifAd.Text);
            komut2.Parameters.AddWithValue("@p2",TextMalzeme.Text);
            komut2.Parameters.AddWithValue("@p3",TextYapilis.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}