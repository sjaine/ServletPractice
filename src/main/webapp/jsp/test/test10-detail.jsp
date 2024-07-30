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
	    
	    String target = request.getParameter("id");
	    String keyword = request.getParameter("keyword");
	    
	    int targetId = 0;
	    
	    if(target != null) {
	    	targetId = Integer.parseInt(request.getParameter("id"));
	    }
	%>

	<div class="m-4">
		<header>
			<div class="d-flex mt-2">
				<h3 class="text-success mr-5">Melong</h3>
				<form class="input-group mb-3 ml-5 w-25" method="get" action="/jsp/test/test10-detail.jsp">
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
			<h3>곡 정보</h3>
			<article class="border border-success d-flex p-3">
				<% for(Map<String, Object> music:musicList) {
					int id = (Integer)music.get("id");
					String search = String.valueOf(music.get("title"));
					
					if(search.equals(keyword) || id == targetId) {
				%>
				<div>
					<img src="<%= music.get("thumbnail") %>" width=250>
				</div>
				<div class="ml-4 mt-2">
					<div class="display-4 font-weight-lighter"><%= music.get("title") %></div>
					<div class="text-success font-weight-bolder"><%= music.get("singer") %></div>
					<table class="table table-borderless font-weight-lighter mt-4 table-sm" >
						<tr>
							<td>앨범</td>
							<td><%= music.get("album") %></td>
						</tr>
						<tr>
							<td>재생시간</td>
							<td><%= (Integer)music.get("time") / 60 %> : <%= (Integer)music.get("time") % 60 %></td>
						</tr>
						<tr>
							<td>작곡가</td>
							<td><%= music.get("composer") %></td>
						</tr>
						<tr>
							<td>작사가</td>
							<td><%= music.get("lyricist") %></td>
						</tr>
					</table>
				</div>
				<%	} 
				} %>
			</article>
			<article class="mt-5">
				<h3>가사</h3>
				<hr> <div>가사 정보 없음</div>
			</article>
		</section>
		<footer class="mt-5">
			<hr><div class="small-text text-secondary">Copyright 2021. melong All Rights Reserved.</div>
		</footer>
	</div>
</body>
</html>