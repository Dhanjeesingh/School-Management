﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="class_room_student.aspx.cs" Inherits="class_room_student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Class Room Student</title>
    <style type="text/css">
        .auto-style1 {
            width: 30m%;
            border: 1px solid #00ffff;
            background-color: #ffffff;
            background-image:url(cr.jpg);
        }
        .auto-style2 {
            width: 318px;
        }
        .auto-style3 {
            width: 318px;
            height: 31px;
            text-align: center;
        }
        .auto-style4 {
            height: 31px;
            text-align: left;
            width: 553px;
        }
        .auto-style5 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style6 {
            width: 318px;
            text-align: center;
        }
        .auto-style7 {
            font-weight: bold;
            color: #FF0000;
        }
        .auto-style8 {
            font-size: medium;
            font-weight: bold;
            color: #009933;
        }
        .auto-style9 {
            color: #FF0000;
        }
        .auto-style10 {
            color: #FF0000;
            font-size: x-large;
        }
        .auto-style11 {
            text-align: left;
            width: 553px;
        }
        .auto-style12 {
            width: 553px;
        }
    </style>
</head>
    <center>
<body background="ritik.jpg">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="Class Room ID" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="auto-style4">
                    <strong>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7"></asp:TextBox>
                    </strong>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style9">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" style="font-weight: 700" Text="Student ID" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="auto-style11">
                    <strong>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style7"></asp:TextBox>
                    </strong>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" CssClass="auto-style9">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" CssClass="auto-style8" />
                    <strong>
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" CssClass="auto-style8" />
                    <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" CssClass="auto-style8" />
                    </strong>
                </td>
                <td class="auto-style12">
                    <strong>
                    <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" CssClass="auto-style8" />
                    <asp:Button ID="Button5" runat="server" Text="All Search" OnClick="Button5_Click" CssClass="auto-style8" />
                    <asp:Button ID="Button6" runat="server" Text="P Search" OnClick="Button6_Click" CssClass="auto-style8" />
                    </strong>
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Rptclassroomstudent.aspx">Report</asp:LinkButton>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  BackImageUrl="back.JPG" DataSourceID="SqlDataSource1" CssClass="auto-style10" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="classroom_id" HeaderText="Classroom Id" SortExpression="classroom_id" />
                <asp:BoundField DataField="student_id" HeaderText="Student Id" SortExpression="student_id" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [class_room_student]"></asp:SqlDataSource>
    </form>
</body>
</html>
