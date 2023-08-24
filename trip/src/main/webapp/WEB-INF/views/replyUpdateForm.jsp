<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>TRIPSPOT_USER_REPLYUPDATE</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>	

<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/styles.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap1.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min1.css">
<style type="text/css">
* {
	box-sizing: border-box;
}

.file-input {
	display: inline-block;
	text-align: left;
	background: #fff;
	padding: 3px; /* 버튼 padding */
	width: 450px;
	position: relative;
	border-radius: 3px;
}

.file-input>[type='file'] { /* 기존 디자인 없애기 */
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	opacity: 0;
	z-index: 10;
	cursor: pointer;
}

.file-input:hover>.button {
	background: dodgerblue;
	color: white;
}

.file-input>.label {
	color: #333;
	white-space: nowrap;
	opacity: .3;
}

.file-input.-chosen>.label {
	opacity: 1;
}

* {
	box-sizing: border-box;
}

.file-input>.button {
	display: inline-block;
	cursor: pointer;
	background: #eee;
	padding: 4px 12px;
	border-radius: 12px; /* 버튼 radius */
	margin-right: 8px;
}

.file-input:hover>.button {
	background: dodgerblue;
	color: white;
}

.file-input>.label {
	color: #333;
	white-space: nowrap;
	opacity: .3;
}

.file-input.-chosen>.label {
	opacity: 1;
}

.form-item {
	display: flex;
	flex-direction: row-reverse;
	width: 370px;
	align-items: center;
}

.form-item input {
	width: 100%;
	font-size: 18px;
	color: #111111;
	border: 0;
	border: 1px #cccccc solid;
}

.form-item input:focus {
	border-color: #000;
	outline: none;
}

/* textarea 박스*/
.form-item1 {
	display: flex;
	flex-direction: row-reverse;
	align-items: center;
}

.form-item1 textarea {
	width: 100%;
	font-size: 18px;
	color: #111111;
	border: 0;
	border: 1px #cccccc solid;
}

.form-item1 textarea:focus {
	border-color: #000;
	outline: none;
}

.navbar {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	z-index: 9999;
}

@font-face {
    font-family: 'OTWelcomeRA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeRA.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
}

@font-face {
    font-family: 'OTWelcomeRA1';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeRA.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}

@font-face { /* 귀여운 느낌의 글씨체 */
    font-family: 'omyu_pretty';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

@font-face { /* 정형화된 느낌이면서 단정 */
    font-family: 'KBIZHanmaumGothic';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/KBIZHanmaumGothic.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: 'SeoulNamsanM';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/SeoulNamsanM.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.b {
	font-family: 'SeoulNamsanM';
}

.a {
	font-family: 'SeoulNamsanM';
	font-size: 17px;
	color: #3a3a3a;
} 

/*------------------------------------------------------*/
a.delfile:hover {
	color: black;
}
.delfile {
	text-decoration: none;
	color: gray;
}

</style>
</head>
<body>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="memberInfo.me">TRIP</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarColor03"
				aria-controls="navbarColor03" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarColor03">
				<ul class="navbar-nav me-auto">
					<li class="nav-item"><span class="nav-link active">${user.MEMBER_ID }님</span>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="getTravelSpotList.do">TravelList</a></li>
					<li class="nav-item"><a class="nav-link" href="logout.me">Logout</a>
					</li>
				</ul>
				<form class="d-flex" action="getTravelSpotList.do" method="get">
					<select name="searchCondition" class="b">
						<option value="PLACE">관광지</option>
						<option value="CONTENT">주소</option>
					</select> <input class="form-control me-sm-2" type="text"
						placeholder="Search" name="searchKeyword"> <input
						class="btn btn-secondary my-2 my-sm-0" type="submit"
						value="Search">
				</form>
			</div>
		</div>
	</nav>
	<!-- Page Header-->
	<!-- <header class="masthead" style="background-color: #9E6F21;">
		<div class="container position-relative px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<div class="page-heading">
						<h1>Reply Update:admin</h1>
					</div>
				</div>
			</div>
		</div>
	</header> -->
	<!-- Main Content-->
	<main class="mb-4">
		<br>
		<br>
		<br>
		<br>
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<!-- <div class="col-md-10 col-lg-8 col-xl-7"> -->
			<div align="center" class="card border-primary mb-3"
				style="width: 900px;">
				
				<br>
				<form  id="myform" action="updateReply.do" method="post"
					enctype="multipart/form-data">
					<input name="reseq" type="hidden" value="${reply.reseq}" />
					<table cellpadding="0" cellspacing="0" width="800">
						
						<tr style="height: 15px;">
						</tr>
						
						<tr>
							<td bgcolor="#f5f5f5" width="80" class="b">작성자</td>
							<td align="left">
								<%-- <input type="text" name="writer" style="width:650px;"
										value="${reply.writer}" />--%> ${reply.writer}
							</td>
						</tr>

						<tr style="height: 30px;">
						</tr>

						<tr>
							<td bgcolor="#f5f5f5" class="b">내&nbsp;&nbsp;&nbsp;용</td>
							<td align="left" class="form-item1"><textarea name="content"
									cols="103" rows="15" style="padding: 15px; font-size: 16px;" class="b">${reply.content}</textarea></td>
						</tr>

						<tr style="height: 20px;">
						</tr>

						<tr>
							<!--<td bgcolor="#f5f5f5">사진첨부1</td>
									<td align="left"><input type="file" name="uploadFile1"
										accept="image/*"></td> -->

							<td colspan="2" id="fileup1" class="fileup">
								<div class='file-input'>
									<input type='file' id="file1" name="uploadFile1" data-index="1"
										accept="image/*"> <span
										class="btn btn-secondary disabled">Image Upload1</span> <label
										for="file1" class='label del1'>${reply.image1}</label>
								</div>
								
								<!-- 추가 코드! -->
								<c:if test="${not empty reply.image1}">
									<a href='#this' name='file-delete' data-index="1" class="delfile b">삭제</a>
								</c:if>
							</td>
						</tr>
						<tr>
							<!--<td bgcolor="#f5f5f5">사진첨부2</td>
									<td align="left"><input type="file" name="uploadFile2"
										accept="image/*"></td> -->
							<td colspan="2" id="fileup2" class="fileup">
								<div class='file-input'>
									<input type='file' id="file2" name="uploadFile2" data-index="2"
										accept="image/*"> <span
										class="btn btn-secondary disabled">Image Upload2</span> <label
										for="file2" class='label del2'>${reply.image2}</label>
								</div>
								
								<!-- 추가 코드! -->
								<c:if test="${not empty reply.image2}">
									<a href='#this' name='file-delete' data-index="2" class="delfile b">삭제</a>
								</c:if>
							</td>
						</tr>
						<tr>
							<!--<td bgcolor="#f5f5f5">사진첨부3</td>
									<td align="left"><input type="file" name="uploadFile3"
										accept="image/*"></td> -->
							<td colspan="2" id="fileup3" class="fileup">
								<div class='file-input'>
									<input type='file' id="file3" name="uploadFile3" data-index="3"
										accept="image/*"> <span
										class="btn btn-secondary disabled">Image Upload3</span> <label
										for="file3" class='label del3'>${reply.image3}</label>
								</div>
								
								<!-- 추가 코드! -->
								<c:if test="${not empty reply.image3}">
									<a href='#this' name='file-delete' data-index="3" class="delfile b">삭제</a> 
								</c:if>
							</td>
						</tr>
						<tr>
							<!--<td bgcolor="#f5f5f5">사진첨부4</td>
									<td align="left"><input type="file" name="uploadFile4"
										accept="image/*"></td> -->
							<td colspan="2" id="fileup4" class="fileup">
								<div class='file-input'>
									<input type='file' id="file4" name="uploadFile4" data-index="4"
										accept="image/*"> <span
										class="btn btn-secondary disabled">Image Upload4</span> <label
										for="file4" class='label del4'>${reply.image4}</label>
								</div>
								
								<!-- 추가 코드! -->
								<c:if test="${not empty reply.image4}">
									<a href='#this' name='file-delete' data-index="4" class="delfile b">삭제</a>
								</c:if>
							</td>
						</tr>
						
						<tr style="height: 20px;">
						</tr>
						
						<tr>
							<td colspan="2" align="center" class="b"><input type="submit"
								value="수정" class="btn btn-secondary text-uppercase" />&nbsp;&nbsp;
								<span class="btn btn-secondary"> <a
									href="getTravelSpot.do?reseq=${reply.reseq}&seq=${reply.seq}"
									style="color: white; text-decoration: none;">취소</a>
							</span></td>
						</tr>
						
						<tr style="height: 10px;">
						</tr>

						<script type="text/javascript">
							$(document).ready(function() {				
								$(".fileup").on("click", "a[name='file-delete']", function(e) {
						            e.preventDefault();
						            var clickedIndex = $(this).data("index");
						            var fileInput = $("input[type='file'][data-index='" + clickedIndex + "']");
									
						         	// 파일 입력란의 값을 비움
						            fileInput.val("");
						         
						            // Hidden 필드를 동적으로 생성하고 값을 설정
						            var hiddenField = $("<input>").attr({
						                type: "hidden",
						                name: "file-status-" + clickedIndex,
						                value: clickedIndex
						            });
						
						            // Hidden 필드를 폼에 추가
						            $("#myform").append(hiddenField);
						            
						         	// 삭제 버튼 숨김
							        $(this).hide();
						            
						            // 삭제 처리
						            deleteFile(clickedIndex);
						            
						        });
						    });
						
						    function deleteFile(index) {
						    	$("label.del" + index).text("");
						        
						    }
						 	
							// 파일 선택 시 레이블 업데이트
							$("input[type='file']").on("change", function() {
							    var input = $(this);
							    var index = input.data("index");
							    var fileName = input.val().split("\\").pop();
							    
							    // 레이블 업데이트
							    console.log("파일이 선택되었습니다. Index: " + index + ", 파일 이름: " + fileName);
							    console.log("레이블 선택: " + $(".label.del" + index).length);
							    console.log("레이블 텍스트 업데이트: " + fileName);
							    $("label.del" + index).text(fileName);
							    
							    
							 	// 파일이 선택되었으면 삭제 버튼 표시
						        if (fileName !== "") {
						            $("a.delfile[data-index='" + index + "']").show();
						        } else {
						            // 파일이 선택되지 않았으면 삭제 버튼 숨김
						            $("a.delfile[data-index='" + index + "']").hide();
						        }
							 	
							 	
				                // 삭제 버튼이 이미 추가되지 않았다면 추가
							    if (fileName !== "" && $("a.delfile[data-index='" + index + "']").length === 0) {
							        var str = "<a href='#this' name='file-delete' data-index='" + index + "' class='delfile b'>삭제</a>";
							        $("#fileup" + index).append(str);
							    }
							}); 
							
						</script>

					</table>
				</form>
				<br>
				<%-- <a href="getReplyList.do?seq=${travel.seq}">목록 가기</a> --%>
			</div>
		</div>
	</main>
	<!-- Footer-->
	<footer class="border-top">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<ul class="list-inline text-center">
						<li class="list-inline-item"><a href="#!"> <span
								class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-twitter fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a href="#!"> <span
								class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a href="#!"> <span
								class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-github fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
					</ul>
					<div class="small text-center text-muted fst-italic">Copyright
						&copy; Your Website 2023</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="<c:url value="/resources/js/scripts.js"/>" />
</body>
</html>
