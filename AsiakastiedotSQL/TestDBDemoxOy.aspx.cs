using JAMK.IT;
using System;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable mDataTable = DBDemoxOy.GetDataReal();
            GridView1.DataSource = mDataTable;
            GridView1.DataBind();
        }
    }
}