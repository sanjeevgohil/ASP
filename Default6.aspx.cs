using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cl1 = "";

        foreach(ListItem itemnm in CheckBoxList1.Items)
        {
            if (itemnm.Selected)
            {
                cl1 = cl1 + "" + itemnm.Text + ",";
            }
        }
        Label2.Text = cl1;
    }
}