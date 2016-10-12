/**
 * Teemu Tuomela
 * H8705
 * 
 * IIO13200 .NET-ohjelmointi
 * JAMK-IT
 * 
 * Created: 18.9.2016
 */

using System;
using System.Collections.Generic;
using System.Web.UI;

public partial class index : System.Web.UI.Page
{
    // Lottovaihtoehdot DropDownListiin
    List<String> lotot = new List<string>
    {
        "Suomi",
        "Viking Lotto",
        "Eurojackpot"
    };

    protected void Page_Load(object sender, EventArgs e)
    {
        // Alustetaan DropDownList vain kerran.
        if (!Page.IsPostBack)
        {
            ddLotot.DataSource = lotot;
            ddLotot.DataBind();
        }
    }

    protected void btnArvo_Click(object sender, EventArgs e)
    {
        BLLotto Lotto = new BLLotto(ddLotot.SelectedValue);
        int rivimaara = 1;
        
        try
        {
            rivimaara = int.Parse(txtRivimaara.Text);
            lblError.Text = "";
        }
        catch
        {
            lblError.Text = "Vain numerot sallittu";
            return;
        }

        // Rajoitetaan 100 riviin ettei mennä älyttömyyksiin.
        rivimaara = Math.Min(rivimaara, 100);

        List<String> rivit = new List<string>();
        for (int i = 0; i < rivimaara; i++)
        {
            rivit.Add(Lotto.Draw());
        }

        lbRivit.DataSource = rivit;
        lbRivit.DataBind();
    }
}