<%@ Page Title="" Language="C#" MasterPageFile="~/Content/MultiUserAddressBook.master" AutoEventWireup="true" CodeFile="CityList.aspx.cs" Inherits="AdminPanel_City_CityList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
    
    <div  align="center">
            <h2>City List</h2>  
        
    </div>
    <div class="row">
        <div class="col-md-12">   
              <asp:HyperLink runat="server" ID="hlCityAdd" Text="CityAdd" ToolTip="On CLick You Can Add A New City" NavigateUrl="~/AdminPanel/City/CityAddEdit.aspx" style="color:black" CssClass="button button1 button:hover"></asp:HyperLink>            
            <asp:Label runat="server" ID="lblMessage" EnableViewState="false"></asp:Label><br />
            <asp:GridView runat="server" ID="gvCity" CssClass="table table-hover" AutoGenerateColumns="false" OnRowCommand="gvCity_RowCommand">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button runat="server" OnClientClick="return confirm('Are You Sure You Want To Delete?');" ID="btnDelete" Text="Delete" CssClass="btn btn-danger btn-sm" CommandName="DeleteRecord" CommandArgument='<%# Eval("CityID").ToString() %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink runat="server" ID="hlEdit" Text="Edit" NavigateUrl='<%#"~/AdminPanel/City/CityAddEdit.aspx?CityID=" + DropDownFillMethods.Base64encode(Eval ("CityID").ToString().Trim()) %>' CssClass="btn btn-dark btn-sm"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="StateName" HeaderText="State" />
                    <asp:BoundField DataField="CityName" HeaderText="City" />
                    <asp:BoundField DataField="PinCOde" HeaderText="PinCode" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

