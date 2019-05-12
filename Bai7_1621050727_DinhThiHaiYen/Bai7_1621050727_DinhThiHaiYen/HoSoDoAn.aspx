<%@ Page MasterPageFile="~/MasterPage.Master" Language="C#" AutoEventWireup="true" CodeBehind="HoSoDoAn.aspx.cs" Inherits="Bai7_1621050727_DinhThiHaiYen.HoSoDoAn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Overlay effect when opening sidebar on small screens -->
    <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor: pointer" title="close side menu" id="myOverlay"></div>
    <!-- !PAGE CONTENT! -->
    <div class="w3-main" style="margin-left: 300px; margin-top: 43px;">
        <!-- Header -->
        <div class="w3-container" style="padding-top: 22px">
            <h5><strong>DANH SÁCH ĐỒ ÁN TRONG CƠ SỞ DỮ LIỆU</strong></h5>
        </div>
        <div class="w3-row">
            <div class="w3-container">
                <asp:TextBox ID="txbSearch" runat="server" CssClass="par txb-width"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Tìm kiếm" CssClass="w3-button w3-green par" />
                <asp:DropDownList ID="ddlLinhVuc" runat="server" CssClass="par"></asp:DropDownList>
                <asp:DropDownList ID="ddlGiangVien" runat="server" CssClass="par"></asp:DropDownList>
                <asp:DropDownList ID="ddlDiem" runat="server" CssClass="par"></asp:DropDownList>
            </div>
        </div>
        <div class="w3-container">
            <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
                <tr class="w3-blue">
                    <th>STT</th>
                    <th>Mã SV</th>
                    <th>Tên sinh viên</th>
                    <th>Tên đồ án</th>
                    <th>GVHD</th>
                    <th>GVPB</th>
                    <th>Lĩnh vực</th>
                    <th>Điểm</th>
                    <th>Năm TN</th>
                </tr>
                <asp:Literal ID="ltrHoSoDoAn" runat="server"></asp:Literal>
            </table>
        </div>
    </div>
</asp:Content>
