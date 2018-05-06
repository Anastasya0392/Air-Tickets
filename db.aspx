<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="db.aspx.cs" Inherits="TicketSales.db" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:air ticketsConnectionString3 %>" SelectCommand="SELECT * FROM [View_1]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" PageSize="30">
            <Columns>
                <asp:BoundField DataField="Location_City" HeaderText="Место отправления" SortExpression="Location_City" />
                <asp:BoundField DataField="Destination_City" HeaderText="Место прибытия" SortExpression="Destination_City" />
                <asp:BoundField DataField="Date" HeaderText="Дата" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Время" SortExpression="Time" />
                <asp:BoundField DataField="Class" HeaderText="Класс" SortExpression="Class" />
                <asp:BoundField DataField="Cost" HeaderText="Стоимость" SortExpression="Cost" />
                <asp:BoundField DataField="Duration" HeaderText="Время в пути" SortExpression="Duration" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    </form>
</body>
</html>
