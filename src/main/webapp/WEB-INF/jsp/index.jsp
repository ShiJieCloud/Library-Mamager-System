<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- 必须的 meta 标签 -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>首页</title>
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css?family=Raleway:900&display=swap');

        @font-face {
            font-family: mFont;
            src: url('../font/JetBrainsMono-Medium.ttf') format("truetype");
        }

        body {
            margin: 0;
            padding: 0;
            font-family: mFont, sans-serif;
            user-select: none;
        }

        ul {
            position: absolute;
            top: 50%;
            left: 53%;
            transform: translate(-50%, -50%);
            margin: 0;
            padding: 0;
            display: flex;
            width: 1000px;
        }

        ul li {
            list-style: none;
        }

        ul li a {
            position: relative;
            display: block;
            padding: 10px 20px;
            margin: 20px 0;
            text-decoration: none;
            text-transform: uppercase;
            color: #262626;
            font-weight: bold;
            font-size: 50px;
            transition: .5s;
        }

        ul li a:hover {
            color: #fff;
        }

        ul li a:before {
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

        ul li a:hover:before {
            transform: scaleY(1.2);
            opacity: 1;
        }

        ul li a:after {
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

        ul li a:hover:after {
            transform: scaleY(1);
            opacity: 1;
        }

        /* 引用文字 */
        #container {
            /* 将文本在视口里居中 */
            position: absolute;
            margin: 10% auto;
            width: 100vw;
            height: 80pt;
            top: 0;
            bottom: 0;
            /* 这个过滤器很神奇哦~可以试着注释一下，看变形是如何工作的~ */
            filter: url(#threshold) blur(0.6px);
        }

        #text1, #text2 {
            position: absolute;
            width: 100%;
            display: inline-block;
            font-family: 'Raleway', sans-serif;
            font-size: 80pt;
            text-align: center;
            user-select: none;
        }

        .text-color{
            color: #bbb;
        }

        .bottom_layer{
            font-size: 12px;
            text-decoration: none;
            list-style: none;
            text-align: center;
            width: 100%;
            position: fixed;
            z-index: 302;
            bottom: 15px;
            left: 0;
            height: 39px;
            padding-top: 1px;
            overflow: hidden;
            zoom: 1;
            margin: 0;
            line-height: 39px;
            background: #fff;
            display: block;
        }

        .bottom_layer p{
            display: inline;
            margin: 24px;
        }

        .bottom_layer p a{
            text-decoration: none;
        }

        .bottom_layer p a:hover{
            color: #444444;
            font:12px bolder;
            font-family: mFont;
        }

    </style>
</head>
<body>

<div id="show">

    <!-- 两个文本部分 -->
    <div id="container">
        <span id="text1">Library</span>
        <span id="text2">Manager</span>
    </div>

    <!-- 用于创建合并效果的 svg 过滤器 -->
    <svg id="filter">
        <defs>
            <filter id="threshold">
                <!-- 这里只是一个阈值效果--像素足够高的地方不透明度设置为完全不透明，其他地方像素设置为完全透明。 -->
                <feColorMatrix in="SourceGraphic"
                               type="matrix"
                               values="1 0 0 0 0
                                    0 1 0 0 0
                                    0 0 1 0 0
                                    0 0 0 255 -140"/>
            </filter>
        </defs>
    </svg>

</div>

<div id="top">

    <ul>
        <li><a href="${pageContext.request.contextPath}/" style="font-size: 55px">WELCOME</a></li>
        <li><a href="${pageContext.request.contextPath}/book/allBook" target="_blank">图书管理系统</a></li>
        <li><a href="${pageContext.request.contextPath}/book/toAbout" target="_blank">简介</a></li>
        <li><a href="${pageContext.request.contextPath}/book/toContact" target="_blank">联系</a></li>
    </ul>

</div>
<div class="bottom_layer">
    <p class="1h"><a class="text-color" href="${pageContext.request.contextPath}/">Library Manager System</a></p>
    <p class="1h"><a class="text-color" href="https://beian.miit.gov.cn/" target="_blank">冀ICP备2021000496号</a></p>
    <p class="1h"><span class="text-color">©2021-2022&nbsp;Library&nbsp;</span></p>
</div>
<script>



    /*
	巧妙地利用SVG过滤器来创建“变形文本”效果。
  从本质上讲，它将两个文本元素层叠在一起，并根据哪个文本应该更突出来模糊它们。
  一旦应用了模糊，两个文本一起通过一个阈值过滤器，产生“胶粘”效果。
*/

    const elts = {
        text1: document.getElementById("text1"),
        text2: document.getElementById("text2")
    };


    /* 要在其中变形的字符串。你可以把这些换成你想要的任何东西！ */
    const texts = [
        "Library",
        "Manager",
        "System",
        "One",
        "Simple",
        "System"
    ];


    /* 控制变形的速度。 */
    const morphTime = 1;
    const cooldownTime = 0.25;

    let textIndex = texts.length - 1;
    let time = new Date();
    let morph = 0;
    let cooldown = cooldownTime;

    elts.text1.textContent = texts[textIndex % texts.length];
    elts.text2.textContent = texts[(textIndex + 1) % texts.length];

    function doMorph() {
        morph -= cooldown;
        cooldown = 0;

        let fraction = morph / morphTime;

        if (fraction > 1) {
            cooldown = cooldownTime;
            fraction = 1;
        }

        setMorph(fraction);
    }

    /* 将模糊过滤器应用于文本 */
    function setMorph(fraction) {
        // fraction = Math.cos(fraction * Math.PI) / -2 + .5;

        elts.text2.style.filter = "blur(" + Math.min(8 / fraction - 8, 100) + "px)";
        elts.text2.style.opacity = Math.pow(fraction, 0.4) * 100 + "%";

        fraction = 1 - fraction;
        elts.text1.style.filter = "blur(" + Math.min(8 / fraction - 8, 100) + "px)";
        elts.text1.style.opacity = Math.pow(fraction, 0.4) * 100 + "%";

        elts.text1.textContent = texts[textIndex % texts.length];
        elts.text2.textContent = texts[(textIndex + 1) % texts.length];
    }

    function doCooldown() {
        morph = 0;

        elts.text2.style.filter = "";
        elts.text2.style.opacity = "100%";

        elts.text1.style.filter = "";
        elts.text1.style.opacity = "0%";
    }

    /* 动画循环 */
    function animate() {
        requestAnimationFrame(animate);

        let newTime = new Date();
        let shouldIncrementIndex = cooldown > 0;
        let dt = (newTime - time) / 1000;
        time = newTime;

        cooldown -= dt;

        if (cooldown <= 0) {
            if (shouldIncrementIndex) {
                textIndex++;
            }

            doMorph();
        } else {
            doCooldown();
        }
    }

    /* 启动动画。 */
    animate();
</script>
</body>
</html>
