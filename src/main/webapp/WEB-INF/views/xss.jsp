<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
	<title>XSS</title>
</head>
<body>
	<div id="mydiv">
		${bar}
	</div>
	
	<script type="text/javascript" src="<c:url value="/resources/jquery/1.6/jquery.js" />"></script>
	<script type="text/javascript">
	
		$(document).ready(function() {		
			loadReportData();
		});
		
	    function loadReportData() {
	    	$('#mydiv').load('/spring-mvc-showcase/xss/history',
                function() {
                    reloadReportData = window.setTimeout(loadReportData, 3000);
                });
	    }
	</script>
</body>
</html>
