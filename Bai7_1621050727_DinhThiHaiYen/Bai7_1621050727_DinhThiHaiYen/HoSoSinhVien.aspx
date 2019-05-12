<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HoSoSinhVien.aspx.cs" Inherits="Bai7_1621050727_DinhThiHaiYen.HoSoSSinhVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Overlay effect when opening sidebar on small screens -->
    <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor: pointer" title="close side menu" id="myOverlay"></div>
    <!-- !PAGE CONTENT! -->
    <div class="w3-main" style="margin-left: 300px; margin-top: 43px;">
        <div class="w3-container">
            <h5><strong>HỒ SƠ SINH VIÊN TRONG CƠ SỞ DỮ LIỆU</strong></h5>
        </div>
        <div class="w3-row">
            <div class="w3-half w3-container">
                <div class="w3-half w3-container">
                    <asp:TextBox ID="txbSearch" runat="server"></asp:TextBox>
                </div>
                <div class="w3-half w3-container">
                    <asp:Button ID="btnSearch" runat="server" Text="Tìm kiếm" CssClass="w3-button w3-green" />
                </div>
            </div>
            <div class="w3-half w3-container">
                <div class="w3-half w3-container">
                    <asp:DropDownList ID="ddlKhoa" runat="server" Width="150px"></asp:DropDownList>
                </div>
                <div class="w3-half w3-container">
                    <asp:DropDownList ID="ddlChuyenNganh" runat="server"></asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="w3-container">
            <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
                <tr class="w3-blue">
                    <th>STT</th>
                    <th>Mã sinh viên</th>
                    <th>Tên sinh viên</th>
                    <th>Ngày sinh</th>
                    <th>Giới tính</th>
                    <th class="auto-style1">Khóa</th>
                    <th>Chuyên ngành</th>
                    <th>Email</th>
                    <th>Điện thoại</th>
                    <th>Địa chỉ</th>
                </tr>
                <asp:Literal ID="ltrHoSoSv" runat="server"></asp:Literal>
            </table>
        </div>
    </div>
</asp:Content>


