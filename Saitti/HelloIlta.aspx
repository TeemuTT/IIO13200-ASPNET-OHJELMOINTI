<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HelloIlta.aspx.cs" Inherits="HelloIlta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hello</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Hello, World!</h1>
        <asp:TextBox ID="inName" runat="server" />
        <asp:Button ID="SayHello" runat="server" Text="Tervehdys" OnClick="SayHello_Click" />
        <asp:Label ID="outHello" runat="server">...</asp:Label>
    </div>
    </form>
</body>
</html>
