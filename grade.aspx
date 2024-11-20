﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="grade.aspx.cs" Inherits="grade" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grade</title>
   
    <style type="text/css">
        .auto-style1 {
            width: 35m%;
            border: 1px solid #00ffff;
            background-color: #ffffff;
            background-image:url(dark.jpg);
        }
        .auto-style2 {
            width: 350px;
            font-weight: 700;
        }
        .auto-style3 {
            font-size: large;
            color: #FF0000;
        }
        .auto-style4 {
            width: 503px;
            font-weight: bold;
        }
        .auto-style13 {
            font-weight: 700;
            color: #800000;
        }
        .auto-style14 {
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style15 {
            font-weight: bold;
            font-size: medium;
            color: #339933;
            background-color: #00FFCC;
        }
        .auto-style16 {
            text-align: left;
            width: 525px;
        }
        .auto-style17 {
            width: 525px;
        }
    </style>
</head>
    <center>
<body background="ritik.jpg">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Grade_ID" style="font-weight: 700; font-size: large; color: #FF0000"></asp:Label>
                </td>
                <td style="font-weight: 700" class="auto-style16">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style13"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Name" CssClass="auto-style3"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style13"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Description" CssClass="auto-style3"></asp:Label>
                </td>
                <td class="auto-style16">
                    
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style13"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" CssClass="auto-style15" />
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" CssClass="auto-style15" />
                    <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" CssClass="auto-style15" />
                    </strong>
                </td>
                <td class="auto-style17">
                    <strong>
                    <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" CssClass="auto-style15" />
                    <asp:Button ID="Button5" runat="server" Text="AllSearch" OnClick="Button5_Click" CssClass="auto-style15" />
                    <asp:Button ID="Button6" runat="server" Text="Psearch" OnClick="Button6_Click" CssClass="auto-style15" />
                    </strong>
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Rptgrade.aspx">Report</asp:LinkButton>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
        <strong>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackImageUrl="back.JPG" CssClass="auto-style14" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="grade_id" HeaderText="Grade Id" SortExpression="grade_id" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="desc1" HeaderText="Desc1" SortExpression="desc1" />
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
        </strong>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [grade]"></asp:SqlDataSource>
    </form>
</body>
</html>
