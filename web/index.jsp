<%-- 
    Document   : login
    Created on : May 28, 2022, 9:13:12 PM
    Author     : Dell
type="text/css"
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles/main.css" />
        <!--<link rel="stylesheet" href="js/script1.js"/>-->
    </head>
    <body>
        <div class="dnhap">
            <form method="post" action="" id="dnhap1">
		<h2>Dang nhap</h2>
                <label for="mail" class="mail1">Email </label>
                <input type="text" placeholder="Email" id="mail" name="mail"> <br>
                <label for="matkhau" class="matkhau1">Mat khau</label>
                <input type="password" placeholder="Mat khau" id="mk" name="mk">
                <br><br>
		 <input type="submit" onclick="return KiemTra();" id="btn" name="btn" value="Dang nhap"/>
                <br>
                <p>Neu chua co tai khoan hay nhan  <a href="dki.jsp" class="link-dki">Dang ky</a></p>
            </form>
	</div>
        <script>
            
        function layGT(id){
                    return document.getElementById(id).value.trim();
                }
        function KiemTra()
        {
            var k = true; 

            // 1. Email    
            var mail = layGT('mail');
            var ktra = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            if (!ktra.test(mail)){
                k = false;
                alert('Kiểm tra lại email');
            }   
            // 2. kiem tra mat khau
            var mk1 = layGT('mk');
            if (mk1 == '' || mk1.length < 2 ){
                k = false;
                alert('Vui lòng kiểm tra lại mật khẩu !');
            }
            if(k==true){
                alert('Đăng nhập thành công!');
            }
            return k;
        }
        </script>
    </body>
</html>
