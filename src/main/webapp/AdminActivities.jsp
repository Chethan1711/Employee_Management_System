<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        #nav1::first-letter {
            color: rgb(235, 37, 37);
        }
        #cardpos
        {
            margin-left: 500px;
        }
        
    </style>
</head>
<body>

 <nav class="navbar navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" id="nav1" href="#">JSpiders</a>
        </div>
    </nav>
    <div class="container text-center mt-3 m-auto" id="cardpos">
        <div class="row ">
            <div class="container-fluid col-4">
                <div class="card text-center">
                    <div class="card-header">
                        <h5>Select The option</h5>
                    </div>
                    <div class="card-body">
                        <div class="btn btn-dark btn-sm m-auto"><a href="AddEmp.html">AddEmployee</a></div><br>
                        <div class="btn btn-dark btn-sm m-auto mt-3"><a href="Gettinid.html">select emp by id</a></div><br>
                        <div class="btn btn-dark btn-sm m-auto mt-3"><a href="DispalyAllemps.jsp">display all emps</a></div><br>
                   
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>