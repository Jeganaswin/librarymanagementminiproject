<%@ page language="java" contentType="text/html; charset=UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<html> 
<head> 
<title>Rent Books</title> 
<!-- ✅ ERROR MESSAGE HERE -->
<c:if test="${not empty error}">
    <p style="color:red; font-weight:bold;">
        ${error}
    </p>
</c:if>

<div class="container">
<style> 
body { font-family: Arial; text-align: center; } 
.container { margin-top: 30px; display: inline-block; padding: 20px; border: 1px solid #ccc; border-radius: 10px; } 
table { margin: auto; border-collapse: collapse; width: 80%; } 
th, td { border: 1px solid black; padding: 10px; } 
input { padding: 6px; } 
.btn { padding: 8px 12px; background-color: green; color: white; border: none; border-radius: 5px; cursor: pointer; } 
.disabled { color: red; font-weight: bold; } 
</style> 
</head> 

<body> 

<h2>📚 Rent Books</h2> 

<div class="container"> 

<!-- USER DETAILS -->
<h3>👤 User Details</h3> 
<p><b>Name:</b> ${user.username}</p> 
<p><b>Contact:</b> ${user.contacts}</p> 

<hr> 

<!-- RENT FORM -->
<form action="${pageContext.request.contextPath}/rent/save" method="post"> 

<input type="hidden" name="userId" value="${user.userId}" /> 

<h3>Select Book & Quantity</h3> 

<table> 
<tr> 
<th>Select</th> 
<th>Book Name</th> 
<th>Available</th> 
<th>Quantity</th> 
</tr> 

<c:forEach var="book" items="${books}"> 
<tr> 

<td> 
<input type="radio" name="bookId" value="${book.bkid}" onclick="enableQty(this)" required /> 
</td> 

<td>${book.bkname}</td> 

<td>${book.count}</td> 

<td> 
<c:choose> 
<c:when test="${book.count > 0}"> 
<input type="number" 
       name="quantity" 
       min="1" 
       max="${book.count}" 
       placeholder="Qty" 
       disabled /> 
</c:when> 
<c:otherwise> 
<span class="disabled">Out of Stock</span> 
</c:otherwise> 
</c:choose> 
</td> 

</tr> 
</c:forEach> 

</table> 

<br> 

<button type="submit" class="btn">Confirm Rent</button> 

</form> 

</div> 

<br> 

<a href="${pageContext.request.contextPath}/home">🏠 Home</a> 

<!-- ✅ JavaScript (only addition) -->
<script>
function enableQty(radio) {
    let rows = document.querySelectorAll("table tr");

    rows.forEach(row => {
        let qtyInput = row.querySelector("input[type='number']");
        if (qtyInput) {
            qtyInput.disabled = true;
            qtyInput.required = false;
            qtyInput.value = "";
        }
    });

    let selectedRow = radio.closest("tr");
    let qty = selectedRow.querySelector("input[type='number']");

    if (qty) {
        qty.disabled = false;
        qty.required = true;
    }
}
</script>

</body> 
</html>