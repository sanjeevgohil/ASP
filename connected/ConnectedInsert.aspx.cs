using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class ConnectedInsert : System.Web.UI.Page
{
    string x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btninsert_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(x);
        con.Open();

        string sql = "insert into stud(id,name,city) values(@id,@name,@city)";

        SqlCommand cmd = new SqlCommand(sql,con);

        cmd.Parameters.AddWithValue("@id",Convert.ToInt32(txtid.Text));
        cmd.Parameters.AddWithValue("@name", txtnm.Text);
        cmd.Parameters.AddWithValue("@city", txtcity.Text);

        int ans = cmd.ExecuteNonQuery();

        if (ans > 0)
        {
            Response.Write("Record Added....");
        }
        else
        {
            Response.Write("Record Not Added....");        
        }
        con.Close();
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtid.Text = "";
        txtnm.Text = "";
        txtcity.Text = "";
    }
}