using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string c1 = "";
        string c2 = "";
        string c3 = "";

        if(CheckBox1.Checked == true)
        {
            c1 = CheckBox1.Text;
        }
        if (CheckBox2.Checked == true)
        {
            c2 = CheckBox2.Text;
        }
        if (CheckBox3.Checked == true)
        {
            c3 = CheckBox3.Text;
        }

        Label1.Text = "You Select "+ c1 +" "+c2+" "+c3;
    }
}