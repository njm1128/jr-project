<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<div class="subpage">
  <div class="sub-container" id="sub-container-js">
    <div class="join-page">
      <div class="join-box">
        <h3 class="join-title"><span>정보</span>입력</h3>
        <div class="join-title__content">
          도시재생 포털사이트의 다양한 서비스를 이용 하실 수 있습니다.
        </div>
        <div class="join-box__info">
          <div class="join-info__text">
            <span class="red">*&nbsp;</span>는 필수 항목입니다.
          </div>
          <div class="join-box__infobox">
            <ul class="join-left">
              <li><span class="red">*&nbsp;</span>아이디</li>
              <li><span class="red">*&nbsp;</span>이름</li>
              <li><span class="red">*&nbsp;</span>비밀번호</li>
              <li><span class="red">*&nbsp;</span>비밀번호 확인</li>
              <li>주소 <span class="red">*</span></li>
              <li><span class="red">*&nbsp;</span>이메일</li>
              <li><span class="red">*&nbsp;</span>휴대폰 번호</li>
              <li>&nbsp;&nbsp;전화번호</li>
            </ul>
            <ul class="join-right">
              <li>
                <div>
                  <input type="text" id="joinId"/><button class="overlap" type="button" onclick="javascript:idDupleCheckAjax()">
                    중복확인
                  </button>
                </div>
                <span>8자리 이상 14자리 이하로 입력하세요.(공백, 특수문자 불가)</span>
              </li>
              <li><input type="text" id="joinName" maxlength="5" /></li>
              <li>
                <input type="password" id="joinPass-1" onkeyup="javascript:keyDownPassword()"/>
                <span class="password_validation">8자리 이상 영문, 숫자, 특수문자를 조합하세요. (공백( ), 콤마(,), 마침표(.), 콜론(;/:), 슬러시(/) 사용불가)</span>
              </li>
              <li>
              	<input type="password" id="joinPass-2" onkeyup="javascript:keyDownCheck()"/>
              		<span class="" id="passCheckSpan"></span>	
              </li>
              
              <li>
                <div class="post-up">
                  <button type="button" class="postNum" onclick="javascript:openAddrPopup()">우편번호찾기</button>
                  <input class="post-box-01" id="joinZondeCode" type="text" readonly />
                </div>
                <div class="post-down">
                  <input class="post-box-02" id="joinRoadAddr" type="text" readonly/>
                  <input class="post-box-02" id="joinDetailAddr" type="text" />
                </div>
              </li>
              <li>
                <input type="text" id="joinEmail"/>@<input class="emailBox" type="text" id="joinEmailAddr"/>
                <select
                  onclick="javascript:emailSelection()"
                  class="email"
                  name="emailSelection"
                >
                  <option selected="selected" value="1">직접입력</option>
                  <option value="naver.com">naver.com</option>
                  <option value="google.com">google.com</option>
                  <option value="daum.net">daum.net</option>
                </select>
              </li>
              <li>
                <input type="text" id="joinMobile-1" maxlength="3" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
                -<input type="text" id="joinMobile-2" maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
                -<input id="joinMobile-3" maxlength="4" type="text"onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
              </li>
              <li>
                 <input type="text" id="joinTel-1" maxlength="3" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
                -<input type="text" id="joinTel-2" maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
                -<input type="text" id="joinTel-3" maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
              </li>
            </ul>
          </div>
          <div class="join-button">
            <button type="button" class="join-btn-01" onclick="javascript:joinBtnHandler()">가입</button>
            <button type="button" class="join-btn-02">취소</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/assets/js/phoneAuth.js"></script>