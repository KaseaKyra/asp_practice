<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CKEditor.aspx.cs" Inherits="Bai3_1621050727_DinhThiHaiYen.CKEditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ckeditor</title>
    <link href="bootstrap-4.3.1-dist/bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="//cdn.ckeditor.com/4.11.3/standard/ckeditor.js"></script>
    <script type="text/javascript" src="~/ckfinder/ckfinder.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="row">
                <div class="col-12">
                    <p>
                        Địa chỉ email:
                        <asp:TextBox ID="txbEmail" runat="server" />
                    </p>
                    <textarea rows="4" cols="50" id="editor">
                    </textarea>
                    <asp:Button ID="btnSendEmail" Text="Gửi email" runat="server" CssClass="btn btn-success mt-5" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
<script>        
    var editor = CKEDITOR.replace("editor");
    CKFinder.setupCKEditor(editor);
</script>
