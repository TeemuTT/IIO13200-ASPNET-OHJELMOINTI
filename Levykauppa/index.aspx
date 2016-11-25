<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Levykauppa.WebForm1" %>

<%-- Tämä menee <head> osaan. Tyylit tänne. --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        img {
            float: left;
            display: inline;
            width: 128px;
            height: auto;
        }
        .info-block {
            padding-left: 1em;
            float: left;
        }
        .info-block span {
            display: block;
        }
        h1 {
            font-size: x-large;
        }
        td {
            padding-bottom: 1em;
        }
    </style>
</asp:Content>

<%-- Varsinainen sisältö. --%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- Levytiedoston sijainti web.configissa --%>
    <asp:XmlDataSource ID="srcLevyt" runat="server" DataFile='<%$ AppSettings:levytiedosto %>' XPath="//record" />

    <asp:DataList runat="server" ID="dlLevy" DataSourceID="srcLevyt">
        <ItemTemplate>
            <asp:Image ImageUrl='<%# "~/Images/" +  Eval("ISBN") + ".jpg" %>' runat="server" />
            <div class="info-block">
                <asp:HyperLink runat="server" NavigateUrl='<%# Eval("ISBN", "tuotteet.aspx?isbn={0}") %>' >
                    <h1><%# Eval("Artist") + " : " + Eval("Title") %></h1>
                </asp:HyperLink>
                <asp:Label Text='<%# "ISBN: " + Eval("ISBN") %>' runat="server" />
                <asp:Label Text='<%# "Price: " + Eval("Price") %>' runat="server" />
            </div>
        </ItemTemplate>
    </asp:DataList>

</asp:Content>
