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
                    <td colspan="2"><asp:Button  Text="Save" ID="btnSave" runat="server" OnClick="btnSave_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
