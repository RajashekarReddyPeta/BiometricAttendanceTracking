<%@ Page Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Timetable.aspx.cs" Inherits="user_Timetable" Title="Untitled Page" %>

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
<asp:Panel ID="timetable" runat="server">
    <table class="table">
        <tr>
            <td>
                <asp:Label ID="lblCollegName" runat="server" Text="College Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlCollegeName" runat="server" 
                    DataSourceID="SqlDataSourceCollegName" DataTextField="collegename" 
                    DataValueField="collegeid">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCollegName" runat="server" 
                    ControlToValidate="ddlCollegeName" Display="Dynamic" 
                    ErrorMessage="Please select a value">*</asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSourceCollegName" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:biometricconnection1 %>" 
                    SelectCommand="SELECT [collegeid], [collegename] FROM [mastercolleges]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblClassName" runat="server" Text="Class Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlClassName" runat="server" 
                    DataSourceID="SqlDataSourceClassname" DataTextField="classname" 
                    DataValueField="classname">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvClassName" runat="server" 
                    ControlToValidate="ddlClassName" Display="Dynamic" 
                    ErrorMessage="Please select a value">*</asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSourceClassname" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:biometricconnection1 %>" 
                    SelectCommand="SELECT [classid], [classname] FROM [masterclassses]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPeriodName" runat="server" Text="Period Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPeriodName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDay" runat="server" Text="Day"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlDay" runat="server">
                    <asp:ListItem>Monday</asp:ListItem>
                    <asp:ListItem>Tuesday</asp:ListItem>
                    <asp:ListItem>wednesday</asp:ListItem>
                    <asp:ListItem>Thursday</asp:ListItem>
                    <asp:ListItem>Friday</asp:ListItem>
                    <asp:ListItem>Saturday</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvDay" runat="server" 
                    ErrorMessage="please select a value" ControlToValidate="ddlDay" 
                    Display="Dynamic">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblStartTime" runat="server" Text="Start Time"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStartTime" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblEndTime" runat="server" Text="End Time"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEndTime" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnInsert" runat="server" Text="Insert" 
                    onclick="btnInsert_Click" />
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
    </asp:Panel>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnView" runat="server" onclick="btnView_Click" 
        Text="Click to add new Time Table" />
    <br />
    <p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="2" CssClass="center" ForeColor="Black" DataKeyNames="id">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" 
                SortExpression="id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="collegename" HeaderText="collegename" 
                SortExpression="collegename" />
            <asp:BoundField DataField="classname" HeaderText="classname" 
                SortExpression="classname" />
            <asp:BoundField DataField="periodname" HeaderText="periodname" 
                SortExpression="periodname" />
            <asp:BoundField DataField="day" HeaderText="day" 
                SortExpression="day" />
            <asp:BoundField DataField="starttime" HeaderText="starttime" 
                SortExpression="starttime" />
            <asp:BoundField DataField="endtime" HeaderText="endtime" 
                SortExpression="endtime" />
            <asp:BoundField DataField="subject" HeaderText="subject" 
                SortExpression="subject" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
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
        ProviderName="<%$ ConnectionStrings:biometricConnectionString1.ProviderName %>" 
        
            
            SelectCommand="SELECT classtimetable.id, mastercolleges.collegename, classtimetable.classname, classtimetable.periodname, classtimetable.day, classtimetable.starttime, classtimetable.endtime, classtimetable.subject FROM classtimetable INNER JOIN mastercolleges ON classtimetable.collegeid = mastercolleges.collegeid" 
            
            UpdateCommand="UPDATE [classtimetable] SET [classname] = @classname, [periodname] = @periodname, [day] = @day, [starttime] = @starttime, [endtime] = @endtime, [subject] = @subject WHERE [id] = @id" 
            DeleteCommand="DELETE FROM [classtimetable] WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="classname" />
            <asp:Parameter Name="periodname" />
            <asp:Parameter Name="day" />
            <asp:Parameter Name="starttime" />
            <asp:Parameter Name="endtime" />
            <asp:Parameter Name="subject" />
            <asp:Parameter Name="id" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </p>
    <br />
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
</asp:Content>

