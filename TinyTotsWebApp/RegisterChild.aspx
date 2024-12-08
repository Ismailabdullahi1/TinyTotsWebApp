<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterChild.aspx.cs" Inherits="TinyTotsWebApp.RegisterChild" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kindergarten Registration Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Register a Child</h2>
            <asp:HiddenField ID="hfRegistrationId" runat="server" />
            
            <label for="txtFirstName">First Name:</label>
            <asp:TextBox ID="txtFirstName" runat="server" /><br />

            <label for="txtSecondName">Second Name:</label>
            <asp:TextBox ID="txtSecondName" runat="server" /><br />

            <label for="ddlRace">Race:</label>
            <asp:DropDownList ID="ddlRace" runat="server">
                <asp:ListItem Value="Malay">Malay</asp:ListItem>
                <asp:ListItem Value="Chinese">Chinese</asp:ListItem>
                <asp:ListItem Value="Indian">Indian</asp:ListItem>
                <asp:ListItem Value="Other">Other</asp:ListItem>
            </asp:DropDownList><br />

            <label for="rblGender">Gender:</label>
            <asp:RadioButtonList ID="rblGender" runat="server">
                <asp:ListItem Value="Boy">Boy</asp:ListItem>
                <asp:ListItem Value="Girl">Girl</asp:ListItem>
            </asp:RadioButtonList><br />

            <label for="cblAllergies">Food Allergies:</label>
            <asp:CheckBoxList ID="cblAllergies" runat="server">
                <asp:ListItem Value="None">None</asp:ListItem>
                <asp:ListItem Value="Dairy">Dairy Products</asp:ListItem>
                <asp:ListItem Value="Peanuts">Peanuts and Tree Nuts</asp:ListItem>
                <asp:ListItem Value="Soybean">Soybean</asp:ListItem>
                <asp:ListItem Value="Wheat">Wheat</asp:ListItem>
            </asp:CheckBoxList><br />

            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
        </div>
    </form>
</body>
</html>
