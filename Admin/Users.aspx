<%@ Page Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="admin_AddUsers" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 287px;
        }
        .style3
        {
            width: 197px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="users" runat="server">
    <table class="table">
        <tr>
            <td class="style3">
                <asp:Label ID="lblCollegeName" runat="server" Text="College Name"></asp:Label>
            </td>
            <td class="style2">
                <asp:DropDownList ID="ddlCollegeName" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="collegename" 
                    DataValueField="collegeid" Height="20px" Width="255px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:biometricconnection1 %>" 
                    SelectCommand="SELECT [collegeid], [collegename] FROM [mastercolleges]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px" class="style3">
                <asp:Label ID="lblUserType" runat="server" Text="User Type"></asp:Label>
            </td>
            <td class="style2">
                <asp:DropDownList ID="ddlUsertype" runat="server" Height="20px" Width="255px">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>User</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtFirstname" runat="server" Height="20px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" 
                    ControlToValidate="txtFirstname" Display="Dynamic" 
                    ErrorMessage="Please enter firstname">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtLastname" runat="server" Height="20px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv" runat="server" 
                    ControlToValidate="txtLastname" Display="Dynamic" 
                    ErrorMessage="Please enter the last name">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text="Phone"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtPhone" runat="server" Width="250px" Height="20px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revPhone" runat="server" 
                    ControlToValidate="txtPhone" Display="Dynamic" 
                    ErrorMessage="Please enter the valid phone number" 
                    ValidationExpression="\d{8,10}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label6" runat="server" Text="Mobile"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtMobile" runat="server" style="height: 22px" Height="20px" 
                    Width="250px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revMobile" runat="server" 
                    ControlToValidate="txtMobile" Display="Dynamic" 
                    ErrorMessage="Please enter 10 digit number" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="style2" align="justify">
                <asp:TextBox ID="txtEmail" runat="server" Width="250px" Height="20px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                    ControlToValidate="txtEmail" Display="Dynamic" 
                    ErrorMessage="Enter correct email id" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label8" runat="server" Text="Login ID"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtLoginid" runat="server" Width="250px" Height="20px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLoginid" runat="server" 
                    ControlToValidate="txtLoginid" Display="Dynamic" ErrorMessage="Enter login id">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="250px" 
                    Height="20px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvpassword" runat="server" 
                    ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Enter Password">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label10" runat="server" Text="Status"></asp:Label>
            </td>
            <td class="style2">
                <asp:DropDownList ID="ddlStatus" runat="server" Height="20px" Width="255px">
                    <asp:ListItem Value="-1">select</asp:ListItem>
                    <asp:ListItem Selected="True" Value="1">Active</asp:ListItem>
                    <asp:ListItem Value="0">Inactive</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvStatus" runat="server" 
                    ControlToValidate="ddlStatus" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style1" colspan="2">
                <asp:Button ID="btninsert" runat="server" Height="26px" 
                    onclick="btninsert_Click" Text="Insert" Width="100px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" 
                    Text="Reset" Width="100px" />
            </td>
        </tr>
    </table>
    </asp:Panel>
    <br />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Button ID="btnView" runat="server" onclick="btnView_Click" 
        Text="Click Here to Add Users" CssClass="center" />
        <br />
        <br />
   <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" DataKeyNames="userid" DataSourceID="SqlDataSource2" 
        EmptyDataText="There are no data records to display." 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" EnableModelValidation="True" ForeColor="Black" 
        CssClass="center">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="userid" HeaderText="userid" ReadOnly="True" 
                SortExpression="userid" InsertVisible="False" />
            <asp:BoundField DataField="collegename" HeaderText="collegename" 
                SortExpression="collegename" />
            <asp:BoundField DataField="usertype" HeaderText="usertype" 
                SortExpression="usertype" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" 
                SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" 
                SortExpression="lastname" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="loginid" HeaderText="loginid" 
                SortExpression="loginid" />
            <asp:CheckBoxField DataField="status" HeaderText="status" 
                SortExpression="status" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:biometricConnectionString1 %>" 
        DeleteCommand="DELETE FROM [masterusers] WHERE [userid] = @userid" 
        InsertCommand="INSERT INTO [masterusers] ([userid], [collegid], [usertype], [firstname], [lastname], [phone], [mobile], [email], [loginid], [password], [status]) VALUES (@userid, @collegid, @usertype, @firstname, @lastname, @phone, @mobile, @email, @loginid, @password, @status)" 
        ProviderName="<%$ ConnectionStrings:biometricConnectionString1.ProviderName %>" 
        SelectCommand="SELECT masterusers.userid, mastercolleges.collegename, masterusers.usertype, masterusers.firstname, masterusers.lastname, masterusers.phone, masterusers.mobile, masterusers.email, masterusers.loginid,  masterusers.status FROM masterusers INNER JOIN mastercolleges ON masterusers.collegid = mastercolleges.collegeid" 
        
        
        UpdateCommand="UPDATE masterusers SET usertype = @usertype, firstname = @firstname, lastname = @lastname, phone = @phone, mobile = @mobile, email = @email, loginid = @loginid, password = @password, status = @status WHERE (userid = @userid)">
        <DeleteParameters>
            <asp:Parameter Name="userid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="userid" Type="Int32" />
            <asp:Parameter Name="collegid" Type="Int32" />
            <asp:Parameter Name="usertype" Type="String" />
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="phone" Type="Decimal" />
            <asp:Parameter Name="mobile" Type="Decimal" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="loginid" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="status" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="usertype" Type="String" />
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="phone" Type="Decimal" />
            <asp:Parameter Name="mobile" Type="Decimal" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="loginid" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter Name="userid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

