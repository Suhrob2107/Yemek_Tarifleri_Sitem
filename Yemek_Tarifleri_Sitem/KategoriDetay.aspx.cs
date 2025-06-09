using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifleri_Sitem
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlsinif snf = new sqlsinif();
        string kategoryid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoryid = Request.QueryString["Kategoryid"];
            SqlCommand komut = new SqlCommand("select * from tbl_yemekler where kategoryid=@p1", snf.baglanti());
            komut.Parameters.AddWithValue("@p1",kategoryid);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}