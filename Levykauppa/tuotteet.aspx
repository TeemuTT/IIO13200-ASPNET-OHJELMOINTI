<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="tuotteet.aspx.cs" Inherits="Levykauppa.WebForm2" %>

<%-- Tämä menee <head> osaan. Tyylit tänne. --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .info-block span {
            display: block;
        }
        .info-block span:first-child {
            font-size: x-large;
            font-weight: bold;
        }
    </style>
</asp:Content>

<%-- Varsinainen sisältö. --%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- Levytiedoston sijainti web.configissa --%>
    <asp:XmlDataSource ID="srcLevy" runat="server" DataFile='<%$ AppSettings:levytiedosto %>' />
    <asp:XmlDataSource ID="srcKappaleet" runat="server" DataFile='<%$ AppSettings:levytiedosto %>' />

    <asp:DataList runat="server" ID="dlLevy">
        <ItemTemplate>
            <asp:Image ImageUrl='<%# "~/Images/" +  Eval("ISBN") + ".jpg" %>' runat="server" />
            <div class="info-block">
                <asp:Label Text='<%# Eval("Artist") + " " + Eval("Title") %>' runat="server" />
                <asp:Label Text='<%# "ISBN: " + Eval("ISBN") %>' runat="server" />
                <asp:Label Text='<%# "Hinta: " + Eval("Price") %>' runat="server" />
            </div>
        </ItemTemplate>
    </asp:DataList>

    <h2>Kappaleet:</h2>
    <asp:DataList runat="server" ID="dlKappaleet">
        <ItemTemplate>
                <asp:Label Text='<%# Eval("name") %>' runat="server" />
            </div>
        </ItemTemplate>
    </asp:DataList>

    <asp:HyperLink runat="server" Text="<< Takaisin" NavigateUrl="~/index.aspx" />

</asp:Content>
