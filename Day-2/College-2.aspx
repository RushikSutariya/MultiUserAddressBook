<%@ Page Language="C#" AutoEventWireup="true" CodeFile="College-2.aspx.cs" Inherits="ListBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         Country Name:
        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
        <br />
        Country Code:&nbsp;
        <asp:TextBox ID="txt2" runat="server" ></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="ADD" Width="87px" />
        <asp:Button ID="btnRemove" runat="server" style="margin-left: 16px" Text="REMOVE" OnClick="btnRemove_Click" />
        <br />
        <br />
        <asp:Label ID="lblAdded" runat="server" EnableViewState="False"></asp:Label>
        <br />
        <br />

        <table>
            <tr>
                <td><asp:ListBox runat="server" ID="lb1" Height="93px" SelectionMode="Multiple" Width="90px">
                <asp:ListItem Value="91">india</asp:ListItem>
                <asp:ListItem Value="92">USA</asp:ListItem>
                <asp:ListItem Value="93">jermany</asp:ListItem>
                <asp:ListItem Value="94">maldiv</asp:ListItem>
                <asp:ListItem Value="95">africa</asp:ListItem>
                 </asp:ListBox>
                </td>
                <td> 
                    <asp:Button runat="server" ID="btn1" Text=">" OnClick="btn1_Click" />   <br /> 
                    <asp:Button runat="server" ID="btn2" Text=">>" EnableViewState="False"  />   <br /> 
                    <asp:Button runat="server" ID="btn3" Text="<" OnClick="btn3_Click" />  <br />
                     <asp:Button runat="server" ID="btn4" Text="<<"/>   <br />
                     
                </td>
                <td>
                    <asp:ListBox runat="server" ID="lb2" SelectionMode="Multiple" Width="90px" ></asp:ListBox>
                </td>
            </tr>
        </table>
            <asp:Label ID="lblMessage" runat="server" EnableViewState="False" Font-Bold="True" Font-Italic="False" Font-Underline="True" ForeColor="Red"></asp:Label>
            <br />
        <br />
        <asp:Button ID="btnDisplay" Text="Display" runat="server" OnClick="btnDisplay_Click" />
         <br />
        <br />
         <br />
        <br />
        <asp:Label ID="lblDisplay" runat="server" EnableViewState="False" Font-Bold="False"    ></asp:Label>
    </div>
    </form>
</body>
</html>