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
        <li class="on">
          <a href="MyPage?no=${loggedMemberDto.no }">주문/배송정보</a>
        </li>
        <li>
          <a href="Wish?no=${loggedMemberDto.no }">위시리스트</a>
        </li>
        <li>
          <a href="PwConfirm?no=${loggedMemberDto.no }">회원정보 수정</a>
        </li>
      </ul>
      <!-- 기간별검색 및 주문 번호 검색 -->
      <!-- 주문내역 확인 -->
      <div class="tableBox">
        <table>
          <colgroup>
            <col style="width: 12.5%" />
            <col style="width: 12.5%" />
            <col style="width: 12.5%" />
            <col style="width: 12.5%" />
            <col style="width: 12.5%" />
            <col style="width: 10%" />
            <col style="width: 10%" />
            <col style="width: 10%" />
          </colgroup>
          <thead>
            <tr>
              <th>주문번호</th>
              <th>제품명</th>
              <th>수량</th>
              <th>결제수단</th>
              <th>결제금액</th>
              <th>주문일자</th>
              <th>수신자명</th>
              <th>주문상태</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td colspan="8">주문 내역이 존재하지 않습니다</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</main>

<%@ include file="../include/footer.jsp" %>
