<%-- 
    Document   : dangNhap
    Created on : Jun 10, 2022, 4:18:56 PM
    Author     : daodu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        .dnhap{
            width: 320px;
            height: 300px;
            border: 1px solid grey;
            border-radius: 10px;
            text-align: center;
            margin: 50px auto;
            background-color: #DDDDDD;
        }
        h2{
            color: black;
            font-family: sans-serif;
        }
        .dnhap .mail1{
            text-align: left;
            padding-right:  22px;
        }
        .dnhap #mk{
            text-align: left;
        }
        .dnhap input{
            width: 200px;
            height: 40px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid grey;
            padding-left: 20px;
 
        }
        .dnhap #btn{
            width: 220px;
            height: 40px;
            margin-bottom: 10px;
            border-radius: 5px;
            border:none;
            background-color: #45a049;
            color: white;
        }
        .dnhap button:hover{
            font-size: 15px;
        }
        </style>
    </head>
    <body>
        <div class="dnhap">
            <form method="post" action="dangnhap" id="dnhap1">
		<h2>Đăng nhập</h2>
                <label for="mail" class="mail1" >Email </label>
                <input type="text" placeholder="Email..." id="mail" name="mail"> <br>
                <label for="matkhau" class="matkhau1">Mật khẩu</label>
                <input type="password" placeholder="Mật khẩu..." id="mk" name="mk">
                <br><br>
		 <input type="submit" ;" id="btn" name="btn" value="Đăng nhập"/>
                <br>
                <p>Nếu chưa có tài khoản hãy nhấn <a href="dki.jsp" class="link-dki">Đăng ký</a></p>
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
        </script><script>
            
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
