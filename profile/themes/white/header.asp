<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="Description" content="<%=config.params.webdescription%>" />
    <meta name="Keywords" content="<%=config.params.webkeywords%>" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="Author" content="<%=config.params.nickname%> - <%=config.params.authoremail%>" />
    <link rel="stylesheet" href="<%=config.params.website + "/" + config.params.styleFolder%>/common.css" type="text/css" />
    <script language="javascript" src="<%=config.params.website + "/assets/js/core/sizzle.js"%>"> </script>
    <title><%=config.params.seotitle%></title>
</head>
<body>
	<div class="pj-zone">
        <div class="pj-wrapper">
            <div class="pj-top">
                <div class="pj-title">
                    <%=config.params.title%>
                    <div class="pj-info"><%=config.params.description%></div>
                </div>
                <div class="pj-search">
                	<form action="search.asp" method="post" style="margin:0; padding:0;">
                    	<div class="pj-search-box fn-clear">
                        	<div class="pj-search-box-input"><input type="text" name="keyword" value="" placeholder="请输入搜索关键字..." /></div>
                            <div class="pj-search-box-btn"><input type="submit" value="搜索" /></div>
                        </div>
                    </form>
                </div>
                <div class="pj-nav">
                	<%
						LoadCacheModule("cache_category", function( cache_category ){
							if ( cache_category.length > 0 ){
					%>
                                <ul class="nav-ul-one">
                    <%
								for ( var i = 0 ; i < cache_category.length ; i++ ){
					%>
                    				<li class="nav-li-one">
                                    	<%
											if ( cache_category[i].cate_outlink === true ){
										%>
                                        	<a href="<%=cache_category[i].cate_outlinktext%>" title="<%=cache_category[i].cate_info%>"><%=cache_category[i].cate_name%></a>
                                        <%		
											}else{
										%>
                                        	<a href="default.asp?c=<%=cache_category[i].id%>" title="<%=cache_category[i].cate_info%>"><%=cache_category[i].cate_name%></a>
                                        <%		
											}
											
											var childrens = cache_category[i].childrens;
											if ( childrens.length > 0 ){
										%>
                                        	<ul class="nav-ul-two">
                                        <%
												for ( var j = 0 ; j < childrens.length ; j++ ){
										%>
                                        			<li class="nav-li-two">
                                        <%
													if ( childrens[j].cate_outlink === true ){
										%>
                                        				<a href="<%=childrens[j].cate_outlinktext%>" title="<%=childrens[j].cate_info%>"><%=childrens[j].cate_name%></a>
                                        <%
													}else{
										%>
                                        				<a href="default.asp?c=<%=childrens[j].id%>" title="<%=childrens[j].cate_info%>"><%=childrens[j].cate_name%></a>
                                        <%
													}
										%>
                                        			</li>
                                        <%
												}
										%>
                                            </ul>
                                        <%		
											}
										%>
                                    </li>
                    <%				
								}
					%>
                                </ul>
                    <%
							}
						});
					%>
                </div>
            </div>
        </div>
    </div>