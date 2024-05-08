using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string r1 = "";
        string r2 = "";

        if(RadioButton1.Checked == true)
        {
            r1 = RadioButton1.Text;
        }
        if (RadioButton2.Checked == true)
        {
            r2 = RadioButton2.Text;
        }

        Label1.Text = "You Select " + r1 + " " + r2;
    }
}