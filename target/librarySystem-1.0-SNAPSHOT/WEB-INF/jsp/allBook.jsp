<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书管理系统</title>

    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/limonte-sweetalert2/11.0.18/sweetalert2.all.min.js"></script>
    <link href="https://cdn.bootcdn.net/ajax/libs/limonte-sweetalert2/11.0.18/sweetalert2.css" rel="stylesheet">



    <style>
        @font-face {
            font-family: mFont;
            src: url('../font/JetBrainsMono-Medium.ttf') format("truetype");
        }

        html,
        body {
            font-family: mFont, sans-serif;
            margin: 0;
            padding: 0;
            user-select: none;
        }

        #all-box {
            width: 80%;
            height: 100%;
            margin-left: 10%;
            margin-top: 5%;
        }

        #book-meau a {
            color: white;
            margin-top: 50px;
        }

        #top {
            margin: 0;
            padding: 0;
        }

    </style>
    <script>

        function deleteBook(bookId) {
            const swalWithBootstrapButtons = Swal.mixin({
                customClass: {
                    confirmButton: 'btn btn-success',
                    cancelButton: 'btn btn-danger'
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

        function addBook() {
            $("#bookInfo").text('添加书籍');
            $('#id').val(0);
            $('#name').val("");
            $('#counts').val("");
            $('#price').val("");
            $('#detail').val("");
            $('#form_data').attr('action', '${pageContext.request.contextPath}/book/addBook')
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


    </script>
</head>
<body>

<div id="top" class="row-fluid">
    <%@include file="header.jsp" %>
</div>

<div class="container-fluid">

    <div id="all-box" class="row-fluid">

        <div class="col-md-12 column" style="height: 100%;">

            <%--菜单按钮--%>
            <div class="row">
                <div id="book-meau" class="col-md-12 column">
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">全部书籍</a>
                    <input style="margin-top: 50px" type="button" class="btn btn-primary" data-toggle="modal"
                           data-target="#addBookForm" onclick="addBook()" value="添加书籍">
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toSearch">搜索</a>

                </div>
            </div>

            <%--图书列表详情--%>
            <div class="row-fluid" style="margin-top: 20px">
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
                        <tbody>

                        <%--便利后端传来的 list<Books> --%>
                        <c:forEach var="book" items="${list}">
                            <tr style="margin: auto;line-height: 30px">
                                <td>${book.id}</td>
                                <td>${book.name}</td>
                                <td>${book.counts}</td>
                                <td style="max-width:300px;word-wrap: break-word;">${book.detail}</td>
                                <td>${book.price}</td>
                                <td>
                                    <button type="button" class="btn btn-info" data-toggle="modal"
                                            data-target="#addBookForm"
                                            onclick="updateBook(${book.id})">
                                        编辑
                                    </button>
                                    <button type="button" class="btn btn-danger" onclick="deleteBook(${book.id})">删除
                                    </button>


                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>

                </div>

                <!--分页-->
                <div id="book-show" style="height: 120px ">
                    <nav aria-label="Page navigation example" style="margin-left: 43%">
                        <ul id="page-ul" class="pagination justify-content-center ">

                            <%--前一页--%>
                            <li class="page-item ">
                                <a class="page-link"
                                   href="${pageContext.request.contextPath}/book/allBook?begin=${page.pageNo-1>1?page.pageNo-1:1}"
                                   tabindex="-1 " aria-disabled="true">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>

                            <%--第一页--%>
                            <li id="page_first" class="page-item ">
                                <a class="page-link "
                                   href="${pageContext.request.contextPath}/book/allBook?begin=${page.pageTotal==0?0:1}">${page.pageTotal==0?0:1}</a>
                            </li>

                            <%--当前页--%>
                            <li class="page-item ">
                                <a class="page-link"
                                   href="${pageContext.request.contextPath}/book/allBook?begin=${page.pageNo}">
                                    ${page.pageNo}
                                </a>
                            </li>

                            <%--最后一页--%>
                            <li class="page-item ">
                                <a class="page-link "
                                   href="${pageContext.request.contextPath}/book/allBook?begin=${page.pageTotal}">
                                    ${page.pageTotal}
                                </a>
                            </li>

                            <%--下一页--%>
                            <li class="page-item ">
                                <a class="page-link "
                                   href="${pageContext.request.contextPath}/book/allBook?begin=${page.pageNo+1>page.pageTotal?page.pageTotal:page.pageNo+1}">
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
