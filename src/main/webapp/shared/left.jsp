<%-- 
    Document   : Left
    Created on : Sep 28, 2023, 12:08:09 PM
    Author     : KHOACNTT
--%>

<%@page import="dao.LoaiDAO"%>
<%@page import="model.Loai"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    LoaiDAO loaiDAO = new LoaiDAO();
    ArrayList<Loai> dsloai = loaiDAO.getAll();
%>
<div class="card mb-3">
    <h3 class="card-header">Danh muc loai</h3>  
    <ul class="list-group list-group-flush">
        <%
            for (Loai x : dsloai)
            {
        %>
        <li class="list-group-item"><a href="product.jsp?maloai= <%=x.getMaloai()%>"><%=x.getTenloai()%></a></li>
            <%
                }
            %>
    </ul>   
</div>
