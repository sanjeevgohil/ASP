using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default18 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["UserName"] != null)
            {
                string userName = Server.HtmlEncode(Request.Cookies["UserName"].Value);
                lblMessage.Text = "Welcome back, " + userName + "!";
            }
            else
            {
                lblMessage.Text = "Welcome, Guest!";
            }
        }
    }
    protected void btnSetCookie_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("UserName");
        cookie.Value = txtUserName.Text.Trim();
        cookie.Expires = DateTime.Now.AddMonths(1);
        Response.Cookies.Add(cookie);
        lblMessage.Text = "Cookie set successfully!";
    }

    protected void btnDeleteCookie_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["UserName"] != null)
        {
            Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
            lblMessage.Text = "Cookie deleted successfully!";
        }
        else
        {
            lblMessage.Text = "Cookie does not exist!";
        }
    }

}