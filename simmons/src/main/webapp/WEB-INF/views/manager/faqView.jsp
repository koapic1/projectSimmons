<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../include/header.jsp" %>

<!-- main -->
    <main id="main">
      <div class="container">
        <!-- lnb -->
        <ul class="lnb">
          <li><a href="">HOME</a></li>
          <li><a href="">고객센터</a></li>
          <li><a href="">NOTICE VIEW</a></li>
        </ul>

		<div class="txtBox lineOff">
		    <h1>FAQ VIEW</h1>
		</div>

		<div class="view">
			<table>
			  <colgroup>
			    <col style="width: 20%" />
				<col style="width: 80%" />
			  </colgroup>
			  <tbody>
			      <tr class="top">
			  	<th>카테고리</th>
			  	<td class="left">${faqDto.category }</td>
			</tr>
			  	<tr>
			      <th>질문</th>
			      <td class="left">${faqDto.question }</td>
			    </tr>
			    <tr class="bottom">
			      <th>답변</th>
			      <td class="left">${faqDto.answer }</td>
			    </tr>              
			  </tbody>
			</table>
			<div class="btns">
			  <a href="FaqUpdate?no=${faqDto.no }" class="">수정</a>
			  <a href="FaqDelete?no=${faqDto.no }" class="delete">삭제</a>
			  <a href="FaqList" class="cancel btn">목록</a>
			</div>
		</div>
      </div>
    </main>
    <!-- main end -->
    <script>
    	$(".delete").on("click",()=>{
    		if(confirm('정말 삭제하시겠습니까?')){
    			return true;
    		} else {
    			return false;
    		}
    	})
    </script>
    
<%@ include file="../include/footer.jsp" %>