using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default13 : System.Web.UI.Page
{
    private void summarydata()
    {
        lbl_fname.Text = txt_fname.Text;
        lbl_lname.Text = txt_lname.Text;
        if (rbt_male.Checked)
        {
            lbl_gen.Text = rbt_male.Text;
        }
        else
        {
            lbl_gen.Text = rbt_female.Text;
        }
        lbl_course.Text = txt_course.Text;
        lbl_dept.Text = ddl_dept.SelectedItem.Text;
        lbl_mob.Text = txt_mob.Text;
        lbl_email.Text = txt_email.Text;
        lbl_city.Text = txt_city.Text;
        lbl_country.Text = ddl_country.SelectedItem.Text;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Wizard1.ActiveStepIndex = 0;
            summarydata();
        }
    }
    protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
    {
        if (e.NextStepIndex == 4)
        {
            summarydata();
        }
    }
}