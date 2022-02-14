<%@ Page Title="" Language="C#" MasterPageFile="~/Content/MultiUserAddressBook.master" AutoEventWireup="true" CodeFile="ContactAddEdit.aspx.cs" Inherits="AdminPanel_Contact_ContactAddEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">

    <h2 align="center">Contact Add Edit Page</h2><br /><br />
     <div class="text-center">   
           <h4> <asp:Label runat="server" ID="lblMeassage" EnableViewState="false" ></asp:Label> </h4>
    </div><br />
     <div class="row">
        <div class="col-md-4">
            Country
        </div>
        <div class="col-md-8">
            <asp:DropDownList runat="server" ID="ddlCountryList" CssClass="form-control" ></asp:DropDownList>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-4">
            State
        </div>
        <div class="col-md-8">
            <asp:DropDownList runat="server" ID="ddlStateList" CssClass="form-control" ></asp:DropDownList>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-4">
            City
        </div>
        <div class="col-md-8">
            <asp:DropDownList runat="server" ID="ddlCityList" CssClass="form-control" ></asp:DropDownList>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-4">
            ContactCategory
        </div>
        <div class="col-md-8">
            <asp:DropDownList runat="server" ID="ddlContactCategory" CssClass="form-control" ></asp:DropDownList>
        </div>
    </div><br />
    <div class ="row">
        <div class="col-md-4">
            Contact Name
        </div>
        <div class="col-md-8">
            <asp:TextBox runat="server" ID="txtContactName" CssClass="form-control"></asp:TextBox>
        </div>
    </div><br />
     <div class ="row">
        <div class="col-md-4">
            Contact Number
        </div>
        <div class="col-md-8">
            <asp:RegularExpressionValidator ID="revContactNumber" runat="server" ControlToValidate="txtContactNo" Display="Dynamic" ErrorMessage="Enter The Valide Mobile Number" ForeColor="Red" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
            <asp:TextBox runat="server" ID="txtContactNo" CssClass="form-control"></asp:TextBox>
        </div>
    </div><br />
     <div class ="row">
        <div class="col-md-4">
            Whatsapp Number
        </div>
        <div class="col-md-8">
            <asp:RegularExpressionValidator ID="revWhatsAppNo" runat="server" ControlToValidate="txtWhatsappNo" Display="Dynamic" ErrorMessage="Kindly Enter The Whatsapp Number" ForeColor="Red" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
            <asp:TextBox runat="server" ID="txtWhatsappNo" CssClass="form-control"></asp:TextBox>
        </div>
    </div><br />
    <div class ="row">
        <div class="col-md-4">
            BirthDate
        </div>
        <div class="col-md-8">
            <asp:TextBox runat="server" ID="txtBirthDate" CssClass="form-control"></asp:TextBox>
        </div>
    </div><br />
     <div class ="row">
        <div class="col-md-4">
            Email
        </div>
        <div class="col-md-8">
            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
        </div>
    </div><br />
    <div class ="row">
        <div class="col-md-4">
            Age
        </div>
        <div class="col-md-8">
            <asp:TextBox runat="server" ID="txtAge" CssClass="form-control"></asp:TextBox>
        </div>
    </div><br />
    <div class ="row">
        <div class="col-md-4">
            Address
        </div>
        <div class="col-md-8">
            <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control"></asp:TextBox>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-12" align="center">
            <asp:Button runat="server" ID="btnContactCategorySave" Text="Save" OnClick="btnContactCategorySave_Click"  CssClass="btn btn-sm"/>
            <asp:Button runat="server" ID="btnCancle" Text="Cancle" CssClass="btn btn-danger btn-sm" OnClick="btnCancle_Click" />  
        </div>
    </div><br />
</asp:Content>

