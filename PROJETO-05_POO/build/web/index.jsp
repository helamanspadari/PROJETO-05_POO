<%@page import="br.com.fatecpg.classes.Question"%>
<%@page import="br.com.fatecpg.classes.Quiz"%>
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
					<div class="col-md-12">
						<div class="calltoaction-wrapper">
							<h3>Bem vindo ao <span style="color:#aec62c; text-transform:uppercase;font-size:24px;">Show do PUPO</span>, um quiz feito pelo Grupo 06, proposto para o TP-05 da disciplina POO! </h3><br/><br/>
                                                        <a href="teste.jsp" style="width:300px; height:50px;" class="btn btn-blue"><h2>Iniciar Quiz!</h2></a>
						</div>
					</div>
				</div>
			</div>
		</div>
<hr>


        <div class="section section-white">
	        <div class="container">
	        	<div class="row">
	
				<div class="section-title">
				<h2>Colaboradores</h2>
				</div>
		
		
			<ul class="grid cs-style-3">
	        	<div class="col-md-4 col-sm-6">
					<figure>
						<img src="img/portfolio/luiz.jpg" alt="img04">
						<figcaption>
							<h3>Luiz Spinelli</h3>
							<span>Bootstrap e estilização</span>
							<a href="#">Mais</a>
						</figcaption>
					</figure>
	        	</div>	
				<div class="col-md-4 col-sm-6">
					<figure>
						<img src="img/portfolio/andre.jpg" alt="img01">
						<figcaption>
							<h3>André</h3>
							<span>...</span>
							<a href="#">Mais</a>
						</figcaption>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6">
					<figure>
						<img src="img/portfolio/helaman.jpg" alt="img02">
						<figcaption>
							<h3>Helaman</h3>
							<span>...</span>
							<a href="#">Mais</a>
						</figcaption>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6">
					<figure>
						<img src="img/portfolio/higor.jpg" alt="img05">
						<figcaption>
							<h3>Higor</h3>
							<span>...</span>
							<a href="#">Mais</a>
						</figcaption>
					</figure>
				</div>
                            	<div class="col-md-4 col-sm-6">

				</div>
				<div class="col-md-4 col-sm-6">
					<figure>
						<img src="img/portfolio/raul.jpg" alt="img03">
						<figcaption>
							<h3>Raul</h3>
							<span>...</span>
							<a href="#">Mais</a>
						</figcaption>
					</figure>
				</div>
			</ul>
	        	</div>
	        </div>
	    </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
