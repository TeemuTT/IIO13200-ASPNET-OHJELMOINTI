/**
 * Teemu Tuomela
 * H8705
 * 
 * IIO13200 .NET-ohjelmointi
 * JAMK-IT
 * 
 * 18.9.2016
 */

using System;
using System.Configuration;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLaske_Click(object sender, EventArgs e)
    {
        double kate = double.Parse(ConfigurationManager.AppSettings["kate"]) / 100;
        double neliohinta = double.Parse(ConfigurationManager.AppSettings["neliohinta"]); ;
        double karmihinta = double.Parse(ConfigurationManager.AppSettings["karmihinta"]); ;
        double tyomenekki = double.Parse(ConfigurationManager.AppSettings["tyomenekki"]); ;

        double leveys = double.Parse(txtLeveys.Text) / 1e3;
        double korkeus = double.Parse(txtKorkeus.Text) / 1e3;
        double karminleveys = double.Parse(txtKarmi.Text) / 1e3;

        double ala = leveys * korkeus;
        double piiri = 2 * (leveys + karminleveys) + 2 * (korkeus - karminleveys);
        double hinta = (1 + kate) * ((ala * neliohinta) + (piiri * karmihinta) + tyomenekki);

        lblPinta.Text += ala + " m2";
        lblPiiri.Text += piiri + " m";
        lblHinta.Text += hinta + " €";
    }
}