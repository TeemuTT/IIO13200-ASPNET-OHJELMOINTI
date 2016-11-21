<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="VRJunatiedot.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList runat="server" ID="ddKaupungit" />
        <asp:Button runat="server" ID="btnHae" Text="Hae aseman junat" OnClick="btnHae_Click" />

        <asp:GridView runat="server" ID="gridViewTiedot" />
    </div>
    </form>
</body>
</html>
