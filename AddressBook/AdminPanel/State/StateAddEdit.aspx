<%@ Page Title="" Language="C#" MasterPageFile="~/Content/AddressBook.master" AutoEventWireup="true" CodeFile="StateAddEdit.aspx.cs" Inherits="AdminPanel_State_StateAddEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
        <h2 align="center">State Add Edit Page</h2><br />
        <div class="text-center">
           <h4> <asp:Label runat="server" ID="lblMessage" EnableViewState="false" ></asp:Label> </h4>
        </div><br/>
    <div class="row">
        <div class="col-md-4">
            Country
        </div>
        <div class="col-md-8">
            <asp:DropDownList runat="server" ID="ddlCountry" CssClass="form-control" ></asp:DropDownList>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-4">
            State Name
        </div>
        <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtStateName" CssClass="form-control"></asp:TextBox>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-4">
            State Code
        </div>
        <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtStateCode" CssClass="form-control"></asp:TextBox>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-12" align="center">
            <asp:Button runat="server" ID="btnStateSave" Text="Save" OnClick="btnSave_Click" CssClass="btn btn-sm"/>  
            <asp:Button runat="server" ID="btnStateCancle" Text="Cancle" CssClass="btn btn-danger btn-sm" OnClick="btnStateCancle_Click"/>  

        </div>
    </div><br />
    
   
</asp:Content>

