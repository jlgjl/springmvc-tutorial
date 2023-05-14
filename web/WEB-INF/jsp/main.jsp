<html>
<head>
    <title>部门列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<p> 1231654</p>
</body>
<div class="col-md-4 column">
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/dolist/toadd">新增安排</a>
</div>
<div>
    <table>
        <thead>
        <tr>
            <th>编号</th>
            <th>员工编号</th>
            <th>安排</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="dolist" items="${list}">
            <tr>
                <td>${dolist.getDid()}</td>
                <td>${dolist.getEid()}</td>
                <td>${dolist.getDbody()}</td>
                <td>
                    <span style="color: red;font-weight: bold">${error}</span>
                    <a href="${pageContext.request.contextPath}/dolist/toupdate">更改</a> |
                    <a href="${pageContext.request.contextPath}/dolist/del/${dolist.getDid()}">删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</html>
<style>
    table {
        table-layout: fixed;
        width: 100%;
        border-collapse: collapse;
    }

    table th:nth-child(1) {
        width: 12%;
    }

    table th:nth-child(2) {
        width: 12%;
    }

    table th:nth-child(3) {
        width: 12%;
    }

    table th:nth-child(4) {
        width: 50%;
    }
    tbody tr:nth-child(odd) {
        background-color: #827373;
    }
    tbody tr:nth-child(even) {
        background-color: #e5dde5;
    }
    th, td {
        padding: 20px;
    }
    .header_con{
        background-color:#f7f7f7;
        height:29px;
        border-bottom:1px solid #dddddd
    }

    .header{
        width:1200px;
        height:29px;
        margin:0 auto;
    }
    .fl{float:left}

    .login_btn,.user_link{
        line-height:29px;
    }
</style>