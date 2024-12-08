<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationList.aspx.cs" Inherits="TinyTotsWebApp.RegistrationList" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration List</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="gvRegistrations" runat="server" AutoGenerateColumns="False" DataKeyNames="RegistrationId">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                <asp:BoundField DataField="SecondName" HeaderText="Second Name" />
                <asp:BoundField DataField="Race" HeaderText="Race" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="FoodAllergies" HeaderText="Food Allergies" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
