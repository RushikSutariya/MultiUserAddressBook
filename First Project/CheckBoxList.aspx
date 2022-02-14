<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckBoxList.aspx.cs" Inherits="CheckBoxList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div style="background-color:aliceblue">
         <h1 align="center">Check Box List</h1><hr />
     </div>
    <div style="font-size: medium">
    
        <strong>Select Your College :<br /></strong>
        <br />
        <asp:CheckBox ID="chkDIET" runat="server" Text="DIET" />
&nbsp;
        <asp:CheckBox ID="chkDIETDS" runat="server" Text="DIETDS" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" Width="100px" OnClick="Button1_Click" />
        <br />
        <br />
        <div runat="server" id="DIET" visible="true">
           <strong> On Selection Of DIET :</strong>
            <br />
                <asp:CheckBox ID="chkCE" Text="Degree In Computer Engineering" GroupName="DIET" runat="server" Visible="False"  />
                <br />
                <asp:CheckBox ID="chkCL" Text="Degree In Civil Engineering" GroupName="DIET" runat="server" Visible="False"  />
                <br />
                <asp:CheckBox ID="chkME" Text="Degree In Mechanical Engineering" GroupName="DIET" runat="server" Visible="False"  />
                <br />
                <asp:CheckBox ID="chkEE" Text="Degree In Electrical Engineering" GroupName="DIET" runat="server" Visible="False" />
                <br />
         </div>
        <br /> <br />
        <div runat="server" id="DIETDS">
            <strong> On Selection Of DIETDS :</strong>
            <br /> 
                <asp:CheckBox ID="chkCEDS" Text="Diploma In Computer Engineering" GroupName="DIETDS" runat="server" Visible="False"  />
                <br />
                <asp:CheckBox ID="chkCLDS" Text="Diploma In Civil Engineering" GroupName="DIETDS" runat="server" Visible="False"  />
                <br />
                <asp:CheckBox ID="chkMEDS" Text="Diploma In  Mechanical  Engineering" GroupName="DIETDS" runat="server" Visible="False" />
                <br />
                <asp:CheckBox ID="chkEEDS" Text="Diploma In Electrical Engineering" GroupName="DIETDS" runat="server" Visible="False" />
        </div>
        <br />
        <br /><hr />
        <asp:Button ID="Button2" runat="server" Text="Lable" Width="94px"  />
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server" BackColor=""></asp:Label>

    </div>
    </form>
</body>
</html>
