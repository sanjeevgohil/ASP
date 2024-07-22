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
    string x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadFreshData();
        }
    }

    void LoadFreshData()
    {
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

        ShowData();
    }

    void ShowData()
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

    protected void ddid_SelectedIndexChanged(object sender, EventArgs e)
    {
        ShowData();
    }

    protected void updbtn_Click(object sender, EventArgs e)
    {
        string filter = "id='" + txtid.Text + "'";
        DataRow[] dr = dt.Select(filter);
        if (dr.Length > 0)
        {
            dr[0]["name"] = txtnm.Text;
            dr[0]["city"] = txtcity.Text;
        }

        UpdateDatabase();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Deletebtn_Click(object sender, EventArgs e)
    {
        string filter = "id='" + txtid.Text + "'";
        DataRow[] dr = dt.Select(filter);
        if (dr.Length > 0)
        {
            dr[0].Delete();
        }

        UpdateDatabase();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    void UpdateDatabase()
    {
        using (SqlConnection cn = new SqlConnection(x))
        {
            // Define UpdateCommand, InsertCommand, and DeleteCommand
            SqlCommand updateCmd = new SqlCommand("UPDATE stud SET name = @name, city = @city WHERE id = @id", cn);
            updateCmd.Parameters.Add("@name", SqlDbType.VarChar, 50, "name");
            updateCmd.Parameters.Add("@city", SqlDbType.VarChar, 50, "city");
            updateCmd.Parameters.Add("@id", SqlDbType.Int, 4, "id");

           /* SqlCommand insertCmd = new SqlCommand("INSERT INTO stud (name, city) VALUES (@name, @city)", cn);
            insertCmd.Parameters.Add("@name", SqlDbType.VarChar, 50, "name");
            insertCmd.Parameters.Add("@city", SqlDbType.VarChar, 50, "city");*/

            SqlCommand deleteCmd = new SqlCommand("DELETE FROM stud WHERE id = @id", cn);
            deleteCmd.Parameters.Add("@id", SqlDbType.Int, 4, "id");

            // Set the commands to the SqlDataAdapter
            da.UpdateCommand = updateCmd;
            //da.InsertCommand = insertCmd;
            da.DeleteCommand = deleteCmd;

            // Update the database with changes in the DataTable
            da.Update(dt);

            // Refresh DataTable with updated data from the database
            dt.Clear();
            da.Fill(dt);
        }

        // Reload fresh data into controls
        LoadFreshData();
    }

}