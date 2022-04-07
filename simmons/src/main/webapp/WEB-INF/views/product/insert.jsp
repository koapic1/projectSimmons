<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

	<div class="txtBox" style="margin-top:100px">
        <h2>제품등록</h2>
    </div>
    <form action="/insertProcess" method="get">
    <table>
        <div>
            <span><input type="checkbox">A</span>
            <span><input type="checkbox">B</span>
        </div>
      <tbody>
          <!-- 카테고리 -->
        <tr>
          <th class="Category">
            카테고리
            <td>
              <select name="category">
                <option value="MATTRESS">MATTRESS</option>
                <option value="FRAME">FRAME</option>
                <option value="ROOM SET">ROOM SET</option>
                <option value="FOUNDATION">FOUNDATION</option>
                <option value="FURNITURE">FURNITURE</option>
                <option value="BEDDING">BEDDING</option>
                <option value="FRAGRANCE">FRAGRANCE</option>
              </select>
            </td>
          </th>
        </tr>
        <!-- 품명 -->
        <tr>
            <th class="Name">
                품명
                <td><input type="text" name="name"></td>
            </th>
        </tr>
        <!-- 구성품 -->
        <tr>
            <th class="Component">
                구성품
                <td><textarea name="component"></textarea></td>
            </th>
        </tr>
        <!-- 주요소재 -->
        <tr>
            <th class="Material">
                주요소재
                <td><textarea name="material"></textarea></td>
            </th>
        </tr>
        <!--제조사/원산지 -->
        <tr>
            <th class="Productor">
                제조사/원산지
                <td><textarea name="product"></textarea></td>
            </th>
        </tr>
        <!-- 배송,설치비용 -->
        <tr>
            <th class="Delivery">
                배송,설치비용
                <td>
                    <select name="delevery">
                        <option value="add">설치비용추가</option>
                        <option value="free">설치비용무료</option>
                    </select>
                </td>
            </th>
        </tr>
        <!-- 품질보증기준 -->
        <tr>
            <th class="Guarantee">
                품질보증기준
                <td><input type="checkbox" name="guarantee"></td>
            </th>
        </tr>
        <!-- 취급주의사항 -->
        <tr>
            <th class="Precaution">
                자가검사번호
                <td><input type="text" name="precaution"></td>
            </th>
        </tr>
        <!-- 자가검사번호 -->
        <tr>
            <th class="Test">
                자가검사번호
                <td><input type="text" name="test"></td>
            </th>
        </tr>
        <!-- 사진 -->
        <tr>
            <th class="Img">
                사진
                <td><input type="file" name="Img" placeholder="이미지파일" id="Img"></td>
            </th>
        </tr>
        <!-- 리얼이미지 -->
        <tr>
            <th class="test">
                리얼이미지
                <td><textarea placeholder="내용을 입력해주세요" name="" id="summernote"></textarea></td>
            </th>
        </tr>
        <!-- 본문내용 -->
        <tr>
            <th class="Content">
                본문내용
                <td><textarea></textarea></td>
            </th>
        </tr>
        <tr>
            <th class="Color">
                색상
                <td><input type="checkbox" name="bleck">블랙</td>
                <td><input type="checkbox" name="red">레드</td>
                <td><input type="checkbox" name="white">화이트</td>
            </th>
        </tr>
    <tr>
        <th>이름</th>
        <th>스펙</th>
        <th>가격</th>
    </tr>
    <tr>
        <td><input></td>
        <td><input></td>
        <td><input></td>
    </tr>
    <tr>
        <td><input></td>
        <td><input></td>
        <td><input></td>
    </tr>
    <tr>
        <td><input></td>
        <td><input></td>
        <td><input></td>
    </tr>
    <tr>
        <td><input></td>
        <td><input></td>
        <td><input></td>
    </tr>
    <tr>
        <td><input></td>
        <td><input></td>
        <td><input></td>
    </tr>
      </tbody>
    </table>
    <button type="submit">작성</button>
    </form>

<%@ include file="../include/footer.jsp" %>