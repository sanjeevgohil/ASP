﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_checkprime_Click(object sender, EventArgs e)
    {
        WebService ws = new WebService();

        int number = Convert.ToInt32(txtnumber.Text);
        bool ans = ws.Prime(number);

        if(ans == true)
        {
            lbl_prime.Text = number.ToString() + " is Prime Number";
        }
        else
        {
            lbl_prime.Text = number.ToString() + " is Not Prime Number";
        }
    }
}