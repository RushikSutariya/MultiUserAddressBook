<%@ Page Title="" Language="C#" MasterPageFile="~/Content/AddressBook.master" AutoEventWireup="true" CodeFile="CityList.aspx.cs" Inherits="AdminPanel_City_CityList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
    <div class="row">
        <div class="col-md-12 text-center">
            <h2>City List</h2><br />
            <asp:Label runat="server" ID="lblMessage" EnableViewState="false"></asp:Label><br />
            <asp:GridView runat="server" ID="gvCity" CssClass="table table-hover" OnRowCommand="gvCity_RowCommand">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button runat="server" ID="btnDelete" Text="Delete" CssClass="btn btn-danger btn-sm" CommandName="DeleteRecord" CommandArgument='<%# Eval("CityID").ToString() %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink runat="server" ID="hlEdit" Text="Edit" NavigateUrl='<%#"~/AdminPanel/City/CityAddEdit.aspx?CityID=" + Eval("CityID").ToString().Trim() %>' CssClass="btn btn-dark btn-sm"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

