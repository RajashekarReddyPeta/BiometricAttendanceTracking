<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Calculation.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="calculate" />
    
        <asp:TextBox ID="txttemplateid" runat="server"></asp:TextBox>
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Start" />
    
        <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
            Text="Endtime" />
    
    </div>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </form>
</body>
</html>
