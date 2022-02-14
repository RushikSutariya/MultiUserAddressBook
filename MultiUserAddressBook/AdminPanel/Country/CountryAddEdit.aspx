<%@ Page Title="" Language="C#" MasterPageFile="~/Content/MultiUserAddressBook.master" AutoEventWireup="true" CodeFile="CountryAddEdit.aspx.cs" Inherits="AdminPanel_Country_CountryAddEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
    <div class="row">
        <div class="col-md-12 text-center">
            <h2>Country Add Edit Page</h2>
        </div>
    </div><br />
     <div class="row">
        <div class="col-md-12 text-center">
            <asp:Label runat="server" ID="lblMessage" EnableViewState="false"></asp:Label>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-4">
            Country Name :
        </div>
        <div class="col-md-8">
            <asp:TextBox runat="server" ID="txtCountryName" CssClass="form-control"></asp:TextBox>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-4">
            Country Code :
        </div>
        <div class="col-md-8">
            <asp:TextBox runat="server" ID="txtCountryCode" CssClass="form-control"></asp:TextBox>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-12" align="center">
            <asp:Button runat="server" ID="btnCountrySave" Text="Save" OnClick="btnSave_Click" CssClass="btn btn-sm"/>  
            <asp:Button runat="server" ID="btnCancle" Text="Cancle" CssClass="btn btn-danger btn-sm" OnClick="btnCancle_Click"/>  

        </div>
    </div>
</asp:Content>

