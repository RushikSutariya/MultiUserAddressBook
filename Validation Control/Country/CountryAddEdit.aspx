<%@ Page Title="" Language="C#" MasterPageFile="~/Content/MultiUserMaster.master" AutoEventWireup="true" CodeFile="CountryAddEdit.aspx.cs" Inherits="Content_AdminPanel_Country_CountryAddEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMultiUserAddressBook" Runat="Server">
    <div class="row">
        <div class="col-md-12">
            <h2>Country Add Edit Page</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <asp:Label runat="server" ID="lblMessage" EnableViewState="False" CssClass="text-danger"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            Country Name
        </div>
        <div class="col-md-8">
            <asp:TextBox runat="server" ID="txtCountryName"></asp:TextBox>
        </div>
    </div>
     <div class="row">
        <div class="col-md-4">
            Country Code
        </div>
        <div class="col-md-8">
            <asp:TextBox runat="server" ID="txtCountryCode"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <asp:Button runat="server" ID="btnAdd" Text="Save" CssClass="btn btn-sm btn-primary" OnClick="btnAdd_Click"/>
            <asp:Button runat="server" ID="btnCancle" Text="Cancle" CssClass="btn btn-sm btn-warning" OnClick="btnCancle_Click"/>

        </div>
    </div>

</asp:Content>

