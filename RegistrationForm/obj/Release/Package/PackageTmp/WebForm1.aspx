<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="RegistrationForm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 162px;
        }
        .auto-style4 {
            width: 162px;
            height: 45px;
        }
        .auto-style5 {
            height: 45px;
            width: 209px;
        }
        .auto-style7 {
            width: 209px;
        }
        .auto-style8 {
            height: 37px;
            width: 279px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <td class="auto-style8" style="font-weight: bold; font-size: 25px">
                    <br />
                    REGISTRATION FORM<br />
                    <br />
                </td>

            </table>
            <table align="center">
               <tr>
                    <td class="auto-style4">Full Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtName" runat="server" placeholder="Enter your Name" Width="201px" Height="30px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td class="auto-style4">Mobile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtMob" runat="server" placeholder="+91-123-456-7890" TextMode="Phone" Width="200px" Height="30px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style7">
                        <asp:RadioButton GroupName="user" ID="RadioButton1" runat="server" Text="Male" /><br />
                        <asp:RadioButton GroupName="user" ID="RadioButton2" runat="server" Text="Female"/><br />
                        <asp:RadioButton GroupName="user" ID="RadioButton3" runat="server" Text="Other"/><br />
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style4">DOB(dd/mm/yyy) :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtDob" runat="server" placeholder="ddmmyyyy" Width="199px" Height="30px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td class="auto-style4">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtMail" runat="server" placeholder="example@xyz.com" TextMode="Email" Width="201px" Height="30px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td class="auto-style4">Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPwd" runat="server" placeholder="Enter your Password" TextMode="Password" Width="204px" Height="30px"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style7">
                        <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" Height="39px" Width="146px" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
