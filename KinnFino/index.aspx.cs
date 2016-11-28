using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KinnFino
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Asetetaan xmldatasourcen lähde kun teatteri valitaan.
        protected void lbTeatterit_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListBox lb = sender as ListBox;

            // ListBoxin value kenttä sisältää teatterin ID:n.
            string xmlFile = "http://www.finnkino.fi/xml/Events?area=" + lb.SelectedValue;
            srcElokuvat.DataFile = xmlFile;

            myRepeater.DataSourceID = srcElokuvat.ID;
            myRepeater.DataBind();
        }
    }
}