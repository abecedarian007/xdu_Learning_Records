<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<title></title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 引入bootstrap -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<!-- 引入JQuery  bootstrap.js-->
	<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 顶栏 -->
	<jsp:include page="top.jsp"></jsp:include>
	<!-- 中间主体 -->
		<div class="container" id="content">
		<div class="row">
			<jsp:include page="menu.jsp"></jsp:include>
			<div class="col-md-10">
				<div class="panel panel-default">
				    <div class="panel-heading">
						<div class="row">
					    	<h1 style="text-align: center;">Modify Room Info</h1>
						</div>
				    </div>
				    <div class="panel-body">
						<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/admin/editRoom" id="editForm" method="post">
							  <div class="form-group">
							    <label for="inputEmail3" class="col-sm-2 control-label">Room Number</label>
							    <div class="col-sm-10">
							      <input readonly="readonly"  type="number" class="form-control" id="inputEmail3" value="${roomList.id}" name="id" placeholder="Please enter room id">
							    </div>
							  </div>
							  <div class="form-group">
							    <label for="inputPassword3" class="col-sm-2 control-label">Room Name</label>
									<div class="col-sm-10">
							      <input type="text" class="form-control" id="inputPassword3" name="name" value="${roomList.name}" placeholder="Please enter the room name">
							    </div>
							  </div>
							<div class="form-group">
								<label for="inputCapacity" class="col-sm-2 control-label">Room Capacity</label>
								<div class="col-sm-10">
									<input type="number" class="form-control" id="inputCapacity" name="capacity" value="${roomList.capacity}" placeholder="Please enter the room name capacity">
								</div>
							</div>
							<div class="form-group">
								<label for="inputSquare" class="col-sm-2 control-label">Room Square</label>
								<div class="col-sm-10">
									<input type="number" class="form-control" id="inputSquare" name="square" value="${roomList.square}" placeholder="Please enter the room name square">
								</div>
							</div>
							  <div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">Detailed Info</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="message" value="${roomList.message}" placeholder="Detailed Info">
								</div>
							  </div>

							<div class="form-group" style="text-align: center">
								<button class="btn btn-default" type="submit">Submit</button>
								<button class="btn btn-default" type="reset">Reset</button>
							</div>
						</form>
				    </div>
				    
				</div>

			</div>
		</div>
	</div>
	<div class="container" id="footer">
	<div class="row">
		<div class="col-md-12"></div>
	</div>
	</div>
</body>

</html>