<%@ Page Title="" Language="C#" MasterPageFile="~/Content/MultiUserAddressBook.master" AutoEventWireup="true" CodeFile="CityAddEdit.aspx.cs" Inherits="AdminPanel_City_CityAddEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
     <h2 align="center">City Add Edit Page</h2><br /><br />
     <div class="text-center">   
            <asp:Label runat="server" ID="lblMessage" ForeColor="Red" EnableViewState="false" ></asp:Label> 
    </div><br />
    <div class="row">
        <div class="col-md-4">
            State
        </div>
        <div class="col-md-8">
            <asp:DropDownList runat="server" ID="ddlState" CssClass="form-control" ></asp:DropDownList>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-4">
           <a style="color:red;">*</a> City Name
        </div>
        <div class="col-md-8">
            <asp:TextBox runat="server" ID="txtCityName" placeholder ="City Name" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rvfCityName" runat="server" BackColor="White" ControlToValidate="txtCityName" Display="Dynamic" ErrorMessage="Enter The CityName" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-4">
            City Code
        </div>
        <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtCityCode" placeholder ="City Code" CssClass="form-control"></asp:TextBox>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-4">
            City Pin Code
        </div>
        <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtCityPinCode" placeholder ="City Pin Code" CssClass="form-control"></asp:TextBox>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-12" align="center">
            <asp:Button runat="server" ID="btnStateSave" Text="Save" OnClick="btnStateSave_Click" CssClass="btn btn-sm"/> 
            <asp:Button runat="server" ID="btnCancle" Text="Cancle" CssClass="btn btn-danger btn-sm" OnClick="btnCancle_Click"/> 
        </div>
    </div>
</asp:Content>

