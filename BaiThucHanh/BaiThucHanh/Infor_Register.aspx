<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Infor_Register.aspx.cs" Inherits="Bai3_1621050727_DinhThiHaiYen.Infor_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thông tin đăng nhập</title>
    <link href="css/Bai3_Register.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-12 b3-border p-5 mt-5">
                    <p class="font-weight-bold text-uppercase">Thông tin thành viên đã đăng ký</p>
                    <p>
                        Họ tên:
                        <asp:Label ID="lblname" runat="server" Text=""></asp:Label>
                    </p>
                    <hr />
                    <p>
                        Ngày sinh:
                        <asp:Label ID="lblDateOfBirth" runat="server" Text=""></asp:Label>
                    </p>
                    <hr />
                    <p>
                        Giới tính:
                        <asp:Label ID="lblGender" runat="server" Text=""></asp:Label>
                    </p>
                    <hr />
                    <p>
                        Điện thoại:
                        <asp:Label ID="lblPhone" runat="server" Text=""></asp:Label>
                    </p>
                    <hr />
                    <p>
                        Email:
                        <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                    </p>
                    <hr />
                    <p>
                        Địa chỉ:
                        <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label>
                    </p>
                    <hr />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
