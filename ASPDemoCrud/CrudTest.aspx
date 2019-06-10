<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrudTest.aspx.cs" Inherits="ASPDemoCrud.CrudTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Name :</td>
                    <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        Email :
                    </td>
                    <td>
                        <asp:TextBox id="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Button  Text="Save" ID="btnSave" runat="server"  /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="grdDisplay"   AutoGenerateColumns="false" runat="server" OnRowCommand="grdDisplay_RowCommand" >
                           <Columns>

                               <asp:TemplateField HeaderText="Name">
                                   <ItemTemplate>
                                       <%#Eval("name") %>
                                   </ItemTemplate>
                               </asp:TemplateField>
                                <asp:TemplateField HeaderText="Email">
                                   <ItemTemplate>
                                       <%#Eval("Email") %>
                                   </ItemTemplate>
                               </asp:TemplateField>

                               <asp:TemplateField>
                                   <ItemTemplate>
                                       <asp:LinkButton CommandArgument='<%#Eval("id") %>' 
                                           ID="lnkEdit" Text="Edit" runat="server"></asp:LinkButton>
                                   </ItemTemplate>
                               </asp:TemplateField>

                           </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
