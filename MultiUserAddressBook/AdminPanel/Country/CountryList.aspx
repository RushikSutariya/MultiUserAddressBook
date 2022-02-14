<%@ Page Title="" Language="C#" MasterPageFile="~/Content/MultiUserAddressBook.master" AutoEventWireup="true" CodeFile="CountryList.aspx.cs" Inherits="AdminPanel_Country_CountryList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
    <div class="row">
        <div class="col-md-12 text-center">
            <h2>Country List</h2>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-12">
            <asp:Label runat="server" ID="lblMessage" EnableViewState="false"></asp:Label>
        </div>
    </div>
    <div class="row text-center">
        <div class="col-md-12">
            <table class="table-hover">
            <asp:GridView ID="gvCountry" runat="server" CssClass="table table-hover" OnRowCommand="gvCountry_RowCommand">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button runat="server" ID="btnDelete" Text="Delete" CssClass="btn btn-danger btn-sm"  CommandName="DeleteRecord" CommandArgument='<%# Eval("CountryID").ToString() %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink runat="server" ID="hlEdit" Text="Edit" NavigateUrl='<%#"~/AdminPanel/Country/CountryAddEdit.aspx?CountryID=" + Eval("CountryID").ToString() %>' CssClass="btn btn-dark btn-sm"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            </table>
         </div>
    </div><br />

</asp:Content>

