/**
 * Teemu Tuomela
 * H8705
 * 
 * IIO13200 .NET-ohjelmointi
 * JAMK-IT
 * 
 * Created: 6.10.2016
 */

using System;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var today = Calendar1.TodaysDate;
        labeltoday.Text = today.ToShortDateString();
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        var today = Calendar1.TodaysDate;
        var selected = Calendar1.SelectedDate;
        var difference = selected - today;
        labelChosen.Text = selected.ToShortDateString();
        labelDifference.Text = "" + difference.Days;
    }
}