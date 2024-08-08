using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class ConnectedDisplay : System.Web.UI.Page
{
    string x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            ddid.Items.Clear();

            SqlConnection con = new SqlConnection(x);

            con.Open();
            string sql = "select * from stud";

            SqlCommand cmd = new SqlCommand(sql,con);

            SqlDataReader dr =  cmd.ExecuteReader();;

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    ddid.Items.Add(dr["id"].ToString());
                }
                ddid.SelectedIndex = 0;
            }
            else
            {
                Response.Write("No Record Found....");
            }
            dr.Close();
            con.Close();
        }
    }
    protected void ddid_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(x);
        con.Open();

        string sql = "select * from stud where id=@id";

        SqlCommand cmd = new SqlCommand(sql,con);

        cmd.Parameters.AddWithValue("@id",ddid.SelectedValue);

        SqlDataReader dr = cmd.ExecuteReader();

        if(dr.HasRows)
        {
            dr.Read();
            txtid.Text = dr["id"].ToString();
            txtnm.Text = dr["name"].ToString();
            txtcity.Text = dr["city"].ToString();
        }
        dr.Close();
        con.Close();
    }
}