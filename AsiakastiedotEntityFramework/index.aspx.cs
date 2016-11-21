using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace AsiakastiedotEntityFramework
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (var db = new DemoxOyEntities())
                {
                    var query = from t in db.asiakas
                                select t.maa;

                    // Valitaan uniikit maat DropDownListiin.
                    ddMaat.DataSource = query.Distinct().ToList();
                    ddMaat.DataBind();
                }
            }
        }

        private void loadAllCustomers()
        {
            using (var db = new DemoxOyEntities())
            {
                var query = from a in db.asiakas
                            select a;

                gridView.DataSource = query.ToList();
                gridView.DataBind();
            }
        }

        private void loadFromCountry(String country)
        {
            using (var db = new DemoxOyEntities())
            {
                var query = from a in db.asiakas
                            where a.maa == country
                            select a;

                gridView.DataSource = query.ToList();
                gridView.DataBind();
            }
        }

        private void groupByCountry(string country)
        {
            using (var db = new DemoxOyEntities())
            {
                var query = from a in db.asiakas
                            orderby a.maa
                            select a;

                gridView.DataSource = query.ToList();
                gridView.DataBind();
            }
        }

        // Kaikki.
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            loadAllCustomers();
        }

        // Valitusta maasta.
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            loadFromCountry(ddMaat.SelectedValue);
        }

        // Lajiteltuna maittain.
        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            groupByCountry(ddMaat.SelectedValue);
        }
    }
}