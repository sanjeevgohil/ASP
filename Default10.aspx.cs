using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default10 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
        {
            string fn = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
            string SaveLocation = Server.MapPath("upload") + "\\" + fn;
            try
            {
                FileUpload1.PostedFile.SaveAs(SaveLocation);
                Label1.Text = "The file has been uploaded.";
            }
            catch (Exception ex)
            {
                Label1.Text = "Error: " + ex.Message;
            }
        }
        else
        {
            Label1.Text = "Please select a file to upload.";
        }  
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Image1.ImageUrl = "http://localhost:58854/upload/Om.jpg";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Image1.ImageUrl = "";
    }
}