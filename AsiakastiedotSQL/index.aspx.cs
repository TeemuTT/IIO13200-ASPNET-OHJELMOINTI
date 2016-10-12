using JAMK.IT;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            //DataTable mDataTable = DBDemoxOy.GetDataReal();
            DataTable mDataTable = DBDemoxOy.GetDataSimple();
            GridView1.DataSource = mDataTable;
            GridView1.DataBind();
        }
    }
}