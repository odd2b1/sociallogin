<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verifyfb.aspx.cs" Inherits="Demo.verifyfb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="card">
                <div class="card-body">
                    ID- <asp:Label ID="lblid" runat="server"></asp:Label><br />
                    Email - <asp:Label ID="lblemail" runat="server"></asp:Label><br />
                    Name - <asp:Label ID="lblname" runat="server"></asp:Label><br />
                    First Name - <asp:Label ID="lblfirst" runat="server"></asp:Label><br />
                    Last Name- <asp:Label ID="lbllast" runat="server"></asp:Label><br />
                    Gender - <asp:Label ID="lblgender" runat="server"></asp:Label><br />
                    Birthday - <asp:Label ID="lblbirthday" runat="server"></asp:Label><br />
                    Error - <asp:Label ID="lblerror" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
