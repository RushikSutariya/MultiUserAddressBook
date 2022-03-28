<%@ Page Title="" Language="C#" MasterPageFile="~/Content/MultiUserAddressBook.master" AutoEventWireup="true" CodeFile="CountryList.aspx.cs" Inherits="AdminPanel_Country_CountryList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="Server">
    <div class="row">
        <div class="col-md-12 text-center">
            <h2>Country List</h2>
        </div>
    </div>
    <br />
    <div>
        <asp:HyperLink runat="server" ID="hlCountryAdd" Text="CountryAdd" ToolTip="On CLick You Can Add A New Country" NavigateUrl="~/AdminPanel/Country/CountryAddEdit.aspx" Style="color: black" CssClass="button button1 button:hover"></asp:HyperLink>
    </div>
    <div class="row">
        <div class="col-md-12">
            <asp:Label runat="server" ID="lblMessage" EnableViewState="false"></asp:Label>
        </div>
    </div>
    <div class="row text-center">
        <div class="col-md-12">
            <table class="table-hover">
                <asp:GridView ID="gvCountry" runat="server" AutoGenerateColumns="false" CssClass="table table-hover" OnRowCommand="gvCountry_RowCommand">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button runat="server" ID="btnDelete" OnClientClick="return confirm('Are You Sure You Want To Delete?');" Text="Delete" CssClass="btn btn-danger btn-sm" CommandName="DeleteRecord" CommandArgument='<%# Eval("CountryID").ToString().Trim() %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HyperLink runat="server" ID="hlEdit" Text="Edit" NavigateUrl='<%#"~/AdminPanel/Country/CountryAddEdit.aspx?CountryID=" + DropDownFillMethods.Base64encode(Eval("CountryID").ToString().Trim()) %>' CssClass="btn btn-dark btn-sm"></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="CountryName" HeaderText="Country" />
                        <asp:BoundField DataField="CountryCode" HeaderText="Code" />
                    </Columns>
                </asp:GridView>
            </table>
        </div>
    </div>
    <br />

</asp:Content>

