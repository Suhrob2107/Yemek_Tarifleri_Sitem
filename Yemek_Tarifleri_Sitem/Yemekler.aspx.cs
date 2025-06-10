using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            if(Page.IsPostBack == false)
            {
                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];


                //Kategori listesi

                SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoryAd";
                DropDownList1.DataValueField = "KategoryID";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }

            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemekler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();


            if(islem == "sil")
            {
                SqlCommand komut3 = new SqlCommand("DELETE FROM Tbl_Yemekler WHERE Yemekid=@p1", bgl.baglanti());
                komut3.Parameters.AddWithValue("@p1", id);
                komut3.ExecuteNonQuery();
                bgl.baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void BtnEkle0_Click(object sender, EventArgs e)
        {

            // Ekleme işlemi
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Yemekler (YemakAd, YemekMalzeme, YemekTarif,Kategoryid) VALUES (@p1, @p2, @p3, @p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Kategori sayisini arttirma

            SqlCommand komut2 = new SqlCommand("UPDATE Tbl_Kategoriler SET KategoryAdet = KategoryAdet + 1 WHERE KategoryID = @p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}