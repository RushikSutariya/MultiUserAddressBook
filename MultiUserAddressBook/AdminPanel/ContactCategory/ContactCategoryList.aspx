<%@ Page Title="" Language="C#" MasterPageFile="~/Content/MultiUserAddressBook.master" AutoEventWireup="true" CodeFile="ContactCategoryList.aspx.cs" Inherits="AdminPanel_ContactCategory_ContactCategoryList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
    
    <div>
         <h2 align="center">Contact Category</h2><br />
    </div>
    <div class="row">
        <div class="col-md-12">
           <asp:HyperLink runat="server" ID="hlContactCategoryAdd" Text="ContactCategoryAdd" ToolTip="On CLick You Can Add A New ContactCategory" NavigateUrl="~/AdminPanel/ContactCategory/ContactCategoryAddEdit.aspx" style="color:black" CssClass="button button1 button:hover"></asp:HyperLink>
           <asp:Label runat="server" Id="lblMessage" EnableViewState="false"></asp:Label><br />
            <asp:GridView runat="server" ID="gvContactCategory" AutoGenerateColumns="false" CssClass="table table-hover" OnRowCommand="gvContactCategory_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button  runat="server" ID="btnDelete" OnClientClick="return confirm('Are You Sure You Want To Delete?');" Text="Delete" CssClass="btn btn-danger btn-sm" CommandName="DeleteRecord" CommandArgument='<%# Eval("ContactCategoryID").ToString() %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:HyperLink runat="server" ID="hlEdit" Text="Edit" NavigateUrl='<%#"~/AdminPanel/ContactCategory/ContactCategoryAddEdit.aspx?ContactCategoryID=" + DropDownFillMethods.Base64encode(Eval("ContactCategoryID").ToString().Trim()) %>' CssClass="btn btn-dark btn-sm"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ContactCategoryName" HeaderText="Category" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

