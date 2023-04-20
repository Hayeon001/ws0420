<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    let login_form = {
        init:function (){
            $('#login_btn').click(function (){
                login_form.send();
            });
        },
        send:function (){
            $('#login_form').attr({
                'action':'/loginimpl',
                'method':'post',
            });
            $('#login_form').submit();
        }
    };

    $(function(){
        login_form.init();
    });
</script>

<div>
    <div class="container">
        <h1>Login Page</h1> <br/><br/>
        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#home">login</a></li>
            <li><a data-toggle="tab" href="#menu2">naver</a></li>
            <li><a data-toggle="tab" href="#menu3">kakao</a></li>
        </ul>

        <div class="tab-content">
            <div id="home" class="tab-pane fade in active"><br/><br/>
                <form class="form-horizontal" id="login_form">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="id">ID : </label>
                        <div class="col-sm-10">
                            <input type="text" name="id" class="form-control" id="id" placeholder="���̵� �Է��ϼ���">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Pwd : </label>
                        <div class="col-sm-10">
                            <input type="password" name="pwd" class="form-control" id="pwd" placeholder="��й�ȣ�� �Է��ϼ���">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label><input type="checkbox" name="remember"> Remember me</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" id="login_btn" class="btn btn-default">Login</button>
                        </div>
                    </div>
                </form>

            </div>
            <div id="menu2" class="tab-pane fade">
                <h3>Naver</h3>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
            </div>
            <div id="menu3" class="tab-pane fade">
                <h3>kakao</h3>
                <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
            </div>
        </div>
    </div>
</div>