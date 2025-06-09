using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifleri_Sitem
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id=Request.QueryString["Kategoryid"];

            if(Page.IsPostBack ==  false)
            {
                SqlCommand komut = new SqlCommand("select * from Tbl_kategoriler where kategoryid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                }
                bgl.baglanti().Close();
            }           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("update Tbl_kategoriler set kategoryad=@p1,KategoryAdet=@p2 where kategoryid=@p3", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut2.Parameters.AddWithValue("@p3", id);
            komut2.ExecuteNonQuery(); // komutumuzu calistir
            bgl.baglanti().Close();
        }
    }
}