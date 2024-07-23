using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_readxml_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds.ReadXml(MapPath("example.xml"));
        GridView2.DataSource = ds;
        GridView2.DataBind();
    }
    protected void btn_writedataset_Click(object sender, EventArgs e)
    {
        string x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString;

        SqlConnection con = new SqlConnection(x);
        SqlDataAdapter da = new SqlDataAdapter("select * from info",x);

        DataSet ds = new DataSet();
        da.Fill(ds);

        ds.WriteXml(MapPath("info.xml"));

        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}