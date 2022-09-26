<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.model.Client" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sach khach hang</title>
<style>
    table,td,th,tr{
        border: 1px solid red;
    }
    img{height:40px;
           width:40px}
</style>
</head>
<body>
<%

    List<Client> clientList = new ArrayList<>();
    clientList.add(new Client("Tuan", "04-08-1998", "Ha Noi", "https://pdp.edu.vn/wp-content/uploads/2021/06/hinh-anh-hoat-hinh-de-thuong-1.jpg"));
    clientList.add(new Client("Han", "1996", "Ninh Binh", "https://haycafe.vn/wp-content/uploads/2021/11/hinh-anh-hoat-hinh-de-thuong-cute-dep-nhat.jpg"));
    clientList.add(new Client("Vinh", "04-08-2000", "Ha Noi", "https://vaithuhayho.com/wp-content/uploads/2021/04/anh-hoat-hinh-de-thuong-24.jpg"));
    request.setAttribute("clientList", clientList);
%>
<h2>Danh sach khach hang</h2>
<table>
    <tr>
        <th>Ten</th>
        <th>Ngay sinh</th>
        <th>Dia chi</th>
        <th>Anh</th>
    </tr>
    <c:forEach items="${clientList}" var="client">
        <tr>
            <td>${client.getName()}</td>
            <td>${client.getDateOfBirth()}</td>
            <td>${client.getAddress()}</td>
            <td><img src="${client.getImage()}"></td>
        </tr>

    </c:forEach>
</table>
</body>
</html>