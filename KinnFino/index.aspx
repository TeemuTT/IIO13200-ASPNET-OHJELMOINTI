<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KinnFino.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KinnFino</title>
    <style>
        * {
            font-family: 'Lucida Sans';
        }

        body {
            background-color: #c3dee8;
        }

        .header, .footer {
            background-color: cadetblue;
            text-align: center;
            display: block;
            font-size: x-large;
            padding: 1em;
            clear: both;
        }

        .list-teatterit {
            margin: 10px;
            float: left;
        }

        .movie-container {
            background-color: #fff;
            box-shadow: #808080 0px 0px 15px;
            position: relative;
            margin: 10px;
            float: left;
            width: 1080px;
            border-radius: 4px;
        }

        .movie {
            height: 250px;
            padding: 15px;
            float: left;
            width: 150px;
        }

        .movie img {
            margin-top: 5px;
            width: 128px;
            height: auto;
            display: block;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="header">
            KinnFino
        </div>

        <div class="content">
            <%-- XmlDataSource teattereille. --%>
            <%-- TransformFilellä muutetaan Xml:än nodet attribuuteiksi jotta ne on helppo lukea ListBoxissa. --%>
            <asp:XmlDataSource runat="server" ID="srcTeatterit"
                DataFile="http://www.finnkino.fi/xml/TheatreAreas/"
                XPath="/TheatreAreas/TheatreArea"
                TransformFile="xslsheet.xslt" />

            <%-- XmlDataSource tietyn teatterin näytöksille. Tiedostosijainti annetaan code-behindissa tapahtumankäsittelijässä. --%>
            <%-- Transformfilellä muutetaan xml nodet attribuuteiksi. --%>
            <asp:XmlDataSource runat="server" ID="srcElokuvat"
                XPath="/Events/Event"
                TransformFile="xslelokuvat.xslt" />

            <asp:ListBox CssClass="list-teatterit" AutoPostBack="true" ID="lbTeatterit" Height="380" runat="server"
                DataSourceID="srcTeatterit"
                DataTextField="Name"
                DataValueField="ID"
                OnSelectedIndexChanged="lbTeatterit_SelectedIndexChanged" />

            <%-- Repeaterillä piirretään näytösten kuvat ja nimet. --%>
            <asp:Repeater ID="myRepeater" runat="server">
                <HeaderTemplate>
                    <div class="movie-container">
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="movie">
                        <asp:Label Text='<%# Eval("Title") %>' runat="server" />
                        <asp:Image ImageUrl='<%# Eval("MediumImage") %>' runat="server" AlternateText="Ei kuvaa." />
                    </div>
                </ItemTemplate>
                <FooterTemplate>
                    </div>
                </FooterTemplate>
            </asp:Repeater>
        </div>

        <div class="footer">
            Teemu Tuomela H8705
        </div>

    </div>
    </form>
</body>
</html>
