<%@ Page Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Students.aspx.cs" Inherits="user_Addstudents" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .center
        {
            margin-right: auto;
            margin-left: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="students" runat="server">
    <table class="table">
        <tr class="table">
            <td>
                <asp:Label ID="lblClassName" runat="server" Text="Class Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlClassName" runat="server" 
                    DataSourceID="SqlDataSourceClassName" DataTextField="classname" 
                    DataValueField="classid">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvClassName" runat="server" 
                    ErrorMessage="please select a value" ControlToValidate="ddlClassName" 
                    Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSourceClassName" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:biometricconnection1 %>" 
                    SelectCommand="SELECT [classname], [classid] FROM [masterclassses]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr class="table">
            <td>
                <asp:Label ID="lblCollegeName" runat="server" Text="College Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlCollegeName" runat="server" 
                    DataSourceID="SqlDataSourceCollegeName" DataTextField="collegename" 
                    DataValueField="collegeid">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCollegeName" runat="server" 
                    ErrorMessage="Please select a value" ControlToValidate="ddlCollegeName" 
                    Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSourceCollegeName" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:biometricconnection1 %>" 
                    SelectCommand="SELECT [collegeid], [collegename] FROM [mastercolleges]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr class="table">
            <td>
                <asp:Label ID="lblStudentName" runat="server" Text="Student Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvStudentName" runat="server" 
                    ControlToValidate="txtStudentName" Display="Dynamic" 
                    ErrorMessage="Enter the student Name">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblRollNumber" runat="server" Text="Roll Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtRollNumber" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revRollnum" runat="server" 
                    ErrorMessage="RegularExpressionValidator" 
                    ControlToValidate="txtRollNumber" Display="Dynamic" 
                    ValidationExpression="\d{2}\w{2}1A\w{4}">eg:07XX1AXXXX</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="table">
            <td>
                <asp:Label ID="lblBiometricID" runat="server" Text="Biometric ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtBiometicID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="table">
            <td>
                <asp:Label ID="lblAddress" runat="server" Text="Address Details"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" 
                    ControlToValidate="txtAddress" Display="Dynamic" 
                    ErrorMessage="please enter the address">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="table">
            <td>
                <asp:Label ID="lblContactDetails" runat="server" Text="Contact Details"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvContactDetails" runat="server" 
                    ControlToValidate="txtContact" Display="Dynamic" 
                    ErrorMessage="please enter the contact details">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="table">
            <td>
                <asp:Label ID="lblStatus" runat="server" Text="Status"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlStatus" runat="server">
                    <asp:ListItem Selected="True" Value="True">Active</asp:ListItem>
                    <asp:ListItem Value="False">Inactive</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvStatus" runat="server" 
                    ControlToValidate="ddlStatus" Display="Dynamic" 
                    ErrorMessage="Please select a Value">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="table">
            <td align="center">
                <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                    Text="Submit" />
            </td>
            <td align="center">
                <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" 
                    Text="Cancel" />
            </td>
        </tr>
    </table>
    </asp:Panel>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnView" runat="server" onclick="btnView_Click" 
        Text="Click here to add students" />
    <br />
    <br />
    &nbsp
    <p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="studentid"
    DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="2" CssClass="center" ForeColor="Black" GridLines="BOTH">
    <Columns>
        <asp:BoundField DataField="studentid" HeaderText="studentid" 
            SortExpression="studentid" InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="classid" HeaderText="classid" 
            SortExpression="classid" />
        <asp:BoundField DataField="collegename" HeaderText="collegename" 
            SortExpression="collegename" />
        <asp:BoundField DataField="studentname" HeaderText="studentname" 
            SortExpression="studentname" />
        <asp:BoundField DataField="rollnumber" HeaderText="rollnumber" 
            SortExpression="rollnumber" />
        <asp:BoundField DataField="addressdetails" HeaderText="addressdetails" 
            SortExpression="addressdetails" />
        <asp:BoundField DataField="contactdeatils" HeaderText="contactdeatils" 
            SortExpression="contactdeatils" />
        <asp:CheckBoxField DataField="status" HeaderText="status" SortExpression="status" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
    </Columns>
        <FooterStyle BackColor="Tan" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:biometricConnectionString1 %>"
    DeleteCommand="DELETE FROM [classstudents] WHERE [studentid] = @studentid" InsertCommand="INSERT INTO [classstudents] ([classid], [collegeid], [studentname], [rollnumber], [addressdetails], [contactdeatils], [status]) VALUES (@classid, @collegeid, @studentname, @rollnumber, @addressdetails, @contactdeatils, @status)"
    ProviderName="<%$ ConnectionStrings:biometricConnectionString1.ProviderName %>"
    SelectCommand="SELECT classstudents.studentid, classstudents.classid, mastercolleges.collegename, classstudents.studentname, classstudents.rollnumber, classstudents.biometricid, classstudents.addressdetails, classstudents.contactdeatils, classstudents.status FROM classstudents INNER JOIN mastercolleges ON classstudents.collegeid = mastercolleges.collegeid"
    
            UpdateCommand="UPDATE classstudents SET  studentname = @studentname, rollnumber = @rollnumber, addressdetails = @addressdetails, contactdeatils = @contactdeatils, status = @status WHERE (studentid = @studentid)">
    <DeleteParameters>
        <asp:Parameter Name="studentid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="classid" Type="Int32" />
        <asp:Parameter Name="collegeid" Type="Int32" />
        <asp:Parameter Name="studentname" Type="String" />
        <asp:Parameter Name="rollnumber" Type="String" />
        <asp:Parameter Name="addressdetails" Type="String" />
        <asp:Parameter Name="contactdeatils" Type="Decimal" />
        <asp:Parameter Name="status" Type="Boolean" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="studentname" Type="String" />
        <asp:Parameter Name="rollnumber" Type="String" />
        <asp:Parameter Name="addressdetails" Type="String" />
        <asp:Parameter Name="contactdeatils" Type="Decimal" />
        <asp:Parameter Name="status" Type="Boolean" />
        <asp:Parameter Name="studentid" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

    </p>
    </asp:Content>
