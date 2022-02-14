<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calculator.aspx.cs" Inherits="Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color:aliceblue">
            <h1 align="center">CALCULATOR</h1>
        </div><hr />
       <div>
           <asp:TextBox ID="t" runat="server" Width="250" Height="30"></asp:TextBox><br />
           <asp:Button ID="b9" runat="server" Text="9" Style="margin:10px" Height="30" Width="40" OnClick="b9_Click"/>
           <asp:Button ID="b8" runat="server" Text="8" Style="margin:10px" Height="30" Width="40" OnClick="b8_Click"/>
           <asp:Button ID="b7" runat="server" Text="7" Style="margin:10px" Height="30" Width="40" OnClick="b7_Click"/>
           <asp:Button ID="add" runat="server" Text="+" Style="margin:10px" Height="30" Width="40" OnClick="add_Click" />
           <br /> <br />
           <asp:Button ID="b6" runat="server" Text="6" Style="margin:10px" Height="30" Width="40" OnClick="b6_Click"/>
           <asp:Button ID="b5" runat="server" Text="5" Style="margin:10px" Height="30" Width="40" OnClick="b5_Click"/>
           <asp:Button ID="b4" runat="server" Text="4" Style="margin:10px" Height="30" Width="40" OnClick="b4_Click"/>
           <asp:Button ID="sub" runat="server" Text="-" Style="margin:10px" Height="30" Width="40" OnClick="sub_Click"/>
            <br /> <br />
           <asp:Button ID="b3" runat="server" Text="3" Style="margin:10px" Height="30" Width="40" OnClick="b3_Click"/>
           <asp:Button ID="b2" runat="server" Text="2" Style="margin:10px" Height="30" Width="40" OnClick="b2_Click"/>
           <asp:Button ID="b1" runat="server" Text="1" Style="margin:10px" Height="30" Width="40" OnClick="b1_Click"/>
           <asp:Button ID="mul" runat="server" Text="*" Style="margin:10px" Height="30" Width="40" OnClick="mul_Click"/>
            <br /> <br />
           <asp:Button ID="equ" runat="server" Text="=" Style="margin:10px" Height="30" Width="40" OnClick="equ_Click"/>
           <asp:Button ID="b0" runat="server" Text="0" Style="margin:10px" Height="30" Width="40" OnClick="b0_Click"/>
           <asp:Button ID="poi" runat="server" Text="." Style="margin:10px" Height="30" Width="40" OnClick="poi_Click"/>
           <asp:Button ID="div" runat="server" Text="/" Style="margin:10px" Height="30" Width="40" OnClick="div_Click"/>
            <br /> <br />
           <asp:Button ID="ac" runat="server" Text="AC" Width="250" OnClick="ac_Click" />
       </div>
    </form>
</body>
</html>
