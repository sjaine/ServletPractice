<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Melong</title>
</head>
<body>
<%
	// 아티스트 정보 
	
	    Map<String, Object> artistInfo = new HashMap<>();
	    artistInfo.put("name", "아이유");
	    artistInfo.put("debute", 2008);
	    artistInfo.put("agency", "EDAM엔터테인먼트");
	    artistInfo.put("photo", "https://i.namu.wiki/i/KHZxgx6dilwr4Z7uu6wSPoVlf5aIb6rq6qIOBV2LYBYdN9cWFaLlvkggojNNTD6mrwtGxS_lTPh4Woge2hzuZQ.webp");
	
	
	// 아이유 노래 리스트 
	    List<Map<String, Object>> musicList = new ArrayList<>();
	
	    Map<String, Object> musicInfo = new HashMap<>();
	    musicInfo.put("id", 1);
	    musicInfo.put("title", "팔레트");
	    musicInfo.put("album", "Palette");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "아이유");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 2);
	    musicInfo.put("title", "좋은날");
	    musicInfo.put("album", "Real");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://i.namu.wiki/i/HWbOplqVR2OZViL2HzTN5aPXDkOP4yXLz9RKy_NML0tpPhTx4OfSqQ5i7B0U212p0iw7hMmVEZWML-ff9CDwrQ.webp");
	    musicInfo.put("time", 233);
	    musicInfo.put("composer", "이민수");
	    musicInfo.put("lyricist", "김이나");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 3);
	    musicInfo.put("title", "밤편지");
	    musicInfo.put("album", "palette");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	    musicInfo.put("time", 253);
	    musicInfo.put("composer", "제휘,김희원");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 4);
	    musicInfo.put("title", "삐삐");
	    musicInfo.put("album", "삐삐");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://image.bugsm.co.kr/album/images/500/201991/20199158.jpg");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "이종훈");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 5);
	    musicInfo.put("title", "스물셋");
	    musicInfo.put("album", "CHAT-SHIRE");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://image.bugsm.co.kr/album/images/500/5370/537084.jpg");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "아이유,이종훈,이채규");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 6);
	    musicInfo.put("title", "Blueming");
	    musicInfo.put("album", "Love poem");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "아이유,이종훈,이채규");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	    
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 7);
	    musicInfo.put("title", "Hype Boy");
	    musicInfo.put("album", "New Jeans");
	    musicInfo.put("singer", "뉴진스");
	    musicInfo.put("thumbnail", "https://i.namu.wiki/i/hn55b9JfPE6Yigyk4PfiC7FNZA5XyLKTYZUA_5H15C21TPSNGAlB_2GsfSwgOW7oFR87RaeHs2smDYBF2x9ZdASf4mCiKChQCuzO3WO2yB6QntRaP1WUS3xwkud8eAMSXH2G6ylJin6LiDrIHDO6XQ.jpg");
	    musicInfo.put("time", 178);
	    musicInfo.put("composer", "Gigi, Ylva Dimberg, 하니(HANNI)");
	    musicInfo.put("lyricist", "250, Ylva Dimberg");
	    musicList.add(musicInfo);
	    
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 8);
	    musicInfo.put("title", "Bubble Gum");
	    musicInfo.put("album", "How Sweet");
	    musicInfo.put("singer", "뉴진스");
	    musicInfo.put("thumbnail", "https://i.namu.wiki/i/0mWMxCUB0CsjLirv3Sq4N0nPnRBL63DtF0XWE7xtDQ1h6pxlE7_3IB706BUyrIxaTLQu2x1U7D85Dvhjm33zlBPcWzeAUHYYM-KnBygnTyDJfs-kbw_uqp4dKGsw6XinZVKAr8jKiEIdCfs-lrvcqQ.webp");
	    musicInfo.put("time", 201);
	    musicInfo.put("composer", "250, Sarah Aarons, Elvira Anderfjard, Oscar Scheller");
	    musicInfo.put("lyricist", "Gigi, Sarah Aarons, Elvira Anderfjard, 다니엘");
	    musicList.add(musicInfo);
	    
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 9);
	    musicInfo.put("title", "Armageddon");
	    musicInfo.put("album", "Armageddon");
	    musicInfo.put("singer", "에스파");
	    musicInfo.put("thumbnail", "https://i.namu.wiki/i/CVcZDtsyzRao8HfIU-DF9AeqDsZePiGsVhKZRkoFxy4FB2C5KOcBQ2FCWhSpk7-mZVuQPeoStimhvEIWMQYT_aQcfvB_L2Z_t2PQYFbgc4oc0gE-UYZl8IMbju5pi9ozZON-TFRZsYPBvCFYsLtr0w.webp");
	    musicInfo.put("time", 196);
	    musicInfo.put("composer", "EJAE, SUMIN, Waker");
	    musicInfo.put("lyricist", "방혜현");
	    musicList.add(musicInfo);
	    
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 10);
	    musicInfo.put("title", "Salty & Sweet");
	    musicInfo.put("album", "MY WORLD");
	    musicInfo.put("singer", "에스파");
	    musicInfo.put("thumbnail", "https://i.namu.wiki/i/88_HJPqAOQiVXTAQCxF8opBYxHsX7XCYGPqGypQMg68_AtLmhpO2J0xVwcuHtEqSJlnsgxQPzOuFQOJLCH0kOEjio4zUTJjOhnP9HmPTRaeUDkeg8LMxdXxR7bzbrzIfOzNcN_C3do9AU3eyY36Ulg.webp");
	    musicInfo.put("time", 202);
	    musicInfo.put("composer", "Anne Judith Wik, Moa “Cazzi Opeia” Carlebecker, JINBYJIN");
	    musicInfo.put("lyricist", "방혜현");
	    musicList.add(musicInfo);
	    
	    String keyword = request.getParameter("keyword");
	%>

	<div class="m-4">
		<header>
			<div class="d-flex mt-2">
				<h3 class="mr-5"><a href="/jsp/test/test10.jsp" class="text-success" style="text-decoration: none;">Melong</a></h3>
				<form class="input-group mb-3 ml-5 w-25" method="get" action="/jsp/test/test10-list.jsp">
					<input type="text" class="form-control" name="keyword">
					<div class="input-group-append">
				    	<button type="submit" class="input-group-text bg-info text-white">검색</button>
					</div>
				</form>			
			</div>
			<nav class="mt-3">
				<ul class="nav">
					<li class="nav-item"><a href="#" class="nav-link text-body font-weight-bolder">멜롱차트</a></li>
					<li class="nav-item"><a href="#" class="nav-link text-body font-weight-bolder">최신음악</a></li>
					<li class="nav-item"><a href="#" class="nav-link text-body font-weight-bolder">장르음악</a></li>
					<li class="nav-item"><a href="#" class="nav-link text-body font-weight-bolder">멜롱DJ</a></li>
					<li class="nav-item"><a href="#" class="nav-link text-body font-weight-bolder">뮤직어워드</a></li>
				</ul>
			</nav>
		</header>
		<section class="mt-2 mb-5">
			<article class="border border-success d-flex p-3">
				<div>
					<img src="<%= artistInfo.get("photo") %>" width=200>
				</div>
				<div class="ml-4">
					<h2><%= artistInfo.get("name") %></h2>
					<div><%= artistInfo.get("agency") %></div>
					<div><%= artistInfo.get("debute") %> 데뷔</div>
				</div>
			</article>
			<article class="mt-4">
				<h3>곡 목록</h3>
				<table class="table text-center">
					<thead>
						<tr>
							<th scope="col">no</th>
							<th scope="col">제목</th>
							<th scope="col">앨범</th>
						</tr>
					</thead>
					<tbody>
						<% for(Map<String, Object> music:musicList) { %>
						<tr>
							<td><%= music.get("id") %></td>
							<td class="text-primary"><a href="/jsp/test/test10-detail.jsp?id=<%= music.get("id") %>"><%= music.get("title") %></a></td>
							<td><%= music.get("album") %></td>
						</tr>
						<% } %>
					</tbody>
				</table>
			</article>
		</section>
		<footer class="mt-5">
			<hr><div class="small-text text-secondary">Copyright 2021. melong All Rights Reserved.</div>
		</footer>
	</div>
</body>
</html>