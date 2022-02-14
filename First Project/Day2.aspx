<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Day2.aspx.cs" Inherits="Day2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="DarshanLogo" runat="server" style="height: 100px" ImageUrl="~/Images/Du-1.jpg" AlternateText="Darshan University" ToolTip="Darshan Image"/>
        <br /> <br />

        <asp:HyperLink runat="server" ID="HomePage" NavigateUrl="~/HomePage.aspx" Target="_blank" ToolTip="This is The Demoinstration Of Hyper Link Control">Home Page</asp:HyperLink>
    </div>
    </form>
</body>
</html>
