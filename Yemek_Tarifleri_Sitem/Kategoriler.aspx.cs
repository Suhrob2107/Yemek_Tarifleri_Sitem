using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                id = Request.QueryString["kategoryid"];
                islem = Request.QueryString["islem"];
            }

            SqlCommand komut = new SqlCommand("select * from Tbl_kategoriler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();   //ustteki sorguyu oku
            DataList1.DataSource = dr;
            DataList1.DataBind();  // islemi gerceklestir


            //silme islemi
            if(islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("delete from tbl_kategoriler where kategoryid=@p1",bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }

            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible=false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("Insert into Tbl_Kategoriler (Kategoryad) values (@p1)", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}