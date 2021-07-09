<%@page import="java.util.*"%>
<%@page import="model.Achivement"%>
<%@page import="model.*"%>
<%@page import="DBUtill.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="TSCommonLayout.jsp"></jsp:include>
	
	<div class='main'>
	
	<table class="table table-striped">
		<tr>
			<th>PreparationID</th>
			<th>Preparation Name</th>
			<th>Sets</th>
			<th>Reps</th>
			
		</tr>
	
		<%
			List<Preparation> preparationList = TS_DButil.getPreaparationList();
				for(Preparation prep : preparationList){
		%>
		
		<tr>
		
			<td><%=prep.getPreparationID() %></td>
			<td><%=prep.getPreparationName() %></td>
			<td><%=prep.getSet() %></td>
			<td><%=prep.getReps() %></td>
			<td>
		<button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Update / Delete</button>
	
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">UPDATE/ DELETE PREPARATION</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <form action="UpdatePreparation" method="post">
		          <table>
		          	<tr>
		          		<td>PreparionID</td>
		          		<td><input type="text" id = "id" name="id" value="<%=prep.getPreparationID() %>" readonly></input></td>
		          	</tr>
		          	<tr>
		          		<td>Preparation Name</td>
		          		<td><input type="text" id = "name" name="name" value="<%=prep.getPreparationName() %>"></input></td>
		          	</tr>
		          	<tr>
		          		<td>Number of sets</td>
		          		<td><input type="text" id = "set" name="set" value="<%=prep.getSet() %>"></input></td>
		          	</tr>
		          	<tr>
		          		<td>Number of reps</td>
		          		<td><input type="text" id = "reps" name="reps" value="<%=prep.getReps() %>"></input></td>
		          	</tr>
		          	<tr>
		          		<td><input type="submit" name="submit" value="Update" class="btn btn-warning"></td>
		          		<td>
							<!-- Delete Preparation -->
							<form action="DeletePreparation" method="post">
								<button type="submit"  id="id" name="id" value="<%=prep.getPreparationID() %>" class="btn btn-danger" ><span>Delete</span></button>
							</form>
						</td>
						</tr>
					</table>
				</form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		       
		      </div>
		    </div>
		  </div>
		</div>
			</td>
														
	</tr>

		<%
		}
		%>
	
	</table>
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">ADD NEW</button>
	
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">ADD NEW PREPARATION</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <form action="InsertPreparation" method="post">
		          <table>
		          	<tr>
		          		<td>PreparionID</td>
		          		<td><input type="text" id = "id" name="id"></input></td>
		          	</tr>
		          	<tr>
		          		<td>Preparation Name</td>
		          		<td><input type="text" id = "name" name="name"></input></td>
		          	</tr>
		          	<tr>
		          		<td>Number of sets</td>
		          		<td><input type="text" id = "set" name="set"></input></td>
		          	</tr>
		          	<tr>
		          		<td>Number of reps</td>
		          		<td><input type="text" id = "reps" name="reps"></input></td>
		          	</tr>
		          	<tr><td><input type="submit" name="submit" value="SAVE"></td></tr>
		          </table>
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      
		      </div>
		    </div>
		  </div>
		</div>
	
	
	</div>
</body>
</html>