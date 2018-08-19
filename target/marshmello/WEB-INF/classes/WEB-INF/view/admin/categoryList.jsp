<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    Date date = new Date();
    String nowDate = sdf.format(date);
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>CMS by unicorn team</title>
    <!-- Bootstrap core CSS-->
    <!--<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">-->
    <link id="skinReplace" href="../../../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="../../../assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="../../../assets/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="../../../assets/css/sb-admin.css" rel="stylesheet">

    <script type="text/javascript" src="../../../assets/js/jquery-3.3.1.min.js"></script>

    <script type="text/javascript" src="../../../assets/vendor/bootstrap/js/bootstrap.js"></script>

    <script type="text/javascript" src="../../../assets/js/bootstrap-table.js"></script>

    <script type="text/javascript">
        $(document).ready(function ($) {
            $('#categoryTable').on('click-row.bs.table', function (e, row, element) {
                $('#editCategoryName').val(row[0]);
            });
        });
    </script>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/">unicorn</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
            data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <jsp:include page="menu.jsp"/>
</nav>

<div class="content-wrapper">
    <div class="container-fluid">
        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="#"><i class="fa fa-folder">一级栏目</i></a>
            </li>
            <li class="breadcrumb-item active">二级栏目</li>
            <li class="breadcrumb-item ">具体项</li>
        </ol>
        <div class="row">
            <div class="col-md-4 col-lg-4 col-sm-4">
                <!-- Example DataTables Card-->
                <div class="card mb-3">
                    <div class="card-header">
                        <span>Categories</span>
                        <a href="#"><i class="fa fa-plus"></i>Add</a>
                    </div>

                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover" id="categoryTable" width="100%"
                                   cellspacing="0" data-toggle="table">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Operation</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${categories}" var="c">
                                    <tr>
                                        <td>${c.name}</td>
                                        <td>
                                            <a class="btn btn-light" data-toggle="modal" data-target="#editCategoryDialog"><i
                                                    class="fa fa-edit"></i></a>
                                            <a class="btn btn-light"
                                               href="${pageContext.request.contextPath}/editCategory.do?id=${media.id}"><i
                                                    class="fa fa-arrow-right"></i></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-lg-4 col-sm-4">
                <!-- Example DataTables Card-->
                <div class="card mb-3">
                    <div class="card-header">
                        <a href="#"><i class="fa fa-plus"></i> add category </a>

                    </div>

                    <div class="card-body">


                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

                                <thead>
                                <tr>
                                    <th>id</th>
                                    <th>categoryName</th>
                                    <th><i class="fa fa-edit"></i></th>

                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>id</th>
                                    <th>categoryName</th>
                                    <th><i class="fa fa-edit" style="padding-bottom: auto"></i></th>
                                </tr>
                                </tfoot>
                                <tbody>


                                <c:forEach items="${categories}" var="c">
                                    <tr>
                                        <td>${c.id}</td>
                                        <td>${c.name}</td>
                                        <td>
                                            <a class="btn btn-light"
                                               href="${pageContext.request.contextPath}/mediaUpdateView.do?id=${media.id}"><i
                                                    class="fa fa-file-text-o"></i></a>
                                            <a class="btn btn-light"
                                               href="${pageContext.request.contextPath}/mediaDelete.do?id=${media.id}"><i
                                                    class="fa fa-trash-o"></i></a>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>

                            <div class="card-footer small text-muted">Updated time is <%=nowDate%>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-lg-4 col-sm-4">
                <!-- Example DataTables Card-->
                <div class="card mb-3">
                    <div class="card-header">
                        <a href="#"><i class="fa fa-plus"></i> add category </a>

                    </div>

                    <div class="card-body">


                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

                                <thead>
                                <tr>
                                    <th>id</th>
                                    <th>categoryName</th>
                                    <th><i class="fa fa-edit"></i></th>

                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>id</th>
                                    <th>categoryName</th>
                                    <th><i class="fa fa-edit" style="padding-bottom: auto"></i></th>
                                </tr>
                                </tfoot>
                                <tbody>


                                <c:forEach items="${categories}" var="c">
                                    <tr>
                                        <td>${c.id}</td>
                                        <td>${c.name}</td>
                                        <td>
                                            <a class="btn btn-light"
                                               href="${pageContext.request.contextPath}/mediaUpdateView.do?id=${media.id}"><i
                                                    class="fa fa-file-text-o"></i></a>
                                            <a class="btn btn-light"
                                               href="${pageContext.request.contextPath}/mediaDelete.do?id=${media.id}"><i
                                                    class="fa fa-trash-o"></i></a>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>

                            <div class="card-footer small text-muted">Updated time is <%=nowDate%>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="editCategoryDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Edit Category</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <div>
                    <span>Name</span>
                    <input type="text" id="editCategoryName"/>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<!-- /.container-fluid-->
<!-- /.content-wrapper-->
<footer class="sticky-footer">
    <div class="container">
        <div class="text-center">
            <small>Copyright @ unicorn team 2018</small>
        </div>
    </div>
</footer>
</body>
</html>
