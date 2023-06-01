<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        
        <style>
            h1{
            text-align: center;
            color: black;
            font-family: sans-serif;
        }
        .form{
            width: 410px;
            height: 450px;
            border: 1px solid grey;
            border-radius: 10px;
            text-align: center;
            margin: 50px auto;
            background-color: #EEEEEE;
        }
        .ten{
            color: black;
            padding-right: 80px;
            height: 30px;
            width: 160px;
        }
        .email{
            color: black;
            padding-right: 80px;
            height: 30px;
            width: 160px;
        }
        .dchi{
            color: black;
            padding-right: 80px;
            height: 30px;
            width: 160px;
        }
        .soDT{
            color: black;
            padding-right: 80px;
            height: 30px;
            width: 160px;
        }
        .ten1{
            text-align: left;
            padding-right: 67px;
        }
        .email1{
            text-align: left;
            padding-right: 52px;
        }
        .dchi1{
            text-align: left;
            padding-right: 40px;
        }
        .soDT1{
            text-align: left;
            padding-right: 13px;
        }
        #btn{
            background-color: #3399FF;
            color: white;
            width: 120px;
            height: 30px;
            
        }
        #btn:hover{
            font-size: 15px;
        }
        </style>
    </head>
    <body>
        <section class="cart">

            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

            <h1>Enter your name and contact information</h1>

            <form action="<c:url value='/order/processUser' />" method=post class="form">
                <p id="required">Required <span class="required">*</span></p>

                <label class="ten1">Tên </label>
                <input type="text" name="ten" class="ten"
                       value="${user.getTen()}" required>
                <p class="required">*</p><br>

                <label class="email1">Email</label>
                <input type="email" class= "email" name="email" value="${user.getEmail()}" required>
                <p class="required">*</p><br>

                <label class= "dchi1" >Address</label>
                <input type="text" name="address" class="dchi" value="${user.getDiaChi()}" required> 
                <p class="required">*</p><br>

                <label class="soDT1">So dien thoai</label>
                <input  type="text" name="soDT" class="soDT" value="${user.getSdt()}">
                <p class="required">&nbsp;</p><br>


                <label >&nbsp;</label>
                <input id="btn"  type="submit" value="Continue">
            </form>

        </section>
    </body>
</html>