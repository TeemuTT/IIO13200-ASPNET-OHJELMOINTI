<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HaeTyontekijatIlta.aspx.cs" Inherits="HaeTyontekijatIlta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>No title</title>
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="nappulat">
        <asp:Button ID="Hae" runat="server" Text="Hae työntekijät" OnClick="Hae_Click" Class="w3-btn w3-amber" />
    </div>
    <div id="esitys">
        <asp:GridView ID="mGridView" runat="server" />
    </div>
    <div id="footer" >
        <asp:Label ID="outMsg" runat="server" Text="" />
    </div>
    </form>
</body>
</html>
