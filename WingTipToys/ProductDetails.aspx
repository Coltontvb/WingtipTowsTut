<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="WingTipToys.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="productDetails" runat="server" ItemType="WingtipToys.Models.Product" SelectMethod="GetProduct" RenderOuterTable="false">
        <ItemTemplate>
            <div class="Jumbotron">
                <h2><%#: Item.ProductName %></h2>
            </div>
            <table>
                <tr>
                    <td>
                        <img src="/Catalog/Images/<%#: Item.ImagePath %>" style="height:300px;" alt="<%#: Item.ProductName %>" />
                    </td>
                    <td>&nbsp;</td>
                    <td style="vertical-align:top; text-align:left;">
                        <p>Description: <%#: Item.Description %></p>
                        <p>Price: &nbsp;<%#: String.Format("{0:c}", Item.UnitPrice) %></p>
                        <p>Product Number: <%#: Item.ProductID %></p>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>

</asp:Content>
