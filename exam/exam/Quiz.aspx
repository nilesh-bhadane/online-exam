<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="exam.Quiz" %>

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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div>
        <asp:label id="queid" runat="server"></asp:label>  
             &nbsp;&nbsp;&nbsp; 
             <asp:label ID="Que" runat="server"></asp:label> 
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="40px">
                
            </asp:RadioButtonList>
            

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />

           <br />
            <br />
            
        </div>
        <asp:Button ID="Next" runat="server" Text="Next" OnClick="Next_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Exit" Width="66px" />
&nbsp;&nbsp;
    </form>
</body>
</html>
