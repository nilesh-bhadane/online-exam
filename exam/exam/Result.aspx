<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="exam.Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:Image ID="Image1" runat="server" BorderWidth="0" Height="153px" ImageAlign="Right" Width="1530px" ImageUrl="~/images/topright.jpg" />
    </div>

         <br />
        <br />
        <br />
         <br />
        <br />
        <br />    <br />
        <br />
        <br />


        <div>
            
            <h1> Total Questions:</h1> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>  <br />
            <h1> &nbsp;</h1>
            <br />
            <h1> Right Answers:</h1>    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>   <br /> <br /> <br /> <asp:Button ID="Logout" runat="server" Text="Logout" />

        </div>

    </form>
</body>
</html>
