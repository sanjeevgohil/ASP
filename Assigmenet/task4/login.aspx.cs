using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class registration : System.Web.UI.Page
{

    string x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["name"] = TextBox1.Text;


        SqlConnection con = new SqlConnection(x);
        con.Open();

        string sql = "SELECT * FROM bca WHERE name=@name AND password=@password";

        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@password", TextBox2.Text);

        int ans = Convert.ToInt32(cmd.ExecuteScalar());

        if (ans > 0)
        {
            Response.Redirect("welcome.aspx");
        }
        con.Close();
              
    }
}