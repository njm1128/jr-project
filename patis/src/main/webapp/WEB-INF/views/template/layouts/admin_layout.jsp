<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="tiles"
uri="http://tiles.apache.org/tags-tiles"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="today" class="java.util.Date" />
<fmt:formatDate value="${today}" pattern="yyyyMMddHHmmddss" var="ver" />

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>관리자페이지</title>
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="/assets/images/commons/favicon.png"
    />
    <link
      rel="stylesheet"
      href="/assets/plugins/font-awesome-4.7.0/font-awesome.min.css"
    />
    <link
      rel="stylesheet"
      href="/assets/css/admin/adminStyles.css?ver=${ver}"
    />
	<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <link
      rel="stylesheet"
      href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
      type="text/css"
    />
  </head>
  <body>
    <div class="admin-box">
      <div class="admin-box__header">
        <tiles:insertAttribute name="header" />
      </div>

      <div class="admin-box__main">
        <div class="admin-box__main__left">
          <tiles:insertAttribute name="left" />
        </div>

        <div class="admin-box__main__container">
          <div class="admin-box__main__content">
            <tiles:insertAttribute name="content" />
          </div>

          <div class="admin-box__footer">
            <tiles:insertAttribute name="footer" />
          </div>
        </div>
      </div>
    </div>
  </body>
  <script src="/assets/js/jquery-1.12.4.min.js"></script>
  <script src="/assets/js/admin/admin_left.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
  <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</html>
