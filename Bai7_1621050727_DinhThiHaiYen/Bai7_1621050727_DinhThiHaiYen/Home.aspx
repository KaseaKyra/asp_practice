<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Bai7_1621050727_DinhThiHaiYen.Home" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Overlay effect when opening sidebar on small screens -->
    <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor: pointer" title="close side menu" id="myOverlay"></div>
    <!-- !PAGE CONTENT! -->
    <div class="w3-main" style="margin-left: 300px; margin-top: 43px;">
        <header class="w3-container" style="padding-top: 22px">
            <h5><b><i class="fa fa-dashboard"></i><strong>TỔNG HỢP DỮ LIỆU HỆ THỐNG</strong></b></h5>
        </header>
        <div class="w3-row-padding w3-margin-bottom">
            <div class="w3-quarter">
                <div class="w3-container w3-red w3-padding-16">
                    <div class="w3-left"><i class="fa fa-comment w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>
                            <asp:Label ID="lblHoSoSv" runat="server" Text="0"></asp:Label>
                        </h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Hồ sơ sinh viên</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-blue w3-padding-16">
                    <div class="w3-left"><i class="fa fa-eye w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>
                            <asp:Label ID="lblHoSoGv" runat="server" Text="0"></asp:Label>
                        </h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Hồ sơ giáo viên</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-teal w3-padding-16">
                    <div class="w3-left"><i class="fa fa-share-alt w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>
                            <asp:Label ID="lblDoAnTn" runat="server" Text="0"></asp:Label>
                        </h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Đồ án tốt nghiệp</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-orange w3-text-white w3-padding-16">
                    <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>
                            <asp:Label ID="lblSoCn" runat="server" Text="0"></asp:Label>
                        </h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Số chuyên ngành</h4>
                </div>
            </div>
        </div>
        <%--Thống kê theo sinh viên chuyên ngành--%>
        <div class="w3-container">
            <h5><strong>Thống kê theo sinh viên chuyên ngành</strong></h5>
            <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
                <tr class="w3-green">
                    <th>STT</th>
                    <th>Mã chuyên ngành</th>
                    <th>Chuyên ngành</th>
                    <th>Số sinh viên</th>
                    <th>Chi tiết</th>
                </tr>
                <asp:Literal ID="ltrSvcn" runat="server"></asp:Literal>
            </table>
        </div>
        <hr />
        <%--THỐNG KÊ ĐỒ ÁN THEO ĐIỂM--%>
        <div class="w3-container">
            <h5><strong>Điểm đồ án </strong></h5>
            <div class="w3-lime w3-padding">
                <h5><a href="DiemNhoHon7.aspx">Điểm đồ án <= 7 ------------------- 
                        <asp:Label ID="lblDiem1" runat="server" Text="0"></asp:Label>
                    đồ án</a>
                </h5>
            </div>
        </div>
        <div class="w3-container">
            <div class="w3-cyan w3-padding">
                <h5>
                    <a href="DiemNhoHon8.aspx">Điểm đồ án từ 7.1 đến 8.0 ------------------- 
                            <asp:Label ID="lblDiem2" runat="server" Text="0"></asp:Label>
                        đồ án</a>
                </h5>
            </div>
        </div>
        <div class="w3-container">
            <div class="w3-teal w3-padding">
                <h5>
                    <a href="DiemNhoHon9.aspx">Điểm đồ án từ 8.1 đến 9.0 ------------------- 
                            <asp:Label ID="lblDiem3" runat="server" Text="0"></asp:Label>
                        đồ án</a>
                </h5>
            </div>
        </div>
        <div class="w3-container">
            <div class="w3-orange w3-padding">
                <h5>
                    <a href="DiemNhoHon10.aspx">Điểm đồ án từ 9.1 đến 10.0 -------------------  
                            <asp:Label ID="lblDiem4" runat="server" Text="0"></asp:Label>
                        đồ án</a>
                </h5>
            </div>
        </div>
        <hr />
        <%--THỐNG KÊ ĐỒ ÁN THEO LĨNH VỰC TỐT NGHIỆP--%>
        <div class="w3-container">
            <h5><strong>Thống kê đồ án theo lĩnh vực tốt nghiệp</strong></h5>
            <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
                <tr class="w3-green">
                    <th>STT</th>
                    <th>Mã lĩnh vực</th>
                    <th>Lĩnh vực</th>
                    <th>Số đồ án</th>
                    <th>Chi tiết</th>
                </tr>
                <asp:Literal ID="ltrDaTheoLv" runat="server"></asp:Literal>
            </table>
        </div>
    </div>
    <hr />
</asp:Content>
