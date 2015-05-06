<%
/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@include file="/html/init.jsp" %>

<portlet:defineObjects />

	
	<script> var contextPath = "<%= request.getContextPath()%>"; </script>
	<!--  <script> var sb_host = "http://localhost:8080"; </script> -->
    <script src="<%= request.getContextPath()%>/js/jquery-2.1.0.min.js"></script>
    
    <script> var sb_host = "<%=email %>"; </script>

   	<script type="text/javascript" src="<%= request.getContextPath()%>/js/angular.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/js/angular-route.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/js/angular-resource.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/js/angular-sanitize.min.js" charset="UTF-8"></script>

    <script type="text/javascript" src="<%= request.getContextPath()%>/js/moment.js" charset="UTF-8"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/js/json2extension.js" charset="UTF-8"></script>
    
    <script src="<%= request.getContextPath()%>/js/jquery-ui/jquery-ui.min.js"></script>
 <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/css/jquery-ui.min.css">
    
    <script src="<%= request.getContextPath()%>/js/ui-bootstrap-tpls-0.10.0.js" charset="UTF-8"></script>
 <!--   <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/bootstrap/css/bootstrap-tmp.css"> -->
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/custom-style.css"/>
    <link rel="shortcut icon" href="http://searchblox-website.s3.amazonaws.com/favicon.ico" />
    <script src="<%= request.getContextPath()%>/bootstrap/js/bootstrap.min.js" charset="UTF-8"></script>

    <script src="<%= request.getContextPath()%>/js/controllers/searchblox-controller.js" charset="UTF-8"></script>
    <script src="<%= request.getContextPath()%>/js/directives/autocomplete-directive.js" charset="UTF-8"></script>
    <script src="<%= request.getContextPath()%>/js/directives/custom-input-directive.js" charset="UTF-8"></script>
    <script src="<%= request.getContextPath()%>/js/directives/media-template-directive.js" charset="UTF-8"></script>
    <script src="<%= request.getContextPath()%>/js/directives/ads-template-directive.js" charset="UTF-8"></script>
    <script src="<%= request.getContextPath()%>/js/factories/searchblox-factory.js" charset="UTF-8"></script>
    <script src="<%= request.getContextPath()%>/js/filters/searchblox-filter.js" charset="UTF-8"></script>
    <script src="<%= request.getContextPath()%>/js/modules/facet-module.js" charset="UTF-8"></script>
    <script src="<%= request.getContextPath()%>/js/modules/rw-ui-slider.js" charset="UTF-8"></script>
    <script src="<%= request.getContextPath()%>/js/modules/searchblox-module.js" charset="UTF-8"></script>
    <script src="<%= request.getContextPath()%>/js/services/searchblox-service.js" charset="UTF-8"></script>
    <script src="<%= request.getContextPath()%>/js/custom-lib/myscripts.js" charset="UTF-8"></script> 
    

<%=email %>
<%=subject %>

    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/autosuggest-style.css"/>
    
    <div ng-app="searchbloxModule" class="container">
     <div style="margin-top:10px;margin-bottom:10px" align="center">
        <img src="<%= request.getContextPath()%>/images/logo-searchblox.png" />
    </div> 
    
    <div ng-view="" class="text-center"></div>
    
    <div id="footer" style="margin-top: 10px;" align="center">
        <span class="app-font">Copyright {{ddate}} SearchBlox Software, Inc.</span>
        <span class="links">&nbsp;<a href="http://www.searchblox.com" target="_blank">Contact Us</a></span>
    </div>

</div>