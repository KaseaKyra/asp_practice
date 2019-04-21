<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Bai2_1621050727_DinhThiHaiYen.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <style>
        body {
            background-image: url('images/body.jpg');
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container pb-3 mt-5">
            <div class="row mb-3">
                <div class="col-md-12 text-uppercase text-center font-weight-bold title py-3">đăng nhập hệ thống quản lý thông tin</div>
            </div>
            <div class="row">
                <div class="col-md-6 text-center">
                    <div id="demo" class="carousel slide border-form py-1" data-ride="carousel">
                        <ul class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                            <li data-target="#demo" data-slide-to="2"></li>
                            <li data-target="#demo" data-slide-to="3"></li>
                        </ul>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="images/login/login1.jpeg" alt="Sapa quê tôi" width="500" height="300">
                                <div class="carousel-caption">
                                    <p>Sapa quê tôi</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="images/login/login2.jpg" alt="Cố đô Huế" width="500" height="300">
                                <div class="carousel-caption">
                                    <p>Cố đô Huế</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="images/login/login3.gif" alt="Đảo Phú Quốc" width="500" height="300">
                                <div class="carousel-caption">
                                    <p>Đảo Phú Quốc</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="images/login/login4.jpg" alt="Lạng Sơn quê tôi" width="500" height="300">
                                <div class="carousel-caption">
                                    <p>Lạng Sơn quê tôi</p>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                </div>
                <div class="col-md-6 text-center px-5">
                    <div class="p-2 border-form">
                        <img class="img-fluid" src="images/login/login5.png">
                        <form action="/action_page.php">
                            <div class="text-left">
                                <label for="">Tên đăng nhập</label>
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroup-sizing-default"><i class="fas fa-user-alt"></i></span>
                                </div>
                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                            </div>
                            <div class="text-left">
                                <label class="text-left" for="">Mật khẩu</label>
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroup-sizing-default"><i class="fas fa-bolt"></i></span>
                                </div>
                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                            </div>
                            <div class="clearfix">
                                <button type="submit" class="btn btn-primary float-left mr-3">Đăng nhập</button>
                                <button type="submit" class="btn btn-danger float-left">Hủy bỏ</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row mt-5 d-flex h-100" id="footer">
                <div class="col-md-2"></div>
                <div class="col-md-8 text-center">
                    <div class="row">
                        <div class="col-md-4 float-right py-2">
                            <div class="text-uppercase f-color f-text">humg</div>
                            <div class="f-color">www.humg.edu.vn</div>
                        </div>
                        <div class="col-md-8 text-uppercase text-center font-weight-bold justify-content-center align-self-center">
                            bản quyền thuộc về khoa: công nghệ thông tin
                        </div>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
