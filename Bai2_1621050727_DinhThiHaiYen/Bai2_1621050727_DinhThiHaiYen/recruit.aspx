<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recruit.aspx.cs" Inherits="Bai2_1621050727_DinhThiHaiYen.recruit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tuyển dụng</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/recruit.css">
    <link rel="stylesheet" type="text/css" href="css/resetcss.css">
    <style type="text/css">
        .banner {
            background-image: url('images/bg_header.gif');
        }

        footer {
            background-image: url('images/bg_footer.gif');
        }

        .recruit-header {
            background-image: url('images/colleft_header_center.gif');
        }

        .circle {
            background-image: url('images/bg_header_content_center.gif');
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="banner">
                        <div class="clearfix">
                            <img class="float-left img-banner" src="images/logotestonline.jpg">
                        </div>
                        <div class="row pb-4 pt-1 mt-5 col-left">
                            <div class="col-md-1"></div>
                            <div class="col-md-2 text-center mar"><a class="text-uppercase font-weight-bold menu-color" href="">trang chủ</a></div>
                            <div class="col-md-2 text-center mar"><a class="text-uppercase font-weight-bold menu-color" href="">danh sách ứng tuyển</a></div>
                            <div class="col-md-3 text-center mar"><a class="text-uppercase font-weight-bold menu-color" href="">quy trình tuyển dụng</a></div>
                            <div class="col-md-2 mar"><a class="text-uppercase font-weight-bold menu-color" href="">test ứng viên</a></div>
                            <div class="col-md-1 text-center mar"><a class="text-uppercase font-weight-bold menu-color" href="">liên hệ</a></div>
                            <div class="col-md-1"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ends banner -->
            <div class="row pt-2">
                <div class="col-md-3 col-left">
                    <!-- thông tin tuyển dụng -->
                    <div class="py-3 text-uppercase text-center recruit-header color2 fw">thông báo tuyển dụng</div>
                    <div class="recruit-content pb-5 pt-2 custom-border">
                        <div class="pt-4 pb-2 pl-4">
                            <a class="text-capitalize font-weight-bold color3" href="#"><i class="fas fa-chevron-right mr-2 icon-color"></i>tuyển nhân sự t5/2014</a>
                        </div>
                        <div class="pt-4 pb-2 pl-4">
                            <a class="text-capitalize font-weight-bold color3" href="#"><i class="fas fa-chevron-right mr-2 icon-color"></i>tuyển nhân sự t7/2014</a>
                        </div>
                        <div class="pt-4 pb-2 pl-4">
                            <a class="text-capitalize font-weight-bold color3" href="#"><i class="fas fa-chevron-right mr-2 icon-color"></i>tuyển nhân sự t9/2014</a>
                        </div>
                    </div>
                    <!-- ends thông tin tuyển dụng -->
                    <!-- vị trí tuyển dụng -->
                    <div class="py-3 text-uppercase text-center mt-4 recruit-header color2 fw">vị trí tuyển dụng</div>
                    <div class="recruit-content pb-5 pt-2 custom-border">
                        <div class="pt-4 pb-2 pl-4">
                            <a class="text-capitalize font-weight-bold color3" href="#"><i class="fas fa-chevron-right mr-2 icon-color"></i>Kỹ sư lập trình</a>
                        </div>
                        <div class="pt-4 pb-2 pl-4">
                            <a class="text-capitalize font-weight-bold color3" href="#"><i class="fas fa-chevron-right mr-2 icon-color"></i>chuyên viên nghiên cứu</a>
                        </div>
                        <div class="pt-4 pb-2 pl-4">
                            <a class="text-capitalize font-weight-bold color3" href="#"><i class="fas fa-chevron-right mr-2 icon-color"></i>nhân viên tổng đài</a>
                        </div>
                        <div class="pt-4 pb-2 pl-4">
                            <a class="text-capitalize font-weight-bold color3" href="#"><i class="fas fa-chevron-right mr-2 icon-color"></i>nhân viên kỹ thuật</a>
                        </div>
                    </div>
                    <!-- ends vị trí tuyển dụng -->
                </div>
                <div class="col-md-9 text-center">
                    <div class="text-uppercase font-weight-bold py-3 color1 circle">quy trình tuyển dụng online</div>
                    <div>
                        <img class="img-fluid img-content" src="images/quytrinhtd.png">
                    </div>
                </div>
            </div>
            <!-- ends content -->
            <div class="row mt-3 mb-5">
                <div class="col-md-12 text-center">
                    <footer class="py-3 font-weight-bold">
                        <p class="text-capitalize mb-1">website được phát triển bởi: đinh thị hải yến - khoa <span class="text-uppercase">cntt</span></p>
                        <p>Liên hệ: Dinhyensamagada98@gmail.com SĐT: 0395582430</p>
                    </footer>
                </div>
            </div>
            <!-- ends footer -->
        </div>
        <!-- ends container -->

    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
