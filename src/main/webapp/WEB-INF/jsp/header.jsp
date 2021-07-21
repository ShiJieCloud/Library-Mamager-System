<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- 必须的 meta 标签 -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>首页</title>
    <style>
        @font-face {
            font-family: mFont;
            src: url('../font/JetBrainsMono-Medium.ttf') format("truetype");
        }
        html,
        body {
            margin: 0;
            padding: 0;
            font-family: mFont, sans-serif;
            user-select: none;
        }

        #top{
            margin: 5%;
            padding: 0;
        }
        #top ul {
            position: absolute;
            left: 50%;
            transform: translate(-50%, -50%);
            margin: 0;
            padding: 0;
            display: flex;
        }

        #top ul li {
            list-style: none;
        }

        #top ul li a {
            position: relative;
            display: block;
            padding: 10px 20px;
            margin: 20px 0;
            text-decoration: none;
            text-transform: uppercase;
            color: #262626;
            font-weight: bold;
            font-size: 30px;
            transition: .5s;
        }

        #top ul li a:hover {
            color: #fff;
        }

        #top  ul li a:before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border-top: 1px solid #000;
            border-bottom: 1px solid #000;
            transform: scaleY(2);
            opacity: 0;
            transition: .5s;
            z-index: -1;

        }

        #top ul li a:hover:before {
            transform: scaleY(1.2);
            opacity: 1;
        }

        #top ul li a:after {
            content: "";
            position: absolute;
            top: 1px;
            left: 0;
            width: 100%;
            height: 100%;
            background: #000000;
            transform: scaleY(0);
            opacity: 0;
            transition: .5s;
            z-index: -1;
        }

        #top ul li a:hover:after {
            transform: scaleY(1);
            opacity: 1;
        }


    </style>
</head>
<body>
<div id="top">
    <ul>

        <li><a href="${pageContext.request.contextPath}/">Welcome</a></li>
        <li><a id="library" href="${pageContext.request.contextPath}/book/allBook">图书管理系统</a></li>
        <li><a href="${pageContext.request.contextPath}/book/toAbout">关于</a></li>
        <li><a href="${pageContext.request.contextPath}/book/toContact">联系</a></li>
    </ul>
</div>


</body>
</html>
