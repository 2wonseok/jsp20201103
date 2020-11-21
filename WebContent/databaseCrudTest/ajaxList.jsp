<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="DbCrudTest.*" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
List<Member> list = MemberDao.memberList(); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>이원석</title>
</head>
<body>
<jsp:include page="navbar.jsp" />
<div class="container">
<h3>회원 목록</h3>
	<table class="table">
		<tr>
			<th>NO</th>
			<th>아이디</th>
			<th>이름</th>
			<th>이메일</th>
			<th>성별</th>
			<th>생년월일</th>
			<th>지역</th>
			<th>취미</th>
		</tr>
		<tbody id ="memList">
		</tbody>
	</table>
</div>
</body>
</html>
<script>
    function fromReset(){
        $(document).ready(function() {  
            $("#btnReset").click(function() { 
                $("form")[1].reset();  
            });  
        }); 

    }

    function getMemberList() {

              
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        //alert(1);

        url = '/wcms/users/ajaxUserList';
            
        $.ajax({
            url: url,
            type: 'post',
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            cache: false,
            async: false,
            success: function (response) {
                    var cell = response.rows;
                    var count = cell.length;
                    
                    //alert(count);

                    var csTable = $("#memList").empty();
                    for (var i = 0; i < cell.length; i++) {
                        
                        var userId = cell[i].id;
                        var userName = cell[i].name;
                        var userEmail = cell[i].email;
                        var userCreatedDate = cell[i].created_at;
                        

                        var cellText = ""
                                    +"<tr>"
                                    +"<td>"+userId+"</td>"
                                    +"<td><a href='#1' onclick=\"getMemberLoad('"+userId+"')\">"+userName+"</td>"
                                    +"<td>"+userEmail+"</td>"
                                    +"<td>"+userCreatedDate+"</td>"
                                    +"</tr>";
                                    
                        csTable.append(cellText);
                    }

                    if (cell.length < 1) {
                        var cellText = ""
                                    +"<tr>"
                                    +"<td> NO DATA </td>"
                                    +"</tr>";
                    }

            } 
        });

        
    }

    function getMemberLoad(id) {
            
        // alert(id);
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        //alert(1);

        url = '/wcms/users/ajaxUserShow';

        $.ajax({
            url: url,
            type: 'post',
            data: { id : id },
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            cache: false,
            async: false,
            success: function (response) {
                var cell = response.rows[0];
                // var test = cell.email;
            
                
                // alert(1);
                // alert(test);

                
                // var count = cell.length;
                $('#id').val(cell.id);
                $('#name').val(cell.name);
                $('#email').val(cell.email);   
                $('#password').val(cell.password);          

            }
        });
    }

    function getMemberInsert() {
        // alert(id);
        var id = $('input#id').val();
        var name = $("#name").val();
        // var email = $("#email").val()+'@'+ $("#email2").val();
        var email = $("#email").val();
        var password = $("#password").val();

        var msg = "입력 정보를 저장(추가)하시겠습니까?";

        if (confirm(msg)) {


            $.ajax({
                headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') },
                url: '/wcms/users/ajaxUserUpdateSubmit',
                data: {
                    id : id,
                    name: name,
                    email: email,
                    password: password
                },
                type: 'post',
                dataType: 'json',
                contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                cache: false,
                success: function (response) {
                    getMemberList();
                //alert(response.code)

                }
            });

        } else {
            return false;
        }
    }

    function getMemberDelete(id) {

        var id = $("#id").val();
        var msg = "정말 삭제하시겠습니까?";

        if (confirm(msg)) {
            $.ajax({
                type: 'get',
                dataType: 'json',
                url: '/wcms/users/delDestroy',
                data: { id: id },
                success: function (data) {
                    getMemberList();
                }

            });

        }


    }

    getMemberList();
</script>





