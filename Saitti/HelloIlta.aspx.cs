﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HelloIlta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SayHello_Click(object sender, EventArgs e)
    {
        outHello.Text = string.Format("Hello, {0}!", inName.Text);
    }
}