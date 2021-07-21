<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>搜索框</title>

    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css">
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <script src="https://cdn.bootcdn.net/ajax/libs/limonte-sweetalert2/11.0.18/sweetalert2.all.min.js"></script>
    <link href="https://cdn.bootcdn.net/ajax/libs/limonte-sweetalert2/11.0.18/sweetalert2.css" rel="stylesheet">



    <style>
        @font-face {
            font-family: mFont;
            src: url('../font/JetBrainsMono-Medium.ttf') format("truetype");
        }
        html,
        body {
            margin: 0;
            padding: 0;
            font-family: mFont,sans-serif;
        }

        #table-body {
            width: 80%;
            justify-content: center;
            margin-left: 10%;
            margin-top: 50px;

        }

        .search-box {
            height: 60px;
            background: #34495e;
            padding: 10px;
            border-radius: 80px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 80px;
        }

        .search-box .search-input {
            background: none;
            border: none;
            outline: none;
            color: white;
            font-size: 20px;
            width: 0px;
            transition: 0.5s;
        }

        .search-box:hover .search-input {
            width: 250px;
        }

        .search-box .search-btn {
            width: 40px;
            height: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #e67e22;
            background: #34495e;
            text-decoration: none;
            font-size: 20px;
            border-radius: 50%;
            border: none;
        }

        .search-box:hover .search-input {
            width: 300px;
        }

        .search-box:hover .search-btn {
            background: white;
        }


        #all-box {
            width: 80%;
            margin-left: 10%;
        }

        #book-meau a {
            color: white;
            margin-top: 50px;
        }

        #search-info {
            display: none;
        }

        #search-content {
            display: none;
        }


    </style>
    <script>

        toastr.options = {
            "closeButton": false,
            "debug": false,
            "positionClass": "toast-top-right",
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "5000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        }


        function deleteBook(bookId) {
            const swalWithBootstrapButtons = Swal.mixin({
                customClass: {
                    confirmButton: 'btn btn-success',
                    cancelButton: 'btn btn-danger',
                },
                buttonsStyling: false
            })

            swalWithBootstrapButtons.fire({
                title: 'Are you sure?',
                text: "你确定要删除吗？删除操作不可恢复!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Yes',
                cancelButtonText: 'No',
                reverseButtons: true,
                focusCancel:true
            }).then((result) => {

                if (result.isConfirmed) {
                    $.ajax({
                        type: 'post',
                        url: "${pageContext.request.contextPath}/deleteBook/" + bookId,
                        success: function (data) {
                            let result = JSON.parse(data);
                            if ('SUCCESS' === result.info) {
                                swalWithBootstrapButtons.fire(
                                    'Deleted!',
                                    '删除成功',
                                    'success'
                                ).then((choose) => {
                                    if (choose) {
                                        window.location.reload();
                                    }
                                })
                            }else {
                                swalWithBootstrapButtons.fire(
                                    'Deleted!',
                                    '删除失败',
                                    'warning'
                                )
                            }
                        }
                    })
                }
            })

        }

        function updateBook(bookId) {
            $.ajax({
                type: 'post',
                url: "${pageContext.request.contextPath}/toUpdateBook/" + bookId,
                success: function (data) {
                    let Qbook = JSON.parse(data);
                    $("#bookInfo").text('修改书籍');
                    $('#id').val(Qbook.id);
                    $('#name').val(Qbook.name);
                    $('#counts').val(Qbook.counts);
                    $('#price').val(Qbook.price);
                    $('#detail').val(Qbook.detail);
                    $('#form_data').attr('action', '${pageContext.request.contextPath}/book/updateBook')
                }

            })
        }


        function a2(begin, name){

            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/book/queryBook",
                data: {'name': name, 'begin': begin},
                success: function (data) {
                    let rse = JSON.parse(data);
                    if (rse.booksList.length > 0) {

                        name = rse.name;
                        if (name === '' || name == null){
                            toastr.success( '显示全部信息','success!');
                        }else {
                            toastr.success( '已找到' + name + '相关信息','success!');
                        }

                        let html = "";
                        for (let i = 0; i < rse.booksList.length; i++) {
                            html = html + '<tr style="margin: auto;line-height: 30px">';
                            html = html + '<td>' +  rse.booksList[i].id+ '</td>';
                            html = html + '<td>' + rse.booksList[i].name + '</td>';
                            html = html + '<td>' + rse.booksList[i].counts + '</td>';
                            html = html + '<td style="max-width:300px;word-wrap: break-word;">' + rse.booksList[i].detail + '</td>';
                            html = html + '<td>' + rse.booksList[i].price + '</td>';
                            html = html + '<td>';
                            html = html + '<button type="button" class="btn btn-info" data-toggle="modal" data-target="#addBookForm" onclick="updateBook('+rse.booksList[i].id+')">编辑</button> &nbsp;';
                            html = html + '<button type="button" class="btn btn-danger" onclick="deleteBook('+${book.id}rse.booksList[i].id+')">删除</button>';
                            html = html + '</td>';
                            html = html + '</tr>';
                            $('#book-tbody').html(html);

                        }

                        $('#page-total').text(rse.pageTotal);
                        $('#page-No').text(rse.pageNo);
                        $("#search-content").show();

                    } else {
                        toastr.info( '未搜索到相关信息','Info!');

                        $("#search-content").hide()

                    }
                }
            })

        }

        var name = "";

        function search() {

                name = $('.search-input').val();
                a2(1, name);

        }

        function prevPage() {
            let currentBegin = parseInt($('#page-No').text());
            if(currentBegin == 1) {
                toastr.warning( '当前已经为第一页','Waring!');
                return;
            }
            a2(currentBegin - 1, $('.search-input').val())
        }

        function nextPage() {
            let currentBegin = parseInt($('#page-No').text());
            let pageTotal = parseInt($("#page-total").text());
            if(currentBegin == pageTotal) {
                toastr.warning( '当前已经为最后一页','Waring!');
                return;
            }
            a2(currentBegin + 1, $('.search-input').val())
        }

        function requestPage(begin) {
            a2(begin, $('.search-input').val());
        }

    </script>
</head>

<body>


<div id="top" class="row-fluid">
    <%@include file="header.jsp" %>
</div>

<div style="display: flex; justify-content: center;" class="col-md-12 column">

    <!---搜索框-->
    <div class="search-box">
        <input type="text" class="search-input" onchange="">
        <button class="search-btn" onclick="search()"><i class="fas fa-search"></i></button>

    </div>
</div>


<div class="container-fluid">


    <div id="all-box" class="row-fluid">

        <div id="search-content" class="col-md-12 column" style="height: 100%;">

            <div class="row-fluid">
                <div class="span12" style="min-height: 450px;">
                    <table class=" table table-hover table-striped ">
                        <thead style="line-height: 30px">
                        <tr>
                            <th>编号</th>
                            <th>名字</th>
                            <th>数量</th>
                            <th>描述</th>
                            <th>价格</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody id="book-tbody">

                        </tbody>
                    </table>


                </div>


                <!--分页-->
                <div id="book-show" style="">
                    <nav aria-label="Page navigation example" style="margin-left: 43%">
                        <ul id="page-ul" class="pagination justify-content-center ">
                            <li class="page-item ">
                                <a class="page-link "
                                   onclick="prevPage()"
                                >
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li id="page_first" class="page-item ">
                                <a class="page-link "
                                   onclick="requestPage(1)"
                                >
                                    <span aria-hidden="true">1</span>
                                </a>

                            </li>

                            <li class="page-item ">
                                <a id="page-No" class="page-link "
                                   onclick="requestPage(parseInt($('#page-No').text()))">
                                </a>

                            </li>
                            <li class="page-item ">
                                <a id="page-total" class="page-link "
                                   onclick="requestPage(parseInt($('#page-total').text()))">
                                </a>
                            </li>
                            <li class="page-item ">
                                <a class="page-link "
                                   onclick="nextPage()">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>

        </div>
    </div>
</div>


<div class="container" style="min-width: 1200px;">
    <!-- 模态框示例（Modal） -->
    <form method="post" action="" class="form-horizontal" role="form"
          id="form_data" onsubmit="" style="margin: 20px;">
        <div class="modal fade" id="addBookForm" tabindex="-1" role="dialog" aria-labelledby="bookInfo"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content" style="margin-top: 20%">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="bookInfo"></h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <div class="col-sm-9"><input type="hidden" class="form-control" id="id" name="id"></div>
                            </div>
                            <div class="form-group">
                                <label for="name" class="col-sm-3 control-label">书名</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="name" name="name" required
                                           placeholder="请输入书名">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="counts" class="col-sm-3 control-label">数量</label>
                                <div class="col-sm-9">
                                    <input type="number" class="form-control" name="counts" id="counts" required
                                           placeholder="数量">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="price" class="col-sm-3 control-label">价格</label>
                                <div class="col-sm-9">
                                    <input type="number" step="0.01" class="form-control" name="price" required
                                           id="price" placeholder="价格">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="detail" class="col-sm-3 control-label">描述</label>
                                <div class="col-sm-9">
                                    <textarea class="form-control" name="detail" id="detail"
                                              placeholder="描述"></textarea>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                        </button>
                        <button id="submit" type="submit" class="btn btn-primary">
                            提交
                        </button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->

        </div>
    </form>
</div>


</body>

</html>
