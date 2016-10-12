<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lotto</title>
    <style>
        body {
            font-family: Tahoma;
        }
        input[type=submit] {
            margin: 10px 0px 10px 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Lotto</h1>
            <table>
                <thead></thead>
                <tbody>
                    <tr>
                        <td>
                            <label>Loton tyyppi:</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddLotot" runat="server"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Rivimäärä (max 100):</label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtRivimaara" Text="1"></asp:TextBox>
                            <asp:Label runat="server" ID="lblError"></asp:Label>
                        </td>
                    </tr>
                </tbody>
            </table>

            <asp:Button runat="server" ID="btnArvo" Text="Arvo rivit" OnClick="btnArvo_Click" />
            <hr />
            <asp:ListBox ID="lbRivit" runat="server" Rows="10" Width="250px"></asp:ListBox>

        </div>
    </form>
</body>
</html>
