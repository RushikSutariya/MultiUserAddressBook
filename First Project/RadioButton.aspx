<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RadioButton.aspx.cs" Inherits="RadioButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <div style="background-color:aliceblue">
            <h1 align="center">Radio Button</h1>
    </div><hr />
        
        <strong>Select Your College :</strong>
        <asp:RadioButton ID="rbDIET" runat="server" Text="DIET" GroupName="College"/>
        <asp:RadioButton ID="rbDIETDS" runat="server" Text="DIETDS"  GroupName="College" /><hr/>
        <br />
        <br />
        <asp:Button ID="btnShow" runat="server" OnClick="Button1_Click" Text="Submit" />
       <div  runat="server"> 
           <strong> On Selection Of DIET: </strong>
         <br />
        <asp:RadioButton ID="rb3" runat="server" Text="Degree In Computer Engineering" Enabled="false" Visible="false" GroupName="DIET" OnCheckedChanged="rb3_CheckedChanged" />
        <br />
        <asp:RadioButton ID="rb4" runat="server" Text="Degree In Mechanical Engineering"  Enabled="false" Visible="false" GroupName="DIET" OnCheckedChanged="rb4_CheckedChanged"/>
        <br />
        <asp:RadioButton ID="rb5" runat="server" Text="Degree In Electrical Engineering" Enabled="false" Visible="false" GroupName="DIET" OnCheckedChanged="rb5_CheckedChanged"/>
        <br />
        <asp:RadioButton ID="rb6" runat="server" Text="Degree In Civil Engineering" Enabled="false" Visible="false" GroupName="DIET" OnCheckedChanged="rb6_CheckedChanged" />
        </div>   
        
        <br />  
        <br />
        <div  runat="server" >
           <strong> On Selection Of DIETDS: </strong>
        <br />
        <asp:RadioButton ID="rb7" runat="server" Text="Diploma In Computer Engineering" Enabled="false"  Visible="false" GroupName="DIETDS" OnCheckedChanged="rb7_CheckedChanged" />
        <br />
        <asp:RadioButton ID="rb8" runat="server" Text="Diploma In  Mechanical  Engineering" Enabled="false" Visible="false" GroupName="DIETDS" OnCheckedChanged="rb8_CheckedChanged" />
        <br />
        <asp:RadioButton ID="rb9" runat="server"  Text="Diploma In Electrical Engineering"  Enabled="false" Visible="false" GroupName="DIETDS" OnCheckedChanged="rb9_CheckedChanged"/>
        <br />
        <asp:RadioButton ID="rb10" runat="server"  Text="Diploma In Civil Engineering" Enabled="false" Visible="false" GroupName="DIETDS" OnCheckedChanged="rb10_CheckedChanged"/>
        </div>
        <br />
        <asp:Button ID="btnLable" runat="server" OnClick="Button2_Click" Text="Label" />
        <br />
        <br />
        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
