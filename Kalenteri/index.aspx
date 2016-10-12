<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kalenteri</title>
    <style>
        body {
            font-family: Tahoma;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <h1>Kalenteri</h1>

        <table>
            <thead></thead>
            <tbody>
                <tr>
                    <td>
                        <label>Tänään on:</label>
                    </td>
                    <td>
                        <asp:Label ID="labeltoday" Text="" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Valittu päivä:</label>
                    </td>
                    <td>
                        <asp:Label ID="labelChosen" Text="" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Päivien erotus:</label>
                    </td>
                    <td>
                        <asp:Label ID="labelDifference" Text="" runat="server"></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>

        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>

    </form>
</body>
</html>
