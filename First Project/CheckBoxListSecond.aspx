<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckBoxListSecond.aspx.cs" Inherits="CheckBoxListSecond" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="">
    <form id="form1" runat="server">
    <div style="background-color:aliceblue; font-family:'Berlin Sans FB'" align="center">
        <h1>Check Box</h1>
    </div>
    <div>
        <br />
        <asp:CheckBox ID="chkDIET" runat="server" AutoPostBack="True" Text="DIET" />
        <br />
        <asp:CheckBox ID="chkDIETDS" runat="server" AutoPostBack="True"  Text="DIETDS" />
        <br />
        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
        <br />
        <asp:Label ID="lblSave" runat="server"></asp:Label>
    
    </div>
        <div>
            <br />
            <asp:CheckBox ID="chkSelectAll" runat="server" Text="Select All" AutoPostBack="True" OnCheckedChanged="chkSelectAll_CheckedChanged" />
            &nbsp;<asp:CheckBox ID="chkClearAll" runat="server" Text="Clear All" AutoPostBack="True" OnCheckedChanged="chkClearAll_CheckedChanged" />
            &nbsp;
            <br />
            <br />
            <asp:CheckBox ID="chkCE" runat="server" AutoPostBack="True" Text="Computer Engneering In Degree" />
            <br />
            <asp:CheckBox ID="chkCI" runat="server" AutoPostBack="True" Text="Civil Engneering In Degree" />
            <br />
            <asp:CheckBox ID="chkME" runat="server" AutoPostBack="True" Text="Mechanical Engneering In Degree" />
            <br />
            <asp:CheckBox ID="chkEE" runat="server" AutoPostBack="True" Text="Elecctricle Engneering In Degree" />
            <br />
            <br />
            <asp:CheckBox ID="chkCEDS" runat="server" AutoPostBack="True" Text="Computer Engneering In Diploma" />
            <br />
            <asp:CheckBox ID="chkCIDS" runat="server" AutoPostBack="True" Text="Civil Engneering In Diploma" />
            <br />
            <asp:CheckBox ID="chkMEDS" runat="server" AutoPostBack="True" Text="Mechanical Engneering In Diploma" />
            <br />
            <asp:CheckBox ID="chkEEDS" runat="server" AutoPostBack="True" Text="Elecctricle Engneering In Diploma" />
            <br />
            <asp:Button ID="btnSubmit"  runat="server" Text="Submit" OnClick="btnSubmit_Click1" />
        </div>
        <asp:Label ID="lblMessage" runat="server" EnableViewState="False"></asp:Label>
    </form>
</body>
</html>