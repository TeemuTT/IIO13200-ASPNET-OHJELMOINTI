<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TestDBDemoxOy.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .header, .main, .footer {
            font-family: Tahoma;
            text-align: center;
            padding: 1em 0px 1em 0px;
        }

        .header {
            background-color: #009688;
            color: white;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .main {
            background-color: #cceae7;
        }

        .main table {
            margin: auto;
        }

        .footer {
            background-color: #66c0b7;
            color: white;
            font-size: small;
            padding: 2em 0px 1em 0px;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" Runat="Server">
    <h1>AsiakastiedotSQL - DBDemoxOy luokalla</h1>
    <asp:hyperlink runat="server" navigateurl="~/index.aspx" text="Käytä SqlDataSource-luokkaa" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" Runat="Server">
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" Runat="Server">
    Teemu Tuomela 2016
</asp:Content>

