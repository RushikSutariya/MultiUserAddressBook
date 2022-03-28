<%@ Page Title="" Language="C#" MasterPageFile="~/Content/MultiUserAddressBook.master" AutoEventWireup="true" CodeFile="ContactList.aspx.cs" Inherits="AdminPanel_Contact_ContactList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
   
   <div align="center">
         <h2>Contact</h2>
    </div>
    <div class="row">   
        <div class="col-md-12">
            <asp:Label runat="server" ID="lblMessage" EnableViewState="false"></asp:Label><br />
            <asp:Label runat="server" ID="lblMessage2" ForeColor="Red" EnableViewState="false"></asp:Label><br />
            <asp:HyperLink runat="server" ID="hlContactAdd" Text="ContactAdd" ToolTip="On CLick You Can Add A New Contact" NavigateUrl="~/AdminPanel/Contact/ContactAddEdit.aspx" style="color:black" CssClass="button button1 button:hover"></asp:HyperLink>
            <asp:GridView runat="server" ID="gvContact" CssClass="table table-hover table-responsive" AutoGenerateColumns="false" OnRowCommand="gvContact_RowCommand">
                 <Columns>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button runat="server" ID="btnDelete" Text="Delete" CssClass="btn btn-danger btn-sm"  CommandName="DeleteRecord" CommandArgument='<%# Eval("ContactID").ToString() %>' OnClientClick="return confirm('Are You Sure You Want To Delete?');"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:HyperLink runat="server" ID="hlEdit" Text="Edit" NavigateUrl='<%#"~/AdminPanel/Contact/ContactAddEdit.aspx?ContactID=" + DropDownFillMethods.Base64encode(Eval("ContactID").ToString().Trim()) %>' CssClass="btn btn-dark btn-sm"></asp:HyperLink>
                        </ItemTemplate>

                    </asp:TemplateField>
                     <asp:BoundField DataField="ContactName" HeaderText="Name" />
                     <asp:BoundField DataField="ContactNo" HeaderText="Number" />
                     <asp:BoundField DataField="Email" HeaderText="Email" />
                     <asp:BoundField DataField="Address" HeaderText="Address" />
                     <asp:BoundField DataField="Age" HeaderText="Age" />
                     <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" />
                     <asp:BoundField DataField="CountryName" HeaderText="Country" />
                     <asp:BoundField DataField="StateName" HeaderText="State" />
                     <asp:BoundField DataField="CityName" HeaderText="City" />
                     <asp:BoundField DataField="WhatsappNo" HeaderText="WhNumber" />
                     <asp:BoundField DataField="ContactCategoryNames" HeaderText="CategoryName" />
              </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

