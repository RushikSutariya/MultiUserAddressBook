<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropDownList.aspx.cs" Inherits="List_Control" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color:aliceblue; font-family:'Felix Titling'">
        <h1 align="center">DropDown And CheckBox List</h1>
    </div><hr />
    <div>
        <table>
            <tr>
                <td>New Country Name:</td>
                <td>
                    <asp:TextBox ID="txtCountryName" class="form-control" runat="server"></asp:TextBox></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>New Country Code:</td>
                <td>
                    <asp:TextBox ID="txtCountryCode" class="form-control" runat="server"></asp:TextBox></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Old Country Name:</td>
                <td>
                    <asp:TextBox ID="txtOldCountryName" class="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Old Country Code:</td>
                <td>
                    <asp:TextBox ID="txtOldCountryCode" class="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button runat="server" ID="btnAddItem" Text="AddItem" OnClick="btnAddItem_Click" />
        <asp:Button runat="server" ID="btnRemoveItem" Text="RemoveItem" OnClick="btnRemoveItem_Click" />
        <asp:Button runat="server" ID="btnUpdateItem" Text="UpdateItem" OnClick="btnUpdateItem_Click" />
        <hr />

        <%--<asp:DropDownList ID="ddlCountry" runat="server">
           <asp:ListItem Value="91">India</asp:ListItem>
            <asp:ListItem Value="92">China</asp:ListItem>
            <asp:ListItem Value="93">Srilanka</asp:ListItem>
            <asp:ListItem Value="94">Bangladesh</asp:ListItem>
            <asp:ListItem Value="95">Nepal</asp:ListItem>
            <asp:ListItem Value="96">USA</asp:ListItem>
        </asp:DropDownList>--%>
        <br />
        <br />
        <table>
            <tr>
                <td>
                    <asp:ListBox runat="server" ID="lblMessageListBox1" Height="93px" SelectionMode="Multiple" Width="90px" OnSelectedIndexChanged="lblMessageListBox1_SelectedIndexChanged">
                        <asp:ListItem Value="91">India</asp:ListItem>
                        <asp:ListItem Value="92">China</asp:ListItem>
                        <asp:ListItem Value="93">Uk</asp:ListItem>
                        <asp:ListItem Value="94">Bangladesh</asp:ListItem>
                        <asp:ListItem Value="95">Nepal</asp:ListItem>
                        <asp:ListItem Value="96">USA</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td>
                    <asp:Button runat="server" ID="btnLeft" Text=">" OnClick="btnLeft_Click" />   <br /> 
                    <asp:Button runat="server" ID="btnLeftAll" Text=">>"  OnClick="btnLeftAll_Click"  />   <br /> 
                    <asp:Button runat="server" ID="btnRight" Text="<"  OnClick="btnRight_Click" style="height: 26px" />  <br />
                    <asp:Button runat="server" ID="btnRightAll" Text="<<"  OnClick="btnRightAll_Click"/>
                    <br />
                </td>
                <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ListBox runat="server" ID="lblMessageListBox2" Height="93px" SelectionMode="Multiple" Width="90px"></asp:ListBox>
                </td>
            </tr>
        </table>
        <asp:button ID="btnCountry" Text="Show" runat="server" OnClick="btnCountry_Click"/>
        <br /><br />
        <asp:Label ID="lblMessage" runat="server" EnableViewState="False"></asp:Label> 
    </div>
    </form>
</body>
</html>
