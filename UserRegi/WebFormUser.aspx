<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormUser.aspx.cs" Inherits="UserRegi.WebFormUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="form" runat="server">
                <tr>
                    <td>FullName</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" placeholder="enter your full name"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Address</td>
                    <td>
                        <asp:TextBox ID="txtAdd" runat="server" placeholder="enter your address"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButton GroupName="user" ID="RadioButton1" runat="server" Text="Male" OnCheckedChanged="RadioButton1_CheckedChanged" /><br />
                        <asp:RadioButton GroupName="user" ID="RadioButton2" runat="server" Text="Female" OnCheckedChanged="RadioButton2_CheckedChanged" /><br />
                        <asp:RadioButton GroupName="user" ID="RadioButton3" runat="server" Text="others" OnCheckedChanged="RadioButton3_CheckedChanged" />
                    </td>
                </tr>

                <tr>
                    <td>Phone</td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server" placeholder="+91-9123456780"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="example@gmail.com" TextMode="Email"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>username</td>
                    <td>
                        <asp:TextBox ID="txtUser" runat="server" placeholder="enter username"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>password</td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server" placeholder="*****" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td align="right">
                        <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" /></td>
                </tr>
            </table>
        </div>
        <div>&nbsp;</div>
    </form>
</body>
</html>
