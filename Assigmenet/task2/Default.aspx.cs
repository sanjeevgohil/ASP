using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{
    string x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(x);
        con.Open();

        string sql = "insert into feedback(name,mno,confirmmno,email,age) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";

        SqlCommand cmd = new SqlCommand(sql, con);

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
}