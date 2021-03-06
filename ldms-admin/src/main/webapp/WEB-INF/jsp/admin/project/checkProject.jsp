<%--
User: star
Date: 2016/5/22
Time: 1:19
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"><!--IE 兼容-->
    <meta name="viewport" content="width=device-width, initial-scale=1"><!--自适应:移动设备优先-->

    <title>Project</title>
    <link href="${cacheUrl}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${cacheUrl}/css/admin/admin-base.css" rel="stylesheet">
</head>

<body>

<div id="page-wrapper">

    <div class="container-fluid">
        <!-- 页面内容 -->
        <div class="panel panel-default">

            <!--消息框-->
            <div id="msg-modal" class="message modal">
                <div class="msg-dialog modal-dialog">
                    <div class="modal-content">
                    </div>
                </div>
            </div>

            <div class="panel-heading" id="panel-heading">
                <h3 class="panel-title" style="text-align: center;padding: 15px;font-size: 24px;font-family: 微软雅黑;">审核实验</h3>
            </div>

        </div>

        <!--标题栏-->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">用户列表</h3>
            </div>
            <div class="panel-body">
                <table class="table project-info-table table-hover">
                    <tr>
                        <th>项目编号</th>
                        <th>申请时间</th>
                        <th>申请人</th>
                        <th>主题</th>
                        <th>状态</th>
                        <th>操作</th>
                    </tr>
                </table>
                <%--分页显示区--%>
                <nav class="page-nav">
                    <ul id="project" class="pagination  pagination-lg">
                    </ul>
                </nav>

            </div>
        </div>

        <!--添加用户-->
        <div class="modal fade" id="add-user-modal-dialog">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">添加用户</h4>
                    </div>

                    <div class="modal-body">
                        <div class="form-group">
                            <input type="text" class="form-username form-control"
                                   placeholder="用户名"
                                   maxlength="16"
                                   required>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-password form-control"
                                   placeholder="密码"
                                   maxlength="16"
                                   required>
                        </div>

                        <div class="add_user_modal">
                            <div class="dropdown form-item">

                                <button class="btn single-size dropdown-toggle" type="button" id="roleDropdownMenu1"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                    <span class="select-name">学生</span>
                                    <span class="caret"></span>
                                </button>

                                <div class="dropdown-menu select-role single-width" aria-labelledby="roleDropdownMenu1">
                                    <li><a href="#">学生</a></li>
                                    <li><a href="#">教师</a></li>
                                    <li><a href="#">管理员</a></li>
                                </div>
                            </div>
                        </div>

                        <button id="add-user-submit" class="btn btn-single add-user-submit">添加用户</button>
                    </div>
                </div>
            </div>
        </div>

        <!--查看详情-->
        <div class="modal fade" id="show-project-modal-dialog" style="margin-top: 5%">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">项目详情</h4>
                    </div>
                    <div class="modal-body" style="padding: 5px">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <td><strong>项目属性</strong></td>
                                <td><strong>详细信息</strong></td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>申请人</td>
                                <td id="teacherName">黄旭阳</td>
                            </tr>
                            <tr>
                                <td>申请时间</td>
                                <td id="submitTime">2016-6-28</td>
                            </tr>
                            <tr>
                                <td>实验室</td>
                                <td id="labName">信息楼805</td>
                            </tr>
                            <tr>
                                <td>学分</td>
                                <td id="credit">3.5</td>
                            </tr>
                            <tr>
                                <td>容量</td>
                                <td id="capacity">57</td>
                            </tr>
                            <tr>
                                <td>实验开始时间</td>
                                <td id="startTime">2016-9</td>
                            </tr>
                            <tr>
                                <td>实验结束时间</td>
                                <td id="endTime">2016-12</td>
                            </tr>
                            <tr>
                                <td>实验资料</td>
                                <td id="files">信息工程学院设备管理细则.doc</td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion"
                                           href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            实验所申请的设备信息
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse" role="tabpanel"
                                     aria-labelledby="headingOne">
                                    <div class="panel-body" style="background-color: aliceblue">
                                        <table class="table table-striped table-bordered table-condensed">
                                            <thead>
                                            <td>编号</td>
                                            <td>设备名称</td>
                                            <td>借用数量</td>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>戴尔服务器</td>
                                                <td>3</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>硬盘</td>
                                                <td>5</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="model-footer" style="padding: 5px">
                        <div class="btn-group single-width" role="group">
                            <button type="button" class="btn btn-default col-md-4 col-xs-12 project-cancel">取消
                            </button>
                            <button type="button" class="btn btn-success col-md-4 col-xs-12 project-pass">通过
                            </button>
                            <button type="button" class="btn btn-danger  col-md-4 col-xs-12 project-refuse">拒绝
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--通过确认-->
    <div id="project-pass-modal-dialog" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">项目审核确认</h4>
                </div>
                <div class="modal-body">
                    <div class="form-item">
                        <h4>确认审核通过该项目<span class="delete-username"></span>？</h4>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn project-pass-submit btn-primary btn-double">确认</button>
                    <button class="btn btn-default btn-double" data-target="#project-pass-modal-dialog"
                            data-toggle="modal">取消
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!--拒绝确认-->
    <div id="project-refuse-modal-dialog" class="modal fade">
        <div class="modal-dialog alert">

            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">项目审核确认</h4>
                </div>

                <div class="modal-body">
                    <div class="form-item">
                        <h4>确认审核拒绝该项目<span class="delete-username"></span>？</h4>
                    </div>
                </div>

                <div class="modal-footer">
                    <button class="btn project-refuse-submit btn-primary btn-double">确认</button>
                    <button class="btn btn-default btn-double" data-target="#project-refuse-modal-dialog"
                            data-toggle="modal">取消
                    </button>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- /.container-fluid -->
</div>

<%--<!-- jQuery -->--%>
<%--<script src="${cacheUrl}/js/jquery/jQuery-2.2.0.min.js"></script>--%>
<%--<!-- Bootstrap Core JavaScript -->--%>
<%--<script src="${cacheUrl}/bootstrap/js/bootstrap.min.js"></script>--%>
<%--<script type="text/javascript" src="${cacheUrl}/js/admin/admin-base.js"></script>--%>
<%--<script type="text/javascript" src="${cacheUrl}/js/admin/admin-student.js"></script>--%>
</body>
</html>