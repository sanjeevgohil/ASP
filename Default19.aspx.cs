using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default19 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string unm = TextBox1.Text;
        string pass = TextBox2.Text;

        if(unm =="Abc" && pass=="123")
        {
            Session["user"] = unm;
        }
        Response.Redirect("Default20.aspx");
    }
}