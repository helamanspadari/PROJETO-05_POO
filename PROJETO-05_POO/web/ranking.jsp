<%@page import="br.com.fatecpg.classes.Quiz"%>
<%@page import="br.com.fatecpg.classes.Question"%>
<%@page import="br.com.fatecpg.classes.Jogador"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Collections"%>
<%@page import="java.lang.Comparable"%>
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
                            <table id="table" class="table table-bordered table-responsive">
                                <tr>
                                    <th>Nome</th>
                                    <th>Última pontuação</th>
                                    <th>Pontuação média</th>
                                </tr>
                                <%ArrayList<Jogador> rank = Quiz.getRanking();%>
                                <%for (Jogador ele : rank) {%>
                                    <tr>
                                        <td><%ele.getNome();%></td> <!--getNome-->
                                        <td><%= 100*ele.getMaiorPontuacao()%></td>
                                        <td><%= 100*ele.getMediaPontos()%></td>
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
