<%@ Page Title="" Language="C#" MasterPageFile="~/Content/MultiUserMaster.master" AutoEventWireup="true" CodeFile="CountryList.aspx.cs" Inherits="Content_AdminPanel_Country_CountryList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMultiUserAddressBook" Runat="Server">

    <div class="row">
        <div class="col-md-12">
            <h2>Country list:</h2>
            <p>
                <asp:Label ID="lblMessage" runat="server" EnableViewState="False" Text=" " CssClass="text-success"></asp:Label>
            </p>
        </div>
    </div>
    <div>
        <asp:HyperLink runat="server" ID="hlAddCountry" Text="Add New Country" NavigateUrl="~/AdminPanel/Country/Add" CssClass="btn btn-primary"></asp:HyperLink>
    </div>
    <div>
        <div class="row">
        <div class="col-md-12">
            <asp:GridView ID="gvCountry" runat="server" SkinID="gvList" CssClass="table table-hover table-success" AutoGenerateColumns="false" OnRowCommand="gvCountry_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button runat="server" ID="btnDelete" Text="Delete" CommandName="DeleteRecord" CssClass="btn btn-danger" CommandArgument='<%# Eval("CountryID").ToString().Trim()%>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:HyperLink runat="server" ID="hlEdit" Text="Edit" NavigateUrl='<%# "~/AdminPanel/Country/CountryEdit/"+CommonDropDownFIllMethod.Base64encode(Eval("CountryID").ToString().Trim())    %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="CountryID" HeaderText="ID" />
                    <asp:BoundField DataField="CountryName" HeaderText="Country" />
                    <asp:BoundField DataField="CreationDate" HeaderText="Date" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    </div>
</asp:Content>

