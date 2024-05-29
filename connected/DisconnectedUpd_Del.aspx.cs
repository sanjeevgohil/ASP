using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    static SqlConnection cn;
    static SqlDataAdapter da;
    static DataTable dt;
    void LoadFreshData()
    {
        string x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString;

        cn = new SqlConnection(x);

        da = new SqlDataAdapter("select * from stud", cn);

        dt = new DataTable();

        da.Fill(dt);

        ddid.Items.Clear();

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            ddid.Items.Add(dt.Rows[i]["id"].ToString());
        }
        ddid.SelectedIndex = 0;

        txtid.Text = dt.Rows[0]["id"].ToString();
        txtnm.Text = dt.Rows[0]["name"].ToString();
        txtcity.Text = dt.Rows[0]["city"].ToString();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            LoadFreshData();
        }
    }
    protected void ddid_SelectedIndexChanged(object sender, EventArgs e)
    {
        string filter = "id='" + ddid.SelectedValue+"'";

        DataRow[] dr = dt.Select(filter);
        if (dr.Length > 0)
        {
            txtid.Text = dr[0]["id"].ToString();
            txtnm.Text = dr[0]["name"].ToString();
            txtcity.Text = dr[0]["city"].ToString();
        }
    }
    protected void updbtn_Click(object sender, EventArgs e)
    {
        string filter = "id=" +txtid.Text;

        DataRow[] dr = dt.Select(filter);
        if (dr.Length > 0)
        {
            dr[0].BeginEdit();
            dr[0]["name"] = txtnm.Text;
            dr[0]["city"] = txtcity.Text;
            dr[0].EndEdit();
        }
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        da.Update(dr);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Deletebtn_Click(object sender, EventArgs e)
    {
        string filter = "id=" + txtid.Text;

        DataRow[] dr = dt.Select(filter);
        dr[0].Delete();
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        da.Update(dr);
        LoadFreshData();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}