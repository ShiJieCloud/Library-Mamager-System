<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/limonte-sweetalert2/11.0.18/sweetalert2.all.min.js"></script>
    <link href="https://cdn.bootcdn.net/ajax/libs/limonte-sweetalert2/11.0.18/sweetalert2.css" rel="stylesheet">

    <style>

        @font-face {
            font-family: mFont;
            src: url('../font/JetBrainsMono-Medium.ttf') format("truetype");
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: mFont, sans-serif;
            user-select: none;
        }

        section {
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            min-width: 100vh;
            background: #112d42;
            height: 753px;
        }

        section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 50%;
            height: 100%;
            background: #03a9f4;
        }

        section .container {
            position: relative;
            min-width: 1100px;
            min-height: 550px;
            display: flex;
            z-index: 1000;
            margin-top: -60px;
            margin-left: 70px;
        }

        section .container .contactinfo {
            position: absolute;
            top: 110px;
            width: 350px;
            height: calc(100%- 80px);
            background: #0f3959;
            z-index: 1;
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            box-shadow: 0 20px 20px rgba(0, 0, 0, 0.2);
        }

        section .container .contactinfo h2 {
            color: #fff;
            font-size: 24px;
            font-weight: 500;
        }

        section .container .contactinfo .info {
            position: relative;
            margin: 20px 0;
        }

        section .container .contactinfo .info li {
            position: relative;
            list-style: none;
            display: flex;
            margin: 20px 0;
            cursor: pointer;
            align-items: flex-start;
        }

        section .container .contactinfo .info li span a{
            text-decoration: none;
            font-size: 15px;
            color: #fff;
            opacity: 0.7;

        }
        section .container .contactinfo .info li span:nth-child(1) {
            font-size: 25px;
            width: 30px;
            min-width: 30px;
        }

        section .container .contactinfo .info li span:nth-child(1) {
            max-width: 100%;
            filter: invert(1);
            opacity: 0.5;
        }

        section .container .contactinfo .info li span:nth-child(2) {
            color: #fff;
            margin-left: 10px;
            font-weight: 300;
            opacity: 0.5;

        }
        section .container .contactinfo .info li:hover span a,
        section .container .contactinfo .info li:hover span:nth-child(1),
        section .container .contactinfo .info li:hover span:nth-child(2) {
            opacity: 1;
        }


        section .container .contactinfo .sci li:hover a span {
            color: white;
            opacity: 1;
        }

        section .container .contactForm {

            position: absolute;
            background: #fff;
            margin-left: 150px;
            padding: 70px 50px 70px 250px;
            width: calc(100%- 150px);
            box-shadow: 0 50px 50px rgba(0, 0, 0, 0.5);
        }

        section .container .contactForm h2 {
            color: #0F3959;
            font-size: 24px;
            font-weight: 500;

        }

        section .container .contactForm .forBox {
            position: relative;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            padding-top: 30px;
        }

        section .container .contactForm .forBox .inputBox {
            position: relative;
            margin: 0 0 35px 0;

        }

        section .container .contactForm .forBox .inputBox.w50 {
            margin-top: 30px;
            width: 47%;
        }

        section .container .contactForm .forBox .inputBox.w100 {
            width: 100%;
        }

        section .container .contactForm .forBox .inputBox input,
        section .container .contactForm .forBox .inputBox textarea {
            width: 100% !important;
            padding: 5px 0;
            resize: none;
            font-size: 20px;
            font-weight: 300;
            color: #333;
            border: none;
            border-bottom: 1px solid #777;
            outline: none;
        }

        section .container .contactForm .forBox .inputBox textarea {
            min-width: 120px;

        }

        section .container .contactForm .forBox .inputBox span {
            position: absolute;
            left: 0;
            padding: 5px 0;
            font-size: 18px;
            font-weight: 300;
            color: #333;
            transition: 0.5s;
            pointer-events: none;
        }

        section .container .contactForm .forBox .inputBox input:focus~span,
        section .container .contactForm .forBox .inputBox textarea:focus~span,
        section .container .contactForm .forBox .inputBox input:valid~span,
        section .container .contactForm .forBox .inputBox textarea:valid~span {
            transform: translateY(-20px);
            font-size: 12px;
            font-weight: 400;
            letter-spacing: 1px;
            color: #ff568c;
        }
        .inputBox__email--tip {
            transform: translateY(-20px);
            font-size: 12px !important;
            font-weight: 400 !important;
            letter-spacing: 1px;
            color: #ff568c !important;
        }

        section .container .contactForm .forBox .inputBox input[type="submit"] {
            position: relative;
            cursor: pointer;
            background: #0f3959;
            color: #fff;
            border: none;
            max-width: 150px;
            padding: 12px;
        }

        section .container .contactForm .forBox .inputBox input[type="submit"]:hover {
            background: #FF568C;

        }
    </style>
</head>
<body>
<section>
    <div class="container">

        <div class="contactinfo">
            <div>
                <h2>Contact Info</h2>
                <ul class="info">
                    <li>
                        <span class="fas fa-user-tie"></span>
                        <span>Name&nbsp;:&nbsp;Jie</span>
                    </li>
                    <li>
                        <span class="fas fa-envelope"></span>
                        <span>Email&nbsp;:&nbsp;1500492856@qq.com</span>
                    </li>
                    <li>
                        <span class="fas fa-phone-alt"></span>
                        <span>Phone&nbsp;:&nbsp;176XXXXXXXX</span>
                    </li>
                    <li>
                        <span class="fas fa-book-open"></span>
                        <span>CSDN&nbsp;:&nbsp;<a href="https://blog.csdn.net/qq_20185737" target="_blank">I'm Jie</a></span>
                    </li>



                </ul>

            </div>
        </div>

        <!-- 表单 -->
        <div class="contactForm">
            <h2>Send a Message</h2>
            <div class="forBox">
                <div class="inputBox w50">
                    <input id="email" type="email" required onchange="changeEmail(this)"/>
                    <span>Email Address</span>
                </div>
                <div class="inputBox w100">
                    <textarea id="text" required></textarea>
                    <span>Write your message here...</span>
                </div>
                <div class="inputBox w100">
                    <input id="submit" type="submit" onclick="emailReg()" value="Send"/>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    function changeEmail(e) {
        if(e.value) {
            e.nextElementSibling.classList.add("inputBox__email--tip");
        } else {
            e.nextElementSibling.classList.remove("inputBox__email--tip");
        }
    }
    function emailReg() {

        var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
        if (!reg.test($("#email").val())) {
            swal.fire({
                icon: 'warning',
                title: 'Send Warning!',
                html: '请输入正确的邮箱格式'
            });
        }else {
            $.ajax({
                type:'post',
                url:'${pageContext.request.contextPath}/toContact',
                data:{'email':$('#email').val(),'text':$('#text').val()},
                beforeSend:function () {
                    /*按钮禁用*/
                    $('#submit').attr({"disabled":"disabled"});
                },
                success:function (data) {
                    let result = JSON.parse(data);
                    if('SUCCESS' === result.info){
                        swal.fire({
                            icon: 'success',
                            title: 'Send Success!',
                            html: 'Email 发送成功',
                            showConfirmButton: false,
                            timer: 1500
                        });
                        $('#submit').removeAttr("disabled");
                    }
                }
            })
        }
    }
</script>
</body>
</html>
