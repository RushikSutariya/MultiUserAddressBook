<%@ Page Title="" Language="C#" MasterPageFile="~/Content/MultiUserAddressBook.master" AutoEventWireup="true" CodeFile="ContactCategoryAddEdit.aspx.cs" Inherits="AdminPanel_ContactCategory_ContactCategoryAddEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
    <h2 align="center">ContactCategory Add Edit Page</h2><br /><br />
     <div class="text-center">
            <asp:Label runat="server" ID="lblMeassage" ForeColor="Red" EnableViewState="false" ></asp:Label> 
    </div><br />
    <div class="row">
        <div class="col-md-4">
           <a style="color:red;">*</a> ContactCategoryName
        </div>
        <div class="col-md-8">
            <asp:textbox runat="server" ID="txtContactCategoryName"  placeholder ="ContactCategory Name" CssClass="form-control"></asp:textbox>
            <asp:RequiredFieldValidator ID="rvfContactCategoryName" runat="server" BackColor="White" ControlToValidate="txtContactCategoryName" Display="Dynamic" ErrorMessage="Enter The ContactCategoryName" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-12" align="center">
            <asp:Button runat="server" ID="btnContactCategorySave" Text="Save" OnClick="btnContactCategorySave_Click"  CssClass="btn btn-sm" />
            <asp:Button runat="server" ID="btnCancle" Text="Cancle" CssClass="btn btn-danger btn-sm" OnClick="btnCancle_Click" />  
  
        </div>
    </div><br />
</asp:Content>

