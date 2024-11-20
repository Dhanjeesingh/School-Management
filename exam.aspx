<%@ Page Language="C#" AutoEventWireup="true" CodeFile="exam.aspx.cs" Inherits="exam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam</title>
    <style type="text/css">
        .auto-style1 {
            width: 30s%;
            border: 1px solid #00ffff;
            background-color: #ffffff;
            background-image:url(exa.jpg);
        }
        .auto-style2 {
            width: 278px;
        }
        .auto-style3 {
            width: 278px;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
            text-align: left;
            width: 560px;
        }
        .auto-style7 {
            font-size: medium;
            font-weight: bold;
            color: #009933;
        }
        .auto-style8 {
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style9 {
            color: #FF0000;
        }
        .auto-style10 {
            font-size: large;
            color: #FF0000;
        }
        .auto-style11 {
            font-weight: bold;
            color: #FF0000;
        }
        .auto-style12 {
            text-align: left;
            width: 560px;
        }
        .auto-style13 {
            width: 560px;
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
                    <asp:Label ID="Label1" runat="server" Text="Exam ID" CssClass="auto-style9"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style4">
                    <strong>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style11"></asp:TextBox>
                    </strong>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Label ID="Label2" runat="server" Text="Exam Type ID" CssClass="auto-style9"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style12">
                    <strong>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style11"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Label ID="Label3" runat="server" Text="Name" CssClass="auto-style10"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style12">
                    <strong>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style11"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Label ID="Label4" runat="server" Text="Start Date" CssClass="auto-style10"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style12">
                    <strong>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style11"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" CssClass="auto-style7" />
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" CssClass="auto-style7" />
                    <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" CssClass="auto-style7" />
                    </strong>
                </td>
                <td class="auto-style13">
                    <strong>
                    <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" CssClass="auto-style7" />
                    <asp:Button ID="Button5" runat="server" Text="All Search" OnClick="Button5_Click" CssClass="auto-style7" />
                    <asp:Button ID="Button6" runat="server" Text="P Search" OnClick="Button6_Click" CssClass="auto-style7" />
                    </strong>
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Rptexam.aspx">Report</asp:LinkButton>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
        <strong>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackImageUrl="back.JPG" DataSourceID="SqlDataSource1" CssClass="auto-style8" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="exam_id" HeaderText="Exam Id" SortExpression="exam_id" />
                <asp:BoundField DataField="exam_type_id" HeaderText="Exam Type Id" SortExpression="exam_type_id" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="start_date" HeaderText="Start Date" SortExpression="start_date" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [exam]"></asp:SqlDataSource>
    </form>
</body>
</html>
