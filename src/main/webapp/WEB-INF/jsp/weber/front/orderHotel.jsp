<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>訂房</title>
<script src="/css/wei/js/jquery-3.4.1.min.js"></script>
<style>
        fieldset {
            width: 500px;
            border: 2px solid black;
            border-radius: 15px;
            margin: 15px;
        }

        legend {
            /* text-align: center; */
            margin-left: 50px;
        }

        .st1 {
            width: 450px;
            border-bottom: 3px dashed #ADADAD;
            margin: 20px;
            padding-bottom: 10px;
        }

        .sub {
            width: 450px;
            margin: 20px;
            text-align: center;
        }

        .t1 {
            width: 100px;
            float: left;
            /* border: 1px solid red; */
            text-align: right;
        }

        textarea {
            resize: none;
        }
    </style>
</head>
<body>
<form action="#" method="get" enctype="multipart/form-data">
        <fieldset>
            <legend>基本資料</legend>
            <button type="button" id="accountProfile">會員資料填入</button>
            <div class="st1">
                <label for="account1" class="t1">姓名:</label>
                <input type="text" id="account1" name="account" size="10" autofocus placeholder="guest"
                    autocomplete="off">
            </div>
            <div class="st1">
                <label for="" class="t1">性別:</label>
                <label for="">
                    <input type="radio" name="gender" value="male" id="">男
                </label>
                <label for="">
                    <input type="radio" name="gender" value="female" id="">女
                </label>
            </div>
            <div class="st1">
                <label for="account1" class="t1">密碼:</label>
                <input type="password" id="account1" name="pwd" maxlength="6">
            </div>
            <div class="st1">
                <label for="" class="t1">生日:</label>
                <input type="date" name="birth" id="">
            </div>
            <div class="st1">
                <label for="" class="t1">E-Mail</label>
                <input type="email" name="mail1" id="">
            </div>
            <div class="st1">
                <label for="" class="t1">身分證字號</label>
                <input type="text" name="idcode" id="" maxlength="10" pattern="[a-z,A-Z]{1}[1-2,8-9]{1}\d{8}">
            </div>
        </fieldset>
        <fieldset>
            <legend>個人資料二</legend>
            <div class="st1">
                <label for="" class="t1">縣市:</label>
                <select name="add1" size="5" multiple>
                    <option value="Tpe">台北市</option>
                    <option value="Tph" selected>新北市</option>
                    <option value="Tyu">桃園市</option>
                    <option value="Hsc">新竹市</option>
                    <option value="Fuji">富士山</option>
                    <option value="Zumu">珠穆朗瑪峰</option>
                </select>
            </div>
            <div class="st1">
                <label for="" class="t1">完整地址: </label>
                <input type="text" name="add2" size="30">
            </div>
            <div class="st1">
                <label for="" class="t1">照片:</label>
                <input type="file" name="file1" id="">
            </div>
            <div class="st1">
                <label for="" class="t1">Blog:</label>
                <input type="url" name="hplist" id="" list="urllist">
                <datalist id="urllist">
                    <option value="http://www.google.com.tw">google</option>
                    <option value="http://www.facebook.com"></option>
                    <option value="http://www.pchome.com.tw"></option>
                    <option value=""></option>
                </datalist>
            </div>
            <div class="st1">
                <label for="" class="t1">興趣:</label>
                <label>
                    <input type="checkbox" name="hobby" id="" value="movie">電影
                </label>
                <label>
                    <input type="checkbox" name="hobby" id="" value="music">音樂</label>
                <label>
                    <input type="checkbox" name="hobby" id="" value="sport">運動
                </label>
                <label>
                    <input type="checkbox" name="sport" value="travel" id="">旅遊
                </label>
            </div>
        </fieldset>
        <fieldset>
            <legend>意見</legend>
            <div class="st1">
                <label for="comment1" class="t1">意見:</label><textarea name="comment" id="comment1" cols="40" rows="5"
                    disabled></textarea>
            </div>
            <div class="sub">
                <input type="submit" value="送出">
                <input type="reset" value="清除" disabled>
            </div>
        </fieldset>
    </form>
    
    <script>
    	$('#accountProfile').on('click',function(e){
    		console.log(e.target);
    	});
    </script>
</body>
</html>