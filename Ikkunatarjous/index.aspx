<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ikkunatarjous</title>
    <style>
        div {
            display: block;
        }
        .myspan {
            display: block;
        }
        input[type=submit] {
            margin: 10px 0px 10px 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Ikkunalaskuri</h1>
        <h2>Ikkunan dimensiot:</h2>
        <table>
            <thead></thead>
            <tbody>
                <tr>
                    <td>
                        <label for="txtLeveys">Leveys(L):</label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtLeveys"></asp:TextBox>mm
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="txtKorkeus">Korkeus(H):</label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtKorkeus"></asp:TextBox>mm
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="txtKarmi">Karmipuun Leveys(W):</label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtKarmi"></asp:TextBox>mm
                    </td>
                </tr>
            </tbody>
        </table>

        <asp:Button runat="server" ID="btnLaske" Text="Laske tarjoushinta" OnClick="btnLaske_Click" />
        <hr />

        <table>
            <thead></thead>
            <tbody>
                <tr>
                    <td>
                        <label>Ikkunan pinta-ala:</label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="lblPinta" Text="" CssClass="myspan"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Karmin piiri:</label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="lblPiiri" Text="" CssClass="myspan"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Tarjoushinta (ilman ALV):</label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="lblHinta" Text="" CssClass="myspan"></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>

    </div>
    </form>
</body>
</html>
