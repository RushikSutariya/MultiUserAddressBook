<%@ Page Title="" Language="C#" MasterPageFile="~/Content/MultiUserAddressBook.master" AutoEventWireup="true" CodeFile="StateList.aspx.cs" Inherits="AdminPanel_State_StateList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
    <h2 align="center">State List</h2><br />
    <div class="row">
        <div class="col-md-12">
           <asp:Label runat="server" ID="lblMessage" EnableViewState="false"></asp:Label>
        </div>
    </div>
     <div  class="row">
        <div class="col-md-12 text-center">
            <asp:GridView ID="gvState" runat="server" CssClass="table table-hover" OnRowCommand="gvState_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button runat="server" ID="btnDelete" Text="Delete" CssClass="btn btn-danger btn-sm"  CommandName="DeleteRecord" CommandArgument='<%# Eval("StateID").ToString() %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:HyperLink runat="server" ID="hlEdit" Text="Edit" NavigateUrl='<%#"~/AdminPanel/State/StateAddEdit.aspx?StateID=" + Eval("StateID").ToString().Trim() %>' CssClass="btn btn-dark btn-sm"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

