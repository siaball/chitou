<%@page import="tw.jacky.login.model.*"%>
<%@page import="javax.management.MBeanAttributeInfo"%>
<%@page
	import="java.sql.Connection, java.util.*, javax.sql.*, javax.servlet.*,  javax.naming.*,java.io.*,java.sql.* ,tw.georgia.article.model.*,tw.georgia.article.controller.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
     	<%@ include file="/WEB-INF/includes/coco/attraction/AttractionsDescriptionCSS.jsp"%>
<html data-wf-domain="denali-template.webflow.io" data-wf-page="5e4b1a54e48aed7a171ff230"
    data-wf-site="5e4b1a54e48aed761d1ff229" data-wf-status="1">

<head>
    <meta charset="utf-8" />
    <title>All posts</title>
    
    <link rel="stylesheet" type="text/css" href="/css/georgia/article.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
    <script
        type="text/javascript">WebFont.load({ google: { families: ["Lato:100,100italic,300,300italic,400,400italic,700,700italic,900,900italic"] } });</script>
    <!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif]-->
    <script
        type="text/javascript">!function (o, c) { var n = c.documentElement, t = " w-mod-"; n.className += t + "js", ("ontouchstart" in o || o.DocumentTouch && c instanceof DocumentTouch) && (n.className += t + "touch") }(window, document);</script>
    <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=5e4b1a54e48aed761d1ff229"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>
    <script src="https://assets.website-files.com/5e4b1a54e48aed761d1ff229/js/webflow.bf6a5095c.js"
        type="text/javascript"></script>
    <link href="https://img.onl/DOO7l" rel="icon" type="image/png" />
    <link href="https://assets.website-files.com/img/webclip.png" rel="apple-touch-icon" />
    <style>
    	ul {
            font-size: 30px;
        }
        ul li{
        font-size: 20px;
        }
    </style>
</head>

<body>
	<%@ include file="/WEB-INF/includes/coco/attraction/Header.jsp"%>

    <table>
        <tbody>
            <tr>
                <td rowspan="2" style="width: 20%;">
                	<ul>
                		<li></li>
                		<li></li>
                	</ul>
                    <ul>??????<br>
                        <li><a onclick="country();">??????</a></li><br>
                        <li><a>??????</a></li><br>
                        <li><a>??????</a></li><br>
                        <li><a>?????????</a></li><br>
                        <li><a>??????</a></li><br>
                    </ul>
                    <ul>??????<br>
                        <li><a>??????</a></li><br>
                        <li><a>?????????</a></li><br>
                    </ul>
                    <ul>??????<br>
                        <li><a>??????</a></li><br>
                        <li><a>??????</a></li><br>
                        <li><a>?????????</a></li><br>
                        <li><a>?????????</a></li><br>
                        <li><a>????????????</a></li><br>
                        <li><a>???????????????</a></li><br>
                    </ul>
                    <ul>?????????<br>
                        <li><a>??????</a></li><br>
                    </ul>
                    <ul>??????<br>
                        <li><a>??????</a></li><br>
                    </ul>
                </td>
                <td colspan="2" style="text-align: center;"><img style="height:300px;" src="images/georgia/picture/japan-1.jpg" alt=""><br><br></td>
            </tr>
            <tr>
                <td style="width:33%;">
                    <div class="content-column w-col w-col-11">
                        <h1 class="white-bg-heading">??????????????????</h1>
                        <div class="w-dyn-list">
                            <!--???????????????-->

                            <div role="listitem" class="w-dyn-item">
                                <div data-w-id="53cc7567-513c-3103-cd72-dfb075f10bef" class="post-wrapper">
                                    <div class="post-content">
                                        <div class="w-row">
                                            <div class="w-col w-col-4 w-col-medium-4"><a class="w-inline-block">
                                                    <img src="images/georgia/picture/coffeeshop.jpg" alt=""></a></div>
                                            <div class="w-col w-col-8 w-col-medium-8"><a href=""
                                                    class="blog-title-link w-inline-block">
                                                    <h1 foo="bar" class="blog-title">???????????????????????????TaSweet????????????</h1>
                                                </a>
                                                <BR></BR>
                                                <a href="" class="blog-title-link w-inline-block">
                                                    <h1 foo="bar" class="blog-title">?????????OMG</h1>
                                                </a>
                                                <div class="details-wrapper">
                                                    <div class="post-info">June 25, 2020</div>
                                                    <div class="post-info">|</div><a href="/categories/travel"
                                                        class="post-info when-link">??????</a>
                                                </div>
                                                <div class="post-summary-wrapper">
                                                    <p class="post-summary">Saucer, crema carajillo, bar, mocha medium,
                                                        latte cappuccino and espresso acerbic to go. Coffee, irish foam
                                                        turkish coffee blue mountain seasonal. Turkish grinder medium,
                                                        plunger pot, coffee viennese crema gal??o macchiato. </p><a
                                                        href="" class="read-more-link">Read more...</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                            </div>
                </td>
                <td style="width:33%;">
                    <div class="content-column w-col w-col-11">
                        <h1 class="white-bg-heading">??????????????????</h1>
                        <div class="w-dyn-list">
                            <!--???????????????-->

                            <div role="listitem" class="w-dyn-item">
                                <div data-w-id="53cc7567-513c-3103-cd72-dfb075f10bef" class="post-wrapper">
                                    <div class="post-content">
                                        <div class="w-row">
                                            <div class="w-col w-col-4 w-col-medium-4"><a class="w-inline-block">
                                                    <img src="images/georgia/picture/ShinshaibashiS_Angie-255x170.jpg" alt=""></a></div>
                                            <div class="w-col w-col-8 w-col-medium-8"><a href=""
                                                    class="blog-title-link w-inline-block">
                                                    <h1 foo="bar" class="blog-title">???????????????A????????????????????????????????????</h1>
                                                </a>
                                                <BR></BR>
                                                <a href="" class="blog-title-link w-inline-block">
                                                    <h1 foo="bar" class="blog-title">????????????????????????</h1>
                                                </a>
                                                <div class="details-wrapper">
                                                    <div class="post-info">July 28, 2020</div>
                                                    <div class="post-info">|</div><a href="/categories/travel"
                                                        class="post-info when-link">Travel</a>
                                                </div>
                                                <div class="post-summary-wrapper">
                                                    <p class="post-summary">Saucer, crema carajillo, bar, mocha medium,
                                                        latte cappuccino and espresso acerbic to go. Coffee, irish foam
                                                        turkish coffee blue mountain seasonal. Turkish grinder medium,
                                                        plunger pot, coffee viennese crema gal??o macchiato. </p><a
                                                        href="" class="read-more-link">Read more...</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                            </div>
                </td>
            </tr>
        </tbody>
    </table>
    	<%@ include file="/WEB-INF/includes/coco/attraction/Footer.jsp"%>
    
<script type="text/javascript">
function country(){
	let form=$(document.createElement('form')).css({display:'none'}).attr("method","POST").attr("action","article.country");
	 /* let eleFileName=$(document.createElement('input')).attr('name','file_name').val(file_name.substring(pos+1));
	  form.append(eleFileName);*/
	  $("body").append(form);
	  form.submit();
}

</script>
	<%@ include file="/WEB-INF/includes/coco/attraction/AttractionsDescriptionJS.jsp"%>

</body>

</html>