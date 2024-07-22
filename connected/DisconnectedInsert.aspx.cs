using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString;

            SqlConnection cn = new SqlConnection(x);

            SqlDataAdapter da = new SqlDataAdapter("select * from stud",cn);

            DataTable dt = new DataTable();

            da.Fill(dt);

            GridView1.DataSource = dt;

            GridView1.DataBind();
        }
    }
    protected void Insert_Click(object sender, EventArgs e)
    {
        string x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection cn = new SqlConnection(x);
        SqlDataAdapter da = new SqlDataAdapter("select * from stud", cn);

        DataTable dt = new DataTable();
        da.Fill(dt);

        DataRow dr = dt.NewRow();

        dr["id"] = txtid.Text;
        dr["name"] = txtname.Text;
        dr["city"] = txtcity.Text;

        dt.Rows.Add(dr);

        SqlCommandBuilder cb = new SqlCommandBuilder(da);

        da.Update(dt);

        GridView1.DataSource = dt;

        GridView1.DataBind();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtid.Text = "";
        txtname.Text = "";
        txtcity.Text = "";
    }
}