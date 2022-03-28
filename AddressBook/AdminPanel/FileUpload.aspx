<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FileUpload.aspx.cs" Inherits="AdminPanel_FileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FIle Upload</title>
    <link href="~/Content/Css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="~/Content/Css/bootstrap.min.css" rel="stylesheet" />
    <script src="../Content/Js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       <h2 align="center">File Upload</h2>  <br /> 
        <div>
            <asp:Label ID="lblMessage" EnableViewState="false" runat="server" style="margin-left:300px"></asp:Label>
        </div> <br />
        <div style="margin-left:200px">
            <asp:FileUpload ID="fuFile" runat="server" />
        </div><br />

         <div style="margin-left:300px">
             <asp:Button runat="server" ID="btnSave" CssClass="btn btn-sm btn-dark" Text="Upload" OnClick="btnSave_Click" />
             <asp:Button ID="btnDeleteFile" runat="server" Text="Delete" CssClass="btn btn-danger btn-sm" OnClick="btnDeleteFile_Click" />
         </div>
    </form>
</body>
</html>
