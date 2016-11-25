using System;
using System.Configuration;

namespace Levykauppa
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // ISBN URL-parametristä.
            string ISBN = Request.QueryString["isbn"];

            // XmlDataSource levyn tiedoille.
            srcLevy.XPath = string.Format("//record[@ISBN='{0}']", ISBN);
            dlLevy.DataSource = srcLevy;
            dlLevy.DataBind();

            // XmlDataSource levyn kappaleille.
            srcKappaleet.XPath = string.Format("//record[@ISBN='{0}']/song", ISBN);
            dlKappaleet.DataSource = srcKappaleet;
            dlKappaleet.DataBind();
        }
    }
}