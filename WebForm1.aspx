<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TicketSales.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <title></title>
    <style type="text/css">
        #form1 {
            height: 23px;
        }
    </style>
</head>
<body background ="img/Image1.jpg">

    <form id="form1" runat="server">
        <div style="height: 105px; width: 300px">
            <p style="height: 27px; width: 1258px; margin-left: 0px; font-family: Arial; font-size: large; color: #F9FADA; font-variant: normal; font-style: italic; font-weight: bold; text-align: justify; text-transform: uppercase;" aria-orientation="horizontal" aria-selected="false">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Заказ авиабилетов</p>
        <p aria-orientation="horizontal" aria-selected="false" style="height: 31px; width: 252px; font-family: Arial; font-size: large; color: #F9FADA; font-variant: normal; font-style: italic; font-weight: bold; text-align: left; text-transform: uppercase; margin-left: 0px">
            выберите направление</p>
           
        <p aria-orientation="horizontal" aria-selected="false" style="height: 47px; width: 450px; font-family: Arial; font-size: large; color: #F9FADA; font-variant: normal; font-style: italic; font-weight: bold; text-align: center; text-transform: uppercase; margin-left: 466px; margin-right: 0px; line-height: 65px;">
            куда: </p>
        </div>
        <p aria-orientation="horizontal" aria-selected="false" style="height: 26px; width: 452px; font-family: Arial; font-size: large; color: #F9FADA; font-variant: normal; font-style: italic; font-weight: bold; text-align: center; text-transform: uppercase; margin-left: 0px; margin-top: 12px; margin-right: 646px; margin-bottom: 8px;">
            откуда:</p>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Location_City" DataValueField="Location_City" Height="30px" Width="451px">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Destination_City" DataValueField="Destination_City" Height="30px" Width="465px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:air ticketsConnectionString3 %>" ProviderName="<%$ ConnectionStrings:air ticketsConnectionString3.ProviderName %>" SelectCommand="SELECT [Destination_City] FROM [Destination]" OnSelecting="SqlDataSource2_Selecting1"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:air ticketsConnectionString3 %>" SelectCommand="SELECT [Location_City] FROM [Location]"></asp:SqlDataSource>
            
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#E79D14" Height="46px" style="margin-left: 314px; margin-right: 459px; margin-top: 102px" Text="Показать доступные рейсы" Width="304px" OnClick="Button1_Click" />
    </form>
</body>
</html>
