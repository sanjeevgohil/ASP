using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        string cn = WebConfigurationManager.ConnectionStrings["cn"].ToString();
        SqlConnection con = new SqlConnection(cn);
        con.Open();

        SqlCommand cmd = new SqlCommand("Insert into search(name) values('"+txtCity.Text+"')",con);
      
        cmd.ExecuteNonQuery();

        txtCity.Text = "";
        con.Close();
    }
}