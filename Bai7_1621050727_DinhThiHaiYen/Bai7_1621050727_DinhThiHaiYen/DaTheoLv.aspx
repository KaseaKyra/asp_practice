<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DaTheoLv.aspx.cs" Inherits="Bai7_1621050727_DinhThiHaiYen.DaTheoLv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Overlay effect when opening sidebar on small screens -->
    <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor: pointer" title="close side menu" id="myOverlay"></div>
    <!-- !PAGE CONTENT! -->
    <div class="w3-main" style="margin-left: 300px; margin-top: 43px;">
        <div class="w3-container">
            <h5><strong>DANH SÁCH ĐỒ ÁN THEO LĨNH VỰC</strong></h5>
            <div class="w3-text-orange lbl-style">
                Tổng số bản ghi:
                <asp:Label ID="lblSumRecord" runat="server" Text="0"></asp:Label>
            </div>
            <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
                <tr class="w3-blue">
                    <th>STT</th>
                    <th>Mã sinh viên</th>
                    <th>Tên sinh viên</th>
                    <th>Tên đồ án</th>
                    <th>GVHD</th>
                    <th>GVPB</th>
                    <th>Lĩnh vực</th>
                    <th>Điểm</th>
                    <th>Năm TN</th>
                </tr>
                <asp:Literal ID="ltrDaTheoLv" runat="server"></asp:Literal>
            </table>
        </div>
    </div>
</asp:Content>

