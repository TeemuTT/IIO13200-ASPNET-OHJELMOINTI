<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AsiakastiedotEntityFramework.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <%-- Header --%>
    <div>
        <asp:Button runat="server" Text="Lataa kaikki asiakkaat" OnClick="Unnamed1_Click" />
        <asp:DropDownList runat="server" ID="ddMaat"/>
        <asp:Button runat="server" Text="Hae asiakkaat valitusta maasta" OnClick="Unnamed2_Click" />
        <asp:Button runat="server" Text="Hae asiakkaat maittain" OnClick="Unnamed3_Click" /> 
    </div>

    <%-- Content --%>
    <div>
        <asp:GridView runat="server" ID="gridView" />
    </div>
    </form>
</body>
</html>
