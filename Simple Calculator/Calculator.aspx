<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calculator.aspx.cs" Inherits="Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <div style="background-color:aliceblue"> 
         <h1 align="center">Calculator</h1><br />
         </div><hr />

        Enter The First Number :&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txt1" runat="server"></asp:TextBox><br /> <br /><br />Enter The Second Number :  <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div runat="server" style="margin-left: 120px">
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSub" runat="server" Text="Sub" OnClick="btnSub_Click" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnMulti" runat="server" Text="Multi" OnClick="btnMulti_Click" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDiv" runat="server" Text="Division" OnClick="btnDiv_Click" />
        </div><br />
            
            Answer:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtAns" runat="server" BorderStyle="Solid"></asp:TextBox>
       
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCl" runat="server" Text="Clear" OnClick="btnCl_Click" />
        <br /><br />
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
