<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<form
  id="resultIdFrm"
  action="${pageContext.request.contextPath }/resultId.do"
  method="post"
>
  <input id="find-name" name="find-name" type="hidden" />
  <input id="find-reg" name="find-reg" type="hidden" />
  <input id="find-mobile" name="find-mobile" type="hidden" />
</form>

<form
  id="resultId2Frm"
  action="${pageContext.request.contextPath }/resultId2.do"
  method="post"
>
  <input id="find2-name" name="find2-name" type="hidden" />
  <input id="find2-email" name="find2-email" type="hidden" />
</form>

<form id="moveFindPassFrm" action="${pageContext.request.contextPath }/findPass.do" method="get"></form>


<div class="subpage">
  <div class="sub-container" id="sub-container-js">
    <div class="findId_page">
      <h3 class="findId_title">
        <i class="fa fa-search" aria-hidden="true"></i> 아이디 찾기
      </h3>
      <div class="findId_subtitle_wrap">
        <h3 class="findId_subtitle_1">아이디를 모르시나요?</h3>

        <c:choose>
          <c:when test="${errorCode eq '1'}">
            <h3 class="findId_error">
              아이디를 찾을 수 없습니다. 정확한 정보를 입력해주세요.
            </h3>
          </c:when>

          <c:otherwise>
            <h3 class="findId_subtitle_2">
              아이디 찾기 방법 중 가능한 방법을 선택해주세요.
            </h3>
          </c:otherwise>
        </c:choose>
      </div>
      <div class="findId_com_wrap">
        <ul class="search_list">
          <!-- 이름/생년월일/핸드폰 번호로 찾기 -->
          <li>
            <span class="choice_comm">
              <input
                type="radio"
                onchange="findHandler(this.value)"
                id="find_Birth"
                name="searchType"
                class="how_find"
                value="myBirth"
              />
              <label for="find_Birth"
                >이름 / 생년월일 / 핸드폰 번호로 찾기</label
              >
            </span>
            <div class="info_form" id="info-birth-js">
              <span class="info_form_des">
                가입시 입력한 이름 / 생년월일 / 핸드폰 번호와 일치하는 아이디를
                찾습니다.
              </span>
              <div class="search_form search_ID">
                <!-- <label for="searchBirth_name">이름을 입력해주세요</label> -->
                <input
                  type="text"
                  id="searchBirth_name"
                  name="searchBirthName"
                  class="search_Name"
                  maxlength="30"
                  value=""
                  placeholder="이름 입력 (예: 홍길동)"
                />
                <br />
                <input
                  type="text"
                  id="searchBirth_day"
                  name="searchBirthDay"
                  class="search_Birth"
                  maxlength="8"
                  value=""
                  placeholder="생년월일 입력 (예: 19820830)"
                  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
                />
                <br />
                <!-- <label for="searchBirth_num">핸드폰 번호를 입력해주세요</label> -->
                <input
                  type="text"
                  id="searchBirth_num"
                  name="searchBirthNum"
                  class="search_Num"
                  value=""
                  placeholder="핸드폰번호 입력 (예: 01098761234)"
                  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
                  maxlength="12"
                />
              </div>
              <button
                type="button"
                class="find_btn"
                onclick="javascript:findIdType1()"
              >
                다음단계
              </button>
            </div>
          </li>

          <!-- 이름/이메일로 찾기 -->
          <li>
            <span>
              <input
                type="radio"
                onchange="findHandler(this.value)"
                id="find_Email"
                name="searchType"
                class="how_find"
                value="myEmail"
              />
              <label for="find_Email">내 정보에 등록된 이메일로 찾기</label>
            </span>
            <div class="info_form" id="info-email-js">
              <span class="info_form_des">
                가입시 입력한 이메일로 일치하는 아이디를 찾습니다.
              </span>
              <div class="search_form_2 search_ID_2">
                <!-- <label
                  for="searchName"
                  class="search_Name"
                  id="searachNameLabel"
                  >이름을 입력해주세요</label
                > -->
                <input
                  type="text"
                  id="searchName"
                  name="searchName"
                  class="search_Name_2"
                  maxlength="30"
                  value=""
                  placeholder="이름 입력 (예: 홍길동)"
                />
                <br />
                <!-- <label
                  for="searchEmail"
                  class="search_Email"
                  id="searchEmailLabel"
                  >이메일을 입력해주세요</label
                > -->
                <input
                  type="email"
                  id="searchEmail"
                  name="searchEmail"
                  class="search_Email"
                  value=""
                  placeholder="이메일 입력(예: hong@gmail.com)"
                />
              </div>
              <button type="submit" class="find_btn" onclick="javascript:findIdType2()">
                다음단계
              </button>
            </div>
          </li>
        </ul>
      </div>
      <div class="need_findPw">
        ㆍ비밀번호를 찾으시나요?
        <div class="go_findPw" onclick="javascript:moveFindPass()">
          비밀번호 찾기 <i class="fa fa-caret-right" aria-hidden="true"></i>
        </div>
      </div>
    </div>
  </div>
</div>
