<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="exam.registration" %>

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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *New User Sign Up....<br />
        &nbsp;&nbsp;&nbsp; *Fill the all Fields...<div style="margin-left: 200px">
        </div>
        <p style="margin-left: 160px">
         Login ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Height="22px"  Width="230px" style="margin-right: 0px; margin-top: 4px; margin-left: 0px;"></asp:TextBox>
          &nbsp;
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Fore-Color="Red" ErrorMessage="Login id required..." ForeColor="Red"></asp:RequiredFieldValidator>

            
          </p>

        <p style="margin-left: 160px">
         Roll No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" Height="22px"  Width="234px" style="margin-right: 0px; margin-top: 4px"></asp:TextBox>
       
            &nbsp;
       
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ForeColor="Red" ErrorMessage="Roll no. is required..."> </asp:RequiredFieldValidator>
 </p>
        
        <p style="margin-left: 160px">
         password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Height="22px"  Width="229px" style="margin-right: 0px; margin-top: 4px; margin-left: 17px; margin-bottom: 4px;"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
         </p>

            <p style="margin-left: 160px">
             Confirm Password &nbsp; &nbsp;<asp:TextBox ID="TextBox9" runat="server" TextMode="Password" Height="22px"  Width="229px" style="margin: 4px 0px;"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox9" ControlToCompare="TextBox4" ForeColor="Red" ErrorMessage="Both passwords should be match.."></asp:CompareValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           </p>


            <p style="margin-left: 160px">
                Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Height="26px"  Width="229px" style="margin-left: 22px"></asp:TextBox>
            </p>
        
        <p style="margin-left:160px">  Branch&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" > 
                <asp:ListItem>CE</asp:ListItem>
                <asp:ListItem>CL</asp:ListItem>
                <asp:ListItem>MH</asp:ListItem>
                <asp:ListItem>IT</asp:ListItem>
                <asp:ListItem>IC</asp:ListItem>
                <asp:ListItem>EC</asp:ListItem>
            </asp:DropDownList>
            </p>
        <p style="margin-left:160px">  &nbsp;Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox8" runat="server" Height="72px"  Width="239px" style="margin-right: 0px; margin-top: 4px" Rows="1"></asp:TextBox> 
            </p>
            
        <p style="margin-left: 160px">
            Mobile No. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox ID="TextBox7" runat="server" Height="22px"  Width="243px" style="margin-right: 0px; margin-top: 4px; margin-left: 0px;"></asp:TextBox>
            
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7" ForeColor="Red" ErrorMessage="Mobile no. is required..."> </asp:RequiredFieldValidator>

         &nbsp;&nbsp;    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="TextBox7" ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$" runat="server" ErrorMessage="Please enter valid Mobile No." ForeColor="#CC0000"></asp:RegularExpressionValidator>
            
              </p>

            
        <p style="margin-left: 160px">
            E-mail &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
            <asp:TextBox ID="TextBox6" runat="server" Height="22px"  Width="246px" style="margin-right: 0px; margin-top: 4px" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
      
             &nbsp;&nbsp;&nbsp;&nbsp;
      
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ForeColor="Red" ErrorMessage="Mail id  is required..."> </asp:RequiredFieldValidator>

             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox6" ValidationExpression="\S+@\S+\.\S+" runat="server" ErrorMessage="Please enter valid email ID" ForeColor="Red"></asp:RegularExpressionValidator>
            
              &nbsp;&nbsp;&nbsp;

              </p>
        <p style="margin-left: 160px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" ForeColor="#009900" Text="*" Font-Bold="True" Font-Size="X-Large" Visible="False"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*" Font-Bold="True" Font-Size="X-Large" Visible="False"></asp:Label>
              </p>
        <p style="margin-left: 160px">
            &nbsp;</p>
        <p style="margin-left: 160px">
            <asp:Button ID="Button1" runat="server" Height="38px" Text="submit" Width="98px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Height="38px" style="margin-left: 87px" Text="cancel" Width="92px" />
      
              </p>

            
     
        
        
        
    </form>
</body>
</html>
