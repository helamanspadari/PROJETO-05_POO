<%@page import="br.com.fatecpg.classes.Quiz"%>
<%@page import="br.com.fatecpg.classes.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>        
        <div class="section section-white">
	        <div class="container">
	        	<div class="row">
	
				<div class="section-title">
				<h1>Pontuação</h1>
				</div>
                            <div class="col-md-4 col-sm-6">
                            <table class="table table-bordered table-responsive">
                                <tr>
                                    <th>Nome</th>
                                    <th>Última pontuação</th>
                                    <th>Pontuação média</th>
                                    
                                </tr>
                                <%for (int i=0;i<10;i++) {%>
                                    <tr>
                                        <td>Nome</td> <!--getNome-->
                                        <td><%= 100*Quiz.getUltimaGrade()%></td>
                                        <td><%= 100*Quiz.getGradeMedia()%></td>
                                    </tr>
                                <%}%>
                            </table>
                            </div>
                        </div>
                </div>
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
