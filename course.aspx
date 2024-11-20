﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="course.aspx.cs" Inherits="course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course</title>
    <style type="text/css">
        .auto-style1 {
            width: 30s%;
            border: 1px solid #00ffff;
            background-color: #ffffff;
            background-image:url(course.jpg);
        }
        .auto-style2 {
            width: 212px;
            font-weight: 700;
        }
        .auto-style4 {
            color: #FFFFFF;
            font-size: large;
        }

        .auto-style5 {
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style7 {
            font-weight: bold;
            font-size: medium;
            color: #009933;
        }

        .auto-style8 {
            text-align: left;
            width: 658px;
        }

        .auto-style9 {
            width: 658px;
            height: 53px;
        }
        .auto-style10 {
            width: 212px;
            font-weight: 700;
            height: 53px;
        }

    </style>
</head>
    <center>
<body background="ritik.jpg">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Course ID" CssClass="auto-style4"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Name" CssClass="auto-style4"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Description" CssClass="auto-style4"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Grade ID" CssClass="auto-style4"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <strong>
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" CssClass="auto-style7" />
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" CssClass="auto-style7" />
                    </strong>
                </td>
                <td class="auto-style9">
                    <strong>
                    <asp:Button ID="Button5" runat="server" Text="AllSearch" OnClick="Button5_Click" CssClass="auto-style7" />
                    <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" CssClass="auto-style7" />
                    <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" CssClass="auto-style7" />
                    </strong>
                    <asp:Button ID="Button6" runat="server" Text="PSearch" OnClick="Button6_Click" CssClass="auto-style7" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Rptcourse.aspx">Report</asp:LinkButton>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackImageUrl="back.JPG" DataSourceID="SqlDataSource1" CssClass="auto-style5" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="course_id" HeaderText="Course Id" SortExpression="course_id" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="desc1" HeaderText="Desc1" SortExpression="desc1" />
                <asp:BoundField DataField="grade_id" HeaderText="Grade Id" SortExpression="grade_id" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [course]"></asp:SqlDataSource>
    </form>
</body>
</html>
