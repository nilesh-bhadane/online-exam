<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubjectList.aspx.cs" Inherits="exam.SubjectList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:Image ID="Image1" runat="server" BorderWidth="0" Height="181px" ImageAlign="Right" Width="1530px" ImageUrl="~/images/topright.jpg" />
    </div>

    <a href="login.aspx">HOME</a>

        <br />
        <br />

      <br />
  
        <div>


        </div>


    
            <h1> <b> Select the Subject To Give Exam</b> </h1>
     
                <br />
                <br />
                <br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Quiz.aspx"> <asp:label ID="Label1" runat="server" text="Sub1" Font-Bold="false" Font-size="X-Large"> </asp:label>  </a>
    <br /> <br />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:label runat="server" text="Sub2" Visible="False"></asp:label> 
        <p>
            <asp:Label ID="lblerror" runat="server" Text="error" BackColor="#CC0000" Visible="False"></asp:Label>
        </p>
    </form>

    <p>
        &nbsp;</p>
</body>
</html>
