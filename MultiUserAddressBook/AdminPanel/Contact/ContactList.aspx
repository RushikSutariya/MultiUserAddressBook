<%@ Page Title="" Language="C#" MasterPageFile="~/Content/MultiUserAddressBook.master" AutoEventWireup="true" CodeFile="ContactList.aspx.cs" Inherits="AdminPanel_Contact_ContactList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
    <div class="row">
        <div class="col-md-12 text-center">
            <h2>Contact</h2><br />
            <asp:Label runat="server" ID="lblMessage" EnableViewState="false"></asp:Label><br />
            <asp:GridView runat="server" ID="gvContact" CssClass="table table-hover table-responsive" OnRowCommand="gvContact_RowCommand">
                 <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button runat="server" ID="btnDelete" Text="Delete" CssClass="btn btn-danger btn-sm"  CommandName="DeleteRecord" CommandArgument='<%# Eval("ContactID").ToString() %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:HyperLink runat="server" ID="hlEdit" Text="Edit" NavigateUrl='<%#"~/AdminPanel/Contact/ContactAddEdit.aspx?ContactID=" + Eval("ContactID").ToString().Trim() %>' CssClass="btn btn-dark btn-sm"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

