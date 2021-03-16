<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="p-5">
            <asp:LinkButton ID="lbtnfacebook" runat="server" Text="Login With Facebook" OnClick="lbtnfacebook_Click" CssClass="btn btn-primary"></asp:LinkButton> <br /> <br />
            <asp:LinkButton ID="lbtngoogle" runat="server" Text="Login With Google" OnClick="lbtngoogle_Click" CssClass="btn btn-danger"></asp:LinkButton>
        </div>
    </form>
</body>
</html>
