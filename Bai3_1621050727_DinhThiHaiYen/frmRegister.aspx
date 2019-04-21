<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmRegister.aspx.cs" Inherits="Bai3_1621050727_DinhThiHaiYen.frmRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="css/Bai3_Register.css" rel="stylesheet" />
    <link href="bootstrap-4.3.1-dist/bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <p>THÔNG TIN CÁ NHÂN CỦA THÀNH VIÊN</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2 text-center">
                    <img class="img-fluid" src="imgs/img_avatar1.png" />
                </div>
                <div class="col-md-10">
                    <p>
                        <span class="info mr-5">Họ và tên:(*)</span>
                        <asp:TextBox ID="txbName" runat="server"></asp:TextBox>
                    </p>
                    <p>
                        <span class="info mr-5">Ngày sinh:</span>
                        <span class="info">ngày:</span><asp:DropDownList ID="ddlDay" runat="server"></asp:DropDownList>
                        <span class="info">tháng:</span><asp:DropDownList ID="ddlMonth" runat="server"></asp:DropDownList>
                        <span class="info">năm:</span><asp:DropDownList ID="ddlYear" runat="server"></asp:DropDownList>
                    </p>
                    <p>
                        <span class="info mr-5">Giới tính:</span>
                        <asp:RadioButton ID="rbMale" runat="server" Text="Nam" GroupName="Gender" />
                        <asp:RadioButton ID="rbFemale" runat="server" Text="Nữ" GroupName="Gender" Checked="True" />
                    </p>
                    <p>
                        <span class="info mr-5">Điện thoại:(*)</span>
                        <asp:TextBox ID="txbPhone" runat="server"></asp:TextBox>
                    </p>
                    <p>
                        <span class="info mr-5">Email:(*)</span>
                        <asp:TextBox ID="txbEmail" runat="server"></asp:TextBox>
                    </p>
                    <p>
                        <span class="info mr-5">Địa chỉ:(*)</span>
                        <asp:TextBox ID="txbAddress" runat="server"></asp:TextBox>
                    </p>
                    <p>
                        <asp:Button ID="btnLogin" runat="server" Text="Đồng ý" OnClick="btnLogin_Click"
                            CssClass="btn btn-dark mr-5 px-4" PostBackUrl="~/Infor_Register.aspx" />
                        <asp:Button ID="btnCancel" runat="server" Text="Hủy" OnClick="btnCancel_Click"
                            CssClass="btn btn-dark px-4" />
                    </p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
