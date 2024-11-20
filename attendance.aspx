﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="attendance.aspx.cs" Inherits="attendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Attendance</title>
    <style type="text/css">
        .auto-style1 {
            width: 30s%;
            border: 1px solid #00ffff;
            background-color: #ffffff;
            background-image:url(atte.jpg);
        }
        .auto-style2 {
            width: 403px;
        }
        .auto-style3 {
            width: 403px;
            height: 33px;
            font-weight: bold;
        }
        .auto-style5 {
            font-weight: bold;
            color: #FF0000;
        }
        .auto-style6 {
            width: 403px;
            height: 33px;
            font-weight: normal;
            color: #FFFFFF;
        }
        #form1 {
            font-weight: 700;
        }
        .auto-style7 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style9 {
            width: 403px;
            font-weight: normal;
            color: #FFFFFF;
        }
        .auto-style10 {
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style12 {
            font-size: large;
            font-weight: bold;
            color: #009933;
        }
        .auto-style13 {
            font-size: large;
            color: #009933;
        }
        .auto-style15 {
            font-size: medium;
            color: #009933;
        }
        .auto-style16 {
            height: 33px;
            text-align: left;
            width: 571px;
        }
        .auto-style17 {
            text-align: left;
            width: 571px;
        }
        .auto-style18 {
            width: 571px;
        }
    </style>
</head>
    <center>
<body background="ritik.jpg">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="Date" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <strong>
                    <asp:Label ID="Label2" runat="server" Text="Student ID" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style16">
                    <strong>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5"></asp:TextBox>
                    </strong>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <strong>
                    <asp:Label ID="Label3" runat="server" style="text-align: center" Text="Status " CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style17">
                    <strong>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style5"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <strong>
                    <asp:Label ID="Label4" runat="server" Text="Remark" CssClass="auto-style7"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style17">
                    <strong>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style5"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" CssClass="auto-style12" />
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" CssClass="auto-style12" />
                    </strong>
                    <asp:Button ID="Button3" runat="server" style="font-weight: 700" Text="Update" OnClick="Button3_Click" CssClass="auto-style13" />
                </td>
                <td class="auto-style18">
                    <asp:Button ID="Button4" runat="server" style="font-weight: 700" Text="Delete" OnClick="Button4_Click" CssClass="auto-style15" />
                    <asp:Button ID="Button5" runat="server" style="font-weight: 700" Text="All Search" OnClick="Button5_Click" CssClass="auto-style15" />
                    <asp:Button ID="Button6" runat="server" style="font-weight: 700" Text="P Search" OnClick="Button6_Click" CssClass="auto-style15" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Rptattendance.aspx">Report</asp:LinkButton>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  BackImageUrl="back.JPG" DataSourceID="SqlDataSource1" CssClass="auto-style10" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                <asp:BoundField DataField="student_id" HeaderText="Student Id" SortExpression="student_id" />
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [attendance]"></asp:SqlDataSource>
    </form>
</body>
</html>
