using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class DisconnectedDisplay : System.Web.UI.Page
{
    static DataTable dt;
    static SqlConnection con;
    static SqlDataAdapter da;

    string x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            con = new SqlConnection(x);

            da = new SqlDataAdapter("select * from stud",con);

            dt = new DataTable();

            da.Fill(dt);
            
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string filter = "id='" + ddid.SelectedValue + "'";

        DataRow[] dr = dt.Select(filter);
        if (dr.Length > 0)
        {
            txtid.Text = dr[0]["id"].ToString();
            txtnm.Text = dr[0]["name"].ToString();
            txtcity.Text = dr[0]["city"].ToString();
        }
    }
}