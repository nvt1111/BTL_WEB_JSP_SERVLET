<%-- 
    Document   : dki
    Created on : May 30, 2022, 9:59:34 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles/main1.css" />
        <!--<script src=”script1.js”></script>-->
    </head>
    <body>
        <div class="dki">
            <form method="post" action="" id="dki1">
		<h2>Dang ky</h2>
                <label for="ten" class="ten">Ten day du </label>
                <input type="text" placeholder="Nhap ten..." id="ten1" name="ten1"> 
                <br>
                <label for="sdt" class="sdt">So dien thoai </label>
                <input type="text" placeholder="Nhap sdt..." id="sdt1" name="sdt1">
                <br>
                <label for="mail" class="mail">Email </label>
                <input type="text" placeholder="Email..." id="mail1" name="mail1">
                <br>
                <label for="matkhau1" class="matkhau1">Mat khau</label>
                <input type="password" placeholder="Mat khau..." id="mk1" name="mk1">                
                <label for="matkhau2" class="matkhau2">Nhap lai mk</label>
                <input type="password" placeholder="Nhap lai mat khau..." id="mk2" name="mk2">
                <br><br>             
                <input type="submit" onclick="return KiemTra();" id="btn" name="btn" value="Dang ky"/>
                </form>
	</div>
        <script>
            
        function layGT(id){
                    return document.getElementById(id).value.trim();
                }
        function KiemTra()
        {
            var k = true; 
            
            // 1 kiem tra Ten
            var ten1 = layGT('ten1');
            if (ten1 == '' || ten1.length < 5){
                k = false;
                alert('Vui lòng kiểm tra lại tên người dùng !');
            }

            // 2. kiem tra mat khau
            var mk1 = layGT('mk1');
            var mk2 = layGT('mk2');
            if (mk1 == '' || mk1.length < 2 || mk1 != mk2){
                k = false;
                alert('Vui lòng kiểm tra lại mật khẩu !');
            }

            // 3. Phone
            var sdt1 = layGT('sdt1');
            if (sdt1 != '' &&  !/^[0-9]{4}$/.test(sdt1)){
                k = false;
                alert('Vui lòng kiểm tra lại msố điện thoại !');
            }
            // 4. Email    
            var mail1 = layGT('mail1');
            var ktra = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            if (!ktra.test(mail1)){
                k = false;
                alert('Kiểm tra lại email');
            }
            
            if(k==true){
                alert('Đăng kí thành công!');
            }
             return k;
            
        }
        </script>
    </body>

</html>
