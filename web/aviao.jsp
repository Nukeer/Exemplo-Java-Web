<%-- 
    Document   : aviao
    Created on : 10/10/2017, 08:04:46
    Author     : Alunos
--%>

<%@page import="dao.AviaoDAO"%>
<%@page import="model.Aviao"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MG - Avião</title>
        <link href="css/index.css" type="text/css" rel="stylesheet">
        <link href="css/util.css" type="text/css" rel="stylesheet">
        <link href="css/tabela.css" type="text/css" rel="stylesheet">
        <link href="css/menu-superior.css" type="text/css" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.css" type="text/css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Londrina+Solid" rel="stylesheet">
    </head>
    <body>
        <%@include file="menu_superior.jsp" %>
        <div class="conteudo">
            <h2 class="conteudo-titulo">Lista de Aviões</h2>
        </div>
        
        <div class="acao-novo">
            <a class="acao-novo-link" href="aviao_cadastro.jsp"><i class="fa fa-plus"></i>Cadastro</a>
        </div>

        <table>
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Categoria</th>
                    <th>Ação</th>
                </tr>
            </thead>
            <tbody>
                <% ArrayList<Aviao> avioes = new AviaoDAO().retornarListaAviao();
                    for (Aviao aviao : avioes) {%>
                <tr>
                    <td>
                        <%= aviao.getNome()%>
                    </td>
                    <td>
                        <%= aviao.getCategoria()%>
                    </td>
                    <td>
                        <a><i class="fa fa-pencil"></i></a>
                        <a><i class="fa fa-trash"></i></a>
                    </td>
                </tr>
                <%}%>
            </tbody>
            <tfoot>
                <tr class="table-footer">
                    <td>Nome</td>
                    <td>Categoria</td>
                    <td>Ação</td>
                </tr>
            </tfoot>
        </table>
    </body>
</html>
