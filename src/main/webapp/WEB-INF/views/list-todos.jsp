<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>


	<div class="container">
		<p>Welcome ${user}</p>
		<table class="table table-striped">
			<caption>Your Todo list</caption>
			<thead>
				<th>Description</th>
				<th>Category</th>
				<th>Actions</th>				
			</thead>
			<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.name}</td>
					<td>${todo.category}</td>
					<td><a class="btn btn-danger"
					href="/delete-todo.do?todo=${todo.name}&category=${todo.category}">Delete</a></td>
				</tr>
			</c:forEach>				
			</tbody>		
		</table>
		<div>
			<a class="btn btn-success" href="/add-todo.do">Add a New TODO</a>
		</div>
	</div>
<%@ include file="../common/footer.jspf" %>
