<%@ Page Title="" Language="C#" MasterPageFile="~/Content/MultiUserAddressBook.master" AutoEventWireup="true" CodeFile="ContactAddEdit.aspx.cs" Inherits="AdminPanel_Contact_ContactAddEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">

    <h2 align="center">Contact Add Edit Page</h2><br /><br />
     <div class="text-center">   
            <asp:Label runat="server" ID="lblMeassage" ForeColor="red" EnableViewState="false" ></asp:Label>
    </div><br />
     <div class="row">
        <div class="col-md-4">
            Country
        </div>
        <div class="col-md-8">
            <asp:DropDownList runat="server" ToolTip="Select Any Country" ID="ddlCountryList"  AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="ddlCountryList_SelectedIndexChanged" ></asp:DropDownList>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-4">
            State
        </div>
        <div class="col-md-8">
            <asp:DropDownList runat="server" ID="ddlStateList" ToolTip="Select Any State" placeholder ="Select State" AutoPostBack="true" CssClass="form-control" Enabled="false" OnSelectedIndexChanged="ddlStateList_SelectedIndexChanged" ></asp:DropDownList>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-4">
            City
        </div>
        <div class="col-md-8">
            <asp:DropDownList runat="server" ID="ddlCityList" placeholder ="Select City" ToolTip="Select Any City" AutoPostBack="true" Enabled="false" CssClass="form-control" ></asp:DropDownList>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-4">
            ContactCategory
        </div>
        <div class="col-md-8">
          <%--  <asp:DropDownList runat="server" ID="ddlContactCategory" CssClass="form-control" ></asp:DropDownList>--%>
            <asp:CheckBoxList runat="server" ID="cblContactCategoryID" ToolTip="Click To Choose A Contact Category" RepeatDirection="Horizontal" ></asp:CheckBoxList>
        </div>
    </div><br />
    <div class ="row">
        <div class="col-md-4">
            <a style="color:red;">*</a>  Contact Name
        </div>
        <div class="col-md-8">
            <asp:TextBox runat="server" ToolTip="Enter Your Name" ID="txtContactName" placeholder ="Contact Name" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvContactName" runat="server" BackColor="White" ControlToValidate="txtContactName" Display="Dynamic" ErrorMessage="Enter The Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div><br />
     <div class ="row">
        <div class="col-md-4">
           <a style="color:red;">*</a> Contact Number
        </div>
        <div class="col-md-8">
            <asp:RegularExpressionValidator ID="revContactNumber" ToolTip="Enter Your Contact Number" runat="server" ControlToValidate="txtContactNo" Display="Dynamic" ErrorMessage="Enter The Valide Mobile Number" ForeColor="Red" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
            <asp:TextBox runat="server" ID="txtContactNo" placeholder ="Contact Number" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rvfContactNumber" runat="server" BackColor="White" ControlToValidate="txtContactNo" Display="Dynamic" ErrorMessage="Enter The Number" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div><br />
     <div class ="row">
        <div class="col-md-4">
            Whatsapp Number
        </div>
        <div class="col-md-8">
            <asp:RegularExpressionValidator ID="revWhatsAppNo" ToolTip="Enter Your Whatsapp Number" runat="server" ControlToValidate="txtWhatsappNo" Display="Dynamic" ErrorMessage="Kindly Enter The Whatsapp Number" ForeColor="Red" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
            <asp:TextBox runat="server" ID="txtWhatsappNo" placeholder ="Whatsapp Number" CssClass="form-control"></asp:TextBox>
        </div>
    </div><br />
    <div class ="row">
        <div class="col-md-4">
            BirthDate
        </div>
        <div class="col-md-8">
            <asp:TextBox runat="server" ID="txtBirthDate" ToolTip="Select Your BirthDate" placeholder =" Enter BirthDate" CssClass="form-control" TextMode="Date"></asp:TextBox>
        </div>
    </div><br />
     <div class ="row">
        <div class="col-md-4">
          <a style="color:red;">*</a>  Email
        </div>
        <div class="col-md-8">
            <asp:TextBox runat="server" ID="txtEmail" placeholder ="Enter Email" ToolTip="Kindly Enter Your Email Address" CssClass="form-control" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rvfEmail" runat="server" BackColor="White" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Enter The EmailAddress" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div><br />
    <div class ="row">
        <div class="col-md-4">
            Age
        </div>
        <div class="col-md-8">
            <asp:TextBox runat="server" ID="txtAge" CssClass="form-control" ToolTip="Enter Your Age" placeholder ="Enter Age" TextMode="Number"></asp:TextBox>
        </div>
    </div><br />
    <div class ="row">
        <div class="col-md-4">
           <a style="color:red;">*</a> Address
        </div>
        <div class="col-md-8">
            <asp:TextBox runat="server" ID="txtAddress" placeholder ="Enater Address" ToolTip="Enter The Addess.." CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rvfAddress" runat="server" BackColor="White" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Enter The Address" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-12" align="center">
            <asp:Button runat="server" ID="btnContactSave" Text="Save"   CssClass="btn btn-sm" OnClick="btnContactSave_Click"/>
            <asp:Button runat="server" ID="btnCancle" Text="Cancle" CssClass="btn btn-danger btn-sm" OnClick="btnCancle_Click" />  
        </div>
    </div><br />
</asp:Content>

