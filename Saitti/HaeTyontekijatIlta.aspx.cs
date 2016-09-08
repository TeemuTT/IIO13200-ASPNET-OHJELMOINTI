using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HaeTyontekijatIlta : System.Web.UI.Page
{
    string xmlFile;

    protected void Page_Load(object sender, EventArgs e)
    {
        xmlFile = ConfigurationManager.AppSettings["tiedosto"];
        outMsg.Text = xmlFile;
    }

    protected void Hae_Click(object sender, EventArgs e)
    {
        DataSet mDataSet = new DataSet();
        DataTable mDataTable = new DataTable();
        DataView mDataView = new DataView();

        mDataSet.ReadXml(Server.MapPath(xmlFile));
        mDataTable = mDataSet.Tables[0];
        mDataView = mDataTable.DefaultView;
        mGridView.DataSource = mDataView;
        mGridView.DataBind();

        outMsg.Text = string.Format("Löytyi {0} työntekijää", mDataTable.Rows.Count);
    }
}