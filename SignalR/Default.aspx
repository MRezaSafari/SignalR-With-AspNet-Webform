<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SignalR.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <h3>Log Items</h3>
    <asp:listview id="logListView" runat="server" itemplaceholderid="itemPlaceHolder" clientidmode="Static" enableviewstate="false">
        <layouttemplate>
            <ul id="logUl">
                <li runat="server" id="itemPlaceHolder"></li>
            </ul>
        </layouttemplate>
        <itemtemplate>
            <li><span class="logItem"><%#Container.DataItem.ToString() %></span></li>
        </itemtemplate>
    </asp:listview>
        
    </form>

    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/jquery.signalR-2.1.2.min.js"></script>

    <script src="signalr/hubs" type="text/javascript"></script>
    <script type="text/javascript">

        $(function () {

            var logger = $.connection.logHub;

            logger.client.logMessage = function (msg) {

                $("#logUl").append("<li>" + msg + "</li>");

            };

            $.connection.hub.start();

        });

    </script>

</body>
</html>
