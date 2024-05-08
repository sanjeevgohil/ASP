using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string l1 = ListBox1.SelectedValue.ToString();

        Label1.Text = "You Select "+l1;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string nm = "";
        foreach(ListItem itemnm in ListBox2.Items)
        {
            if(itemnm.Selected)
            {
                nm = nm+""+itemnm.Text+",";
            }
        }

        Label2.Text = "You Select "+nm;
    }
}