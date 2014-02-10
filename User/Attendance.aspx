<%@ Page Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Attendance.aspx.cs" Inherits="attendance" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .center
        {
            margin-right: auto;
            margin-left: auto;
        }
        .center
        {
            margin-right: auto;
            margin-left: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblStudentID" runat="server" Text="StudentID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStudentID" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
        Text="Search" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." Visible="False" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" CssClass="center" ForeColor="Black" GridLines="None">
        <Columns>
            <asp:BoundField DataField="studentname" HeaderText="studentname" 
                SortExpression="studentname" />
            <asp:BoundField DataField="rollnumber" HeaderText="rollnumber" 
                SortExpression="rollnumber" />
            <asp:BoundField DataField="stdatten" HeaderText="stdatten" 
                SortExpression="stdatten" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:biometricConnectionString1 %>" 
        DeleteCommand="DELETE FROM [classstudents] WHERE [studentid] = @studentid" 
        InsertCommand="INSERT INTO [classstudents] ([classid], [collegeid], [studentname], [rollnumber], [addressdetails], [contactdeatils], [status], [starttime], [endtime], [stdatten], [flat]) VALUES (@classid, @collegeid, @studentname, @rollnumber, @addressdetails, @contactdeatils, @status, @starttime, @endtime, @stdatten, @flat)" 
        ProviderName="<%$ ConnectionStrings:biometricConnectionString1.ProviderName %>" 
        SelectCommand="SELECT studentname, rollnumber, stdatten FROM classstudents where (rollnumber=@a)" 
        UpdateCommand="UPDATE [classstudents] SET [classid] = @classid, [collegeid] = @collegeid, [studentname] = @studentname, [rollnumber] = @rollnumber, [addressdetails] = @addressdetails, [contactdeatils] = @contactdeatils, [status] = @status, [starttime] = @starttime, [endtime] = @endtime, [stdatten] = @stdatten, [flat] = @flat WHERE [studentid] = @studentid">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtStudentID" Name="a" PropertyName="Text" />
        </SelectParameters>
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
            <asp:Parameter Name="starttime" Type="String" />
            <asp:Parameter Name="endtime" Type="String" />
            <asp:Parameter Name="stdatten" Type="String" />
            <asp:Parameter Name="flat" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="classid" Type="Int32" />
            <asp:Parameter Name="collegeid" Type="Int32" />
            <asp:Parameter Name="studentname" Type="String" />
            <asp:Parameter Name="rollnumber" Type="String" />
            <asp:Parameter Name="addressdetails" Type="String" />
            <asp:Parameter Name="contactdeatils" Type="Decimal" />
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter Name="starttime" Type="String" />
            <asp:Parameter Name="endtime" Type="String" />
            <asp:Parameter Name="stdatten" Type="String" />
            <asp:Parameter Name="flat" Type="Int32" />
            <asp:Parameter Name="studentid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <table class="table">
        <tr>
            <td class="style1">
                <asp:Label ID="lblClass" runat="server" Text="Class"></asp:Label>
            </td>
            <td class="center">
                <asp:DropDownList ID="ddlClass" runat="server" 
                    DataSourceID="SqlDataSourceClass" DataTextField="classname" 
                    DataValueField="classid">
                    <asp:ListItem Selected="True" Value="0">Select</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceClass" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:biometricConnectionString1 %>" 
                    SelectCommand="SELECT [classid], [classname] FROM [masterclassses]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr class="table">
            <td>
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSearch1" runat="server" onclick="btnSearch1_Click" 
                    Text="Search" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:GridView ID="GridViewclass" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" 
        EmptyDataText="There are no data records to display." Visible="False" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" CssClass="center" ForeColor="Black" GridLines="None">
        <Columns>
            <asp:BoundField DataField="classid" HeaderText="Class ID" 
                SortExpression="classid" />
            <asp:BoundField DataField="studentname" HeaderText="Student Name" 
                SortExpression="studentname" />
            <asp:BoundField DataField="rollnumber" HeaderText="Roll Number" 
                SortExpression="rollnumber" />
            <asp:BoundField DataField="percentage" HeaderText="Percentage" 
                SortExpression="percentage" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:biometricConnectionString1 %>" 
        DeleteCommand="DELETE FROM [classstudents] WHERE [studentid] = @studentid" 
        InsertCommand="INSERT INTO [classstudents] ([classid], [collegeid], [studentname], [rollnumber], [addressdetails], [contactdeatils], [status], [starttime], [endtime], [stdatten], [flat]) VALUES (@classid, @collegeid, @studentname, @rollnumber, @addressdetails, @contactdeatils, @status, @starttime, @endtime, @stdatten, @flat)" 
        ProviderName="<%$ ConnectionStrings:biometricConnectionString1.ProviderName %>" 
        SelectCommand="SELECT classid, studentname, rollnumber, percentage FROM classstudents where (classid=@a)" 
        
    UpdateCommand="UPDATE [classstudents] SET [classid] = @classid, [collegeid] = @collegeid, [studentname] = @studentname, [rollnumber] = @rollnumber, [addressdetails] = @addressdetails, [contactdeatils] = @contactdeatils, [status] = @status, [starttime] = @starttime, [endtime] = @endtime, [stdatten] = @stdatten, [flat] = @flat WHERE [studentid] = @studentid">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlClass" Name="a" 
                PropertyName="SelectedValue" />
        </SelectParameters>
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
            <asp:Parameter Name="starttime" Type="String" />
            <asp:Parameter Name="endtime" Type="String" />
            <asp:Parameter Name="stdatten" Type="String" />
            <asp:Parameter Name="flat" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="classid" Type="Int32" />
            <asp:Parameter Name="collegeid" Type="Int32" />
            <asp:Parameter Name="studentname" Type="String" />
            <asp:Parameter Name="rollnumber" Type="String" />
            <asp:Parameter Name="addressdetails" Type="String" />
            <asp:Parameter Name="contactdeatils" Type="Decimal" />
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter Name="starttime" Type="String" />
            <asp:Parameter Name="endtime" Type="String" />
            <asp:Parameter Name="stdatten" Type="String" />
            <asp:Parameter Name="flat" Type="Int32" />
            <asp:Parameter Name="studentid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

