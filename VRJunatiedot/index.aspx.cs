using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net;

namespace VRJunatiedot
{
    public partial class index : System.Web.UI.Page
    {
        private static List<Asema> asemat;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (WebClient client = new WebClient())
                {
                    var json = client.DownloadString("http://rata.digitraffic.fi/api/v1/metadata/stations");
                    asemat = JsonConvert.DeserializeObject<List<Asema>>(json);
                    ddKaupungit.DataSource = asemat;
                    ddKaupungit.DataBind();
                }
            }
        }

        private void haeJunat(string stationCode)
        {
            using (WebClient client = new WebClient())
            {
                var json = client.DownloadString("http://rata.digitraffic.fi/api/v1/live-trains?station=" + stationCode);
                List<Junatiedot> tiedot = JsonConvert.DeserializeObject<List<Junatiedot>>(json);
                gridViewTiedot.DataSource = tiedot;
                gridViewTiedot.DataBind();
            }
        }

        protected void btnHae_Click(object sender, EventArgs e)
        {
            foreach (var asema in asemat)
            {
                if (asema.stationName == ddKaupungit.SelectedValue)
                {
                    haeJunat(asema.stationShortCode);
                }
            }
        }
    }
}