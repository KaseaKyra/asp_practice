<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmBai2_ChuyenDoi.aspx.cs" Inherits="Bai3_1621050727_DinhThiHaiYen.frmBai1_ChuyenDoi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chuyển đổi</title>
    <link href="bootstrap-4.3.1-dist/bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row" style="margin-top: 20%;">
                <div class="col-md-12 text-center">
                    <p class="font-weight-bold">BỘ CHUYỂN ĐỔI THẬP PHÂN</p>
                    <p>
                        Số thập phân:
                        <asp:TextBox ID="txbInput" runat="server"></asp:TextBox>
                    </p>
                    <p>
                        <asp:RadioButton ID="rbBinary" runat="server" Text="Hệ nhị phân" GroupName="Kind" />
                        <asp:RadioButton ID="rbOctal" runat="server" Text="Hệ bát phân" GroupName="Kind" />
                        <asp:RadioButton ID="rbHexsan" runat="server" Text="Hệ thập lục phân" GroupName="Kind" />
                    </p>
                    <p>
                        <asp:Button ID="btnConvert" runat="server" Text="Chuyển đổi" OnClick="btnConvert_Click" />
                    </p>
                    <p>
                        <asp:TextBox ID="txbResult" runat="server" BackColor="Yellow" ForeColor="Red" CssClass="font-weight-bold"></asp:TextBox>
                    </p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
