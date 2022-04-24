<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include file="../include/header.jsp" %>

<main>
  <div id="myPage">
    <ul class="home">
      <li>
        <a href="">HOME</a>
      </li>
      <li>
        <a href="">마이페이지</a>
      </li>
    </ul>
    <h2>마이페이지</h2>
    <p>회원님의 이용 현황을 한눈에 확인하실 수 있습니다.</p>
    <!-- 마이 서브 오더리스트 -->
    <div class="aaa">
      <div class="myInfo">
        <div>
          <p>${loggedMemberDto.name } 님</p>
        </div>

        <dl class="coupon">
          <dt>사용가능한쿠폰</dt>
          <dd>
            <em>0</em>
            "장"
          </dd>
        </dl>
        <dl class="won">
          <dt>사용가능한적립금</dt>
          <dd>
            <em>0</em>
            "원"
          </dd>
        </dl>
      </div>
      <!-- 주문배송/위시/회원수정 -->
      <ul class="listGroup">
        <li>
          <a href="MyPage?no=${loggedMemberDto.no }">주문/배송정보</a>
        </li>
        <li>
          <a href="Wish?no=${loggedMemberDto.no }">위시리스트</a>
        </li>
        <li class="on">
          <a href="PwConfirm?no=${loggedMemberDto.no }">회원정보 수정</a>
        </li>
      </ul>
        <form action="PwConfirmProcess" method="post" class="tableBox">
        <div>
          <p>회원정보 수정</p>
        </div>
        <table>
          <tr>
            <th>아이디</th>
            <td class="ccc"><input type="text" name="id" class="readonly" value="${loggedMemberDto.id }" readonly/></td>
          </tr>
          <tr>
            <th>비밀번호</th>
            <td class="ddd">
              <input class="sss" type="password" name="password" placeholder="비밀번호입력해주세요" />
              <p>회원님의정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인합니다</p>
            </td>
          </tr>
        	</table>
	      <div class="btns">
	        <button type="submit" class="confirm">확인</button>
	      </div>
        </form>
    </div>
  </div>
</main>

<%@ include file="../include/footer.jsp" %>
