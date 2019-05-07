<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmBai1_HienThiSo.aspx.cs" Inherits="Bai3_1621050727_DinhThiHaiYen.frmBai1_HienThiChuSo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hien thi so</title>
    <link href="css/Bai1_HienThiSo.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="b1-box">
            <p class="b1-title">Tổng 4 số tự nhiên co phần dư khi chia cho 10 = :</p>
            <p>
                <asp:TextBox ID="txbInput" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="btnCalc" runat="server" Text=" - Xác định - " OnClick="btnCalc_Click" />
            </p>
            <p class="b1-quantity">
                <asp:Label ID="lblQuantity" runat="server" Text="0"></asp:Label>
            </p>
            <p>
                <asp:ListBox ID="lbResult" runat="server" CssClass="b1-listbox"></asp:ListBox>
            </p>
        </div>
    </form>
</body>
</html>
