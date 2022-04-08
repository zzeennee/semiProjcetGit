<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no,viewport-fit=cover">
        <meta name="title" content="비밀번호 찾기">
        <link rel="stylesheet" href="https://static.msscdn.net/ui/build/m/css/common.css">
        <link rel="stylesheet" href="https://static.msscdn.net/ui/build/m/css/member.css">
        <link rel="stylesheet" href="https://static.msscdn.net/ui/build/m/css/login.css">
        <title>아이디 찾기 | 무신사 스토어</title>
    <style data-styled="active" data-styled-version="5.3.0"></style></head>
<body class="devicePC">
    <div class="container login" role="main" style="">

        <div id="commonLayoutHeader"><header data-system="CCommonAppbar" class="common-layout__sc-1q47zu5-0 lbAVMi"><h1>무신사 스토어</h1><div class="common-layout__sc-1q47zu5-1 fhWAHi"><h2 class="common-layout__sc-wllrag-0 fuSBOR">아이디 찾기</h2><div class="common-layout__sc-1q47zu5-2 common-layout__sc-1q47zu5-3 jylTdg fehdnF"><button class="common-layout__sc-1w1f44c-0-button jNqhOq gtm-catch-click" data-gtm-cd-23="header" data-gtm-cd-19="button" data-gtm-cd-21="101" data-gtm-category="header" data-gtm-action="client.click" data-gtm-label="back"><span class="common-layout__sc-1w1f44c-1 gQwfAI">이전 페이지로 이동</span><svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg" role="img"><path d="M19 5L9 14.9994L19 25" stroke="black"></path></svg></button></div><div class="common-layout__sc-1q47zu5-2 common-layout__sc-1q47zu5-4 jylTdg kcEGpO"></div></div></header></div>
        <!-- Member -->
        <section class="content content--top">

            <input type="hidden" id="searchIdFormToken" name="searchIdFormToken" value="e32b3214b1f3e3cb4b1706d7bd707b941650e667">
            <input type="hidden" id="authCodeToken" name="authCodeToken">
            <input type="hidden" id="verifyAuthCodeToken" name="verifyAuthCodeToken">

            <!-- Find Tab -->
            <div class="login-tab-list" role="tablist" aria-label="찾을 대상">
                <a href="javascript:location.reload();" class="login-tab-list__item active" role="tab" aria-controls="tab-panel1">아이디 찾기</a>
                <a href="/member/find/password?referer=https%3A%2F%2Fwww.musinsa.com%2Fapp%2F" class="login-tab-list__item" role="tab" aria-controls="tab-panel2">비밀번호 찾기</a>
            </div>

                <div id="tab-panel1" role="tabpanel" aria-labelledby="tab-button1">
                    <div class="login-find-radio">

                        <div class="login-find-radio__item">
                            <div class="login-radio">
                                <input type="radio" id="radioMobileNumber" class="blind login-radio__radio" name="findType">
                                <label for="radioMobileNumber" class="login-radio__label">휴대전화</label>
                            </div>
                            <div class="login-find-radio__details" id="findMemberIdMobileNumberLayer" style="display: block;">
                                <div class="login-input">
                                    <div class="login-input__wrap" id="inputNameLayer">
                                        <input type="text" class="login-input__input" id="inputName" title="이름 입력" placeholder="이름">
                                        <button type="button" class="login-input__button-clear" id="inputNameClearButton" style="display:none">
                                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg" class="login-input__button-clear__svg">
                                                <title>입력한 내용 삭제</title>
                                                <circle cx="10" cy="10" r="10" fill="#B3B3B3"></circle>
                                                <path d="M5.52786 5.52742L14.4722 14.4718M14.4722 5.52734L5.52783 14.4717" stroke="white"></path>
                                            </svg>
                                        </button>
                                    </div>
                                    <p class="login-input__validation" id="textValidInputName" style="display:none"></p>
                                </div>
                                <div class="login-input">
                                    <div class="login-input__wrap" id="inputMobileNumberLayer">
                                        <input type="tel" pattern="[0-9]*" inputmode="numberic" class="login-input__input" id="inputMobileNumber" title="휴대전화 입력 (번호만 입력)" placeholder="휴대전화 (-없이)" maxlength="11">
                                        <button type="button" class="login-input__button-clear" style="display:none" id="inputMobileNumberClearButton">
                                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg" class="login-input__button-clear__svg">
                                                <title>입력한 내용 삭제</title>
                                                <circle cx="10" cy="10" r="10" fill="#B3B3B3"></circle>
                                                <path d="M5.52786 5.52742L14.4722 14.4718M14.4722 5.52734L5.52783 14.4717" stroke="white"></path>
                                            </svg>
                                        </button>
                                        <button type="button" id="sendAuthCodeByMobileNumberButton" class="login-input__button-text">인증 요청
                                            <svg width="18" height="17" viewBox="0 0 18 17" fill="none" xmlns="http://www.w3.org/2000/svg" class="login-input__button-text__loading" id="sendAuthCodeByMobileNumberButtonLoading" style="display: none">
                                                <title>로딩 중</title>
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M9 14.7C12.4242 14.7 15.2 11.9242 15.2 8.5H17.2C17.2 13.0287 13.5287 16.7 9 16.7V14.7Z" fill="url(#paint0_linear_loading-input__button-text__loading-tel)"></path>
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M8 1.29996C8 0.747672 8.44772 0.299957 9 0.299957C13.5287 0.299957 17.2 3.97122 17.2 8.49996H15.2C15.2 5.07579 12.4242 2.29996 9 2.29996C8.44772 2.29996 8 1.85224 8 1.29996Z" fill="url(#paint1_linear_loading-input__button-text__loading-tel)"></path>
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M6.0963 1.83387C6.38486 2.30478 6.23703 2.92044 5.76612 3.209C3.98492 4.30046 2.80017 6.26227 2.80017 8.4999C2.80017 11.9241 5.57601 14.6999 9.00017 14.6999V16.6999C4.47144 16.6999 0.800171 13.0286 0.800171 8.4999C0.800171 5.53778 2.37144 2.94352 4.72117 1.50369C5.19208 1.21513 5.80775 1.36296 6.0963 1.83387Z" fill="url(#paint2_linear_loading-input__button-text__loading-tel)"></path>
                                                <defs>
                                                    <linearGradient id="paint0_linear_loading-input__button-text__loading-tel" x1="9" y1="14.9" x2="15.4" y2="8.5" gradientUnits="userSpaceOnUse">
                                                        <stop stop-opacity="0.5"></stop>
                                                        <stop offset="1" stop-opacity="0.25"></stop>
                                                    </linearGradient>
                                                    <linearGradient id="paint1_linear_loading-input__button-text__loading-tel" x1="15" y1="6.89996" x2="6.2" y2="2.89996" gradientUnits="userSpaceOnUse">
                                                        <stop stop-opacity="0.25"></stop>
                                                        <stop offset="1" stop-opacity="0"></stop>
                                                    </linearGradient>
                                                    <linearGradient id="paint2_linear_loading-input__button-text__loading-tel" x1="9.00017" y1="14.9001" x2="7.00017" y2="1.3001" gradientUnits="userSpaceOnUse">
                                                        <stop stop-opacity="0.5"></stop>
                                                        <stop offset="1"></stop>
                                                    </linearGradient>
                                                </defs>
                                            </svg>
                                        </button>
                                    </div>
                                    <p class="login-input__validation" id="textValidInputMobileNumber" style="display:none"></p>
                                </div>
                                <div class="login-input">
                                    <div class="login-input__wrap" id="inputAuthCodeByMobileNumberLayer" style="display: none">
                                        <input type="number" pattern="[0-9]*" inputmode="numberic" class="login-input__input" title="인증번호 입력" placeholder="인증번호" id="inputAuthCodeByMobileNumber" maxlength="5">
                                        <button type="button" class="login-input__button-clear" style="display:none" id="inputAuthCodeByMobileNumberClearButton">
                                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg" class="login-input__button-clear__svg">
                                                <title>입력한 내용 삭제</title>
                                                <circle cx="10" cy="10" r="10" fill="#B3B3B3"></circle>
                                                <path d="M5.52786 5.52742L14.4722 14.4718M14.4722 5.52734L5.52783 14.4717" stroke="white"></path>
                                            </svg>
                                        </button>
                                    </div>
                                    <p class="login-input__validation" id="textValidInputAuthCodeByMobileNumber" style="display:none"></p>
                                </div>
                            </div>
                        </div><!-- //휴대전화 -->

                        <!-- 이메일 -->
                        <div class="login-find-radio__item">
                            <div class="login-radio">
                                <input type="radio" id="radioEmail" class="blind login-radio__radio" name="findType">
                                <label for="radioEmail" class="login-radio__label">이메일</label>
                            </div>
                            <div class="login-find-radio__details" id="findMemberIdEmailLayer" style="display: none;">
                                <div class="login-input">
                                    <div class="login-input__wrap" id="inputEmailLayer">
                                        <input type="email" class="login-input__input" title="이메일 입력" placeholder="이메일" id="inputEmail">
                                        <button type="button" class="login-input__button-clear" style="display:none" id="inputEmailClearButton">
                                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg" class="login-input__button-clear__svg">
                                                <title>입력한 내용 삭제</title>
                                                <circle cx="10" cy="10" r="10" fill="#B3B3B3"></circle>
                                                <path d="M5.52786 5.52742L14.4722 14.4718M14.4722 5.52734L5.52783 14.4717" stroke="white"></path>
                                            </svg>
                                        </button>
                                        <button type="button" id="sendAuthCodeByEmailButton" class="login-input__button-text">인증 요청
                                            <svg width="18" height="17" viewBox="0 0 18 17" fill="none" xmlns="http://www.w3.org/2000/svg" class="login-input__button-text__loading" style="display:none" id="sendAuthCodeByEmailButtonLoading">
                                                <title>로딩 중</title>
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M9 14.7C12.4242 14.7 15.2 11.9242 15.2 8.5H17.2C17.2 13.0287 13.5287 16.7 9 16.7V14.7Z" fill="url(#paint0_linear_loading-input__button-text__loading-email)"></path>
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M8 1.29996C8 0.747672 8.44772 0.299957 9 0.299957C13.5287 0.299957 17.2 3.97122 17.2 8.49996H15.2C15.2 5.07579 12.4242 2.29996 9 2.29996C8.44772 2.29996 8 1.85224 8 1.29996Z" fill="url(#paint1_linear_loading-input__button-text__loading-email)"></path>
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M6.0963 1.83387C6.38486 2.30478 6.23703 2.92044 5.76612 3.209C3.98492 4.30046 2.80017 6.26227 2.80017 8.4999C2.80017 11.9241 5.57601 14.6999 9.00017 14.6999V16.6999C4.47144 16.6999 0.800171 13.0286 0.800171 8.4999C0.800171 5.53778 2.37144 2.94352 4.72117 1.50369C5.19208 1.21513 5.80775 1.36296 6.0963 1.83387Z" fill="url(#paint2_linear_loading-input__button-text__loading-email)"></path>
                                                <defs>
                                                    <linearGradient id="paint0_linear_loading-input__button-text__loading-email" x1="9" y1="14.9" x2="15.4" y2="8.5" gradientUnits="userSpaceOnUse">
                                                        <stop stop-opacity="0.5"></stop>
                                                        <stop offset="1" stop-opacity="0.25"></stop>
                                                    </linearGradient>
                                                    <linearGradient id="paint1_linear_loading-input__button-text__loading-email" x1="15" y1="6.89996" x2="6.2" y2="2.89996" gradientUnits="userSpaceOnUse">
                                                        <stop stop-opacity="0.25"></stop>
                                                        <stop offset="1" stop-opacity="0"></stop>
                                                    </linearGradient>
                                                    <linearGradient id="paint2_linear_loading-input__button-text__loading-email" x1="9.00017" y1="14.9001" x2="7.00017" y2="1.3001" gradientUnits="userSpaceOnUse">
                                                        <stop stop-opacity="0.5"></stop>
                                                        <stop offset="1"></stop>
                                                    </linearGradient>
                                                </defs>
                                            </svg>
                                        </button>
                                    </div>
                                    <p class="login-input__validation" id="textValidInputEmail" style="display:none"></p>
                                </div>
                                <div class="login-input">
                                    <div class="login-input__wrap" id="inputAuthCodeByEmailLayer" style="display: none">
                                        <input type="number" pattern="[0-9]*" inputmode="numberic" class="login-input__input" title="인증번호 입력" placeholder="인증번호" id="inputAuthCodeByEmail" maxlength="5">
                                        <button type="button" class="login-input__button-clear" style="display:none" id="inputAuthCodeByEmailClearButton">
                                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg" class="login-input__button-clear__svg">
                                                <title>입력한 내용 삭제</title>
                                                <circle cx="10" cy="10" r="10" fill="#B3B3B3"></circle>
                                                <path d="M5.52786 5.52742L14.4722 14.4718M14.4722 5.52734L5.52783 14.4717" stroke="white"></path>
                                            </svg>
                                        </button>
                                    </div>
                                    <p class="login-input__validation" id="textValidInputAuthCodeByEmail" style="display:none"></p>
                                </div>
                            </div>
                        </div><!-- //이메일 -->

                        <!-- 본인인증 -->
                        <div class="login-find-radio__item login-find-radio__item--exception">
                            <div class="login-radio">
                                <input type="radio" id="radioSelfCertify" class="blind login-radio__radio" name="findType">
                                <label for="radioSelfCertify" class="login-radio__label">본인인증</label>
                            </div>
                            <div class="login-find-radio__details" id="findMemberIdSelfCertifyLayer" style="display: none;">본인 명의 휴대폰으로 찾는 방법입니다.
                                <br>(본인인증을 완료한 아이디만 가능)
                            </div>
                        </div>
                        <!-- //본인인증 -->
                    </div>

                    <div class="login-button login-button--static">
                        <button type="button" class="login-button__item login-button__item--blue" id="searchIdButton" disabled="">아이디 찾기
                            <svg width="18" height="17" viewBox="0 0 18 17" fill="none" xmlns="http://www.w3.org/2000/svg" class="login-button__item__loading" style="display:none" id="searchIdButtonLoading">
                                <title>로딩 중</title>
                                <path fill-rule="evenodd" clip-rule="evenodd" d="M9 14.7C12.4242 14.7 15.2 11.9242 15.2 8.5H17.2C17.2 13.0287 13.5287 16.7 9 16.7V14.7Z" fill="url(#paint0_linear_login-button__item__loading)"></path>
                                <path fill-rule="evenodd" clip-rule="evenodd" d="M8 1.29996C8 0.747672 8.44772 0.299957 9 0.299957C13.5287 0.299957 17.2 3.97122 17.2 8.49996H15.2C15.2 5.07579 12.4242 2.29996 9 2.29996C8.44772 2.29996 8 1.85224 8 1.29996Z" fill="url(#paint1_linear_login-button__item__loading)"></path>
                                <path fill-rule="evenodd" clip-rule="evenodd" d="M6.0963 1.83387C6.38486 2.30478 6.23703 2.92044 5.76612 3.209C3.98492 4.30046 2.80017 6.26227 2.80017 8.4999C2.80017 11.9241 5.57601 14.6999 9.00017 14.6999V16.6999C4.47144 16.6999 0.800171 13.0286 0.800171 8.4999C0.800171 5.53778 2.37144 2.94352 4.72117 1.50369C5.19208 1.21513 5.80775 1.36296 6.0963 1.83387Z" fill="url(#paint2_linear_login-button__item__loading)"></path>
                                <defs>
                                    <linearGradient id="paint0_linear_login-button__item__loading" x1="9" y1="14.9" x2="15.4" y2="8.5" gradientUnits="userSpaceOnUse">
                                        <stop stop-opacity="0.5"></stop>
                                        <stop offset="1" stop-opacity="0.25"></stop>
                                    </linearGradient>
                                    <linearGradient id="paint1_linear_login-button__item__loading" x1="15" y1="6.89996" x2="6.2" y2="2.89996" gradientUnits="userSpaceOnUse">
                                        <stop stop-opacity="0.25"></stop>
                                        <stop offset="1" stop-opacity="0"></stop>
                                    </linearGradient>
                                    <linearGradient id="paint2_linear_login-button__item__loading" x1="9.00017" y1="14.9001" x2="7.00017" y2="1.3001" gradientUnits="userSpaceOnUse">
                                        <stop stop-opacity="0.5"></stop>
                                        <stop offset="1"></stop>
                                    </linearGradient>
                                </defs>
                            </svg>
                        </button>
                    </div>
                </div>
        </section>

        <div id="commonLayoutFooter"><div data-system="CCommonFabFunction" class="common-layout__sc-2mfj7d-0 dzeZkC"></div><div data-system="CCommonFabFunction" class="common-layout__sc-7c8z68-0 jVhPIu"></div><section data-system="CCommonPopupShare" id="popupCommonSns" class="common-layout__sc-bfrisq-0 gmkrny"><h1 class="common-layout__sc-bfrisq-1 kHuxWL">페이지 공유하기</h1><button class="common-layout__sc-bfrisq-2 cUzXVA gtm-catch-click" type="button" data-gtm-cd-23="fab_share" data-gtm-cd-19="button" data-gtm-cd-21="302" data-gtm-category="fab_share" data-gtm-action="client.click" data-gtm-label="페이스북으로공유하기" aria-label="페이스북으로 공유하기"><svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg" role="img"><circle cx="28" cy="28" r="28" fill="#3767B8"></circle><path fill-rule="evenodd" clip-rule="evenodd" d="M29.5539 42V29.2275H33.6817L34.2993 24.2497H29.5539V21.072C29.5539 19.6313 29.9393 18.6489 31.929 18.6489L34.4668 18.6475V14.1959C34.0276 14.1358 32.5207 14 30.7686 14C27.11 14 24.6048 16.3191 24.6048 20.5797V24.2497H20.4668V29.2275H24.6048V42H29.5539Z" fill="white"></path></svg></button><button class="common-layout__sc-bfrisq-2 cUzXVA gtm-catch-click" type="button" data-gtm-cd-23="fab_share" data-gtm-cd-19="button" data-gtm-cd-21="302" data-gtm-category="fab_share" data-gtm-action="client.click" data-gtm-label="트위터로공유하기" aria-label="트위터로 공유하기"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="56" height="56" viewBox="0 0 56 56" role="img"><title>트위터로 공유하기</title><defs><circle id="2y3zty5jra" cx="28" cy="28" r="28"></circle></defs><g fill="none" fill-rule="evenodd"><mask id="48tbv7ak6b" fill="#fff"><use xlink:href="#2y3zty5jra"></use></mask><use fill="#1EA1F1" fill-rule="nonzero" xlink:href="#2y3zty5jra"></use><path fill="#FFF" d="M42.933 20.385c-1.04.45-2.15.747-3.308.892 1.191-.7 2.1-1.799 2.527-3.123-1.11.651-2.336 1.11-3.64 1.368-1.054-1.105-2.556-1.789-4.194-1.789-3.178 0-5.737 2.54-5.737 5.653 0 .448.04.88.133 1.29-4.772-.23-8.995-2.482-11.832-5.913-.495.847-.785 1.815-.785 2.857 0 1.958 1.024 3.693 2.55 4.698-.923-.018-1.827-.281-2.594-.697v.063c0 2.746 1.99 5.027 4.599 5.553-.468.126-.976.186-1.505.186-.368 0-.739-.02-1.087-.097.745 2.238 2.854 3.884 5.365 3.938-1.954 1.504-4.433 2.41-7.118 2.41-.471 0-.922-.02-1.374-.077 2.543 1.614 5.557 2.536 8.806 2.536 10.563 0 16.339-8.615 16.339-16.084 0-.25-.01-.49-.021-.73 1.14-.796 2.096-1.79 2.876-2.934" mask="url(#48tbv7ak6b)"></path></g></svg></button><button class="common-layout__sc-bfrisq-2 cUzXVA gtm-catch-click" type="button" data-gtm-cd-23="fab_share" data-gtm-cd-19="button" data-gtm-cd-21="302" data-gtm-category="fab_share" data-gtm-action="client.click" data-gtm-label="카카오톡으로공유하기" aria-label="카카오톡으로 공유하기"><svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg" role="img"><circle cx="28" cy="28" r="28" fill="#FFE300"></circle><path fill-rule="evenodd" clip-rule="evenodd" d="M28 13C18.6108 13 11 19.0165 11 26.4395C11 31.2706 14.2249 35.5045 19.0648 37.8734C18.7093 39.2012 17.7774 42.683 17.5902 43.4277C17.3601 44.3523 17.9295 44.3399 18.3021 44.0908C18.5943 43.8962 22.9606 40.9284 24.8446 39.6471C25.8668 39.7986 26.9214 39.8791 28 39.8791C37.3889 39.8791 45 33.8611 45 26.4395C45 19.0165 37.3889 13 28 13Z" fill="#391B1B"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M26.7233 30.4051C26.8738 30.8328 27.3431 31.0587 27.7711 30.9081C28.1987 30.758 28.4244 30.2891 28.2739 29.8602L25.7964 23.0826L25.7881 23.075C25.6293 22.6623 25.1726 22.3613 24.6273 22.3613C24.0224 22.3613 23.5222 22.7309 23.4229 23.2145C23.4059 23.2505 23.389 23.2868 23.3755 23.3259L20.9392 29.8602C20.7888 30.2891 21.0143 30.758 21.4414 30.9081C21.8693 31.0587 22.3392 30.8328 22.4897 30.4051L22.9112 29.2017H26.302L26.7233 30.4051ZM23.4492 27.6659L24.5885 24.4148C24.595 24.4148 24.601 24.4157 24.607 24.4165C24.6129 24.4174 24.6189 24.4182 24.6253 24.4182L25.7638 27.6659H23.4492ZM29.7278 30.8968H33.1065C33.5314 30.8968 33.8736 30.5529 33.8736 30.1284C33.8736 29.7055 33.5314 29.3616 33.1065 29.3616H30.7949V23.2792C30.7949 22.772 30.3843 22.3613 29.8779 22.3613C29.3711 22.3613 28.9605 22.772 28.9605 23.2792V29.8353C28.9605 29.8861 28.967 29.9339 28.9749 29.9821C28.9657 30.0294 28.9605 30.0792 28.9605 30.1284C28.9605 30.5529 29.3029 30.8968 29.7278 30.8968ZM39.1822 30.6262C39.4534 30.9885 39.969 31.0629 40.3306 30.7895C40.6929 30.5175 40.7658 30.0027 40.4938 29.6404L37.9177 26.257L40.2451 23.9283C40.5604 23.6138 40.5604 23.102 40.2455 22.7869C39.9306 22.4719 39.4192 22.4719 39.1031 22.7869L36.2216 25.6684V23.2792C36.2216 22.772 35.8112 22.3613 35.3047 22.3613C34.7978 22.3613 34.3872 22.772 34.3872 23.2792V30.0366C34.3872 30.5442 34.7978 30.954 35.3047 30.954C35.8112 30.954 36.2216 30.5442 36.2216 30.0366V27.9517L36.7455 27.4285L39.1822 30.6262ZM19.3895 30.7109C19.5442 30.5566 19.6327 30.3448 19.6327 30.127V24.1716H21.1593C21.627 24.1716 22.0056 23.7931 22.0056 23.3259C22.0056 22.8591 21.627 22.4805 21.1593 22.4805H16.1879C15.7207 22.4805 15.3423 22.8591 15.3423 23.3259C15.3423 23.7931 15.7207 24.1716 16.1879 24.1716H17.8041V30.127C17.8041 30.3434 17.8923 30.5563 18.0473 30.7106C18.199 30.8637 18.4114 30.9518 18.6287 30.9518H18.8093C19.0258 30.9518 19.2373 30.8637 19.3895 30.7109Z" fill="#FFE300"></path></svg></button><button type="button" data-gtm-cd-23="fab_share" data-gtm-cd-19="button" data-gtm-cd-21="302" data-gtm-category="fab_share" data-gtm-action="client.click" data-gtm-label="URL복사하기" aria-label="URL 복사하기" class="common-layout__sc-bfrisq-2 cUzXVA"><svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg" role="img"><circle cx="28" cy="28" r="28" fill="#B2B2B2"></circle><path fill-rule="evenodd" clip-rule="evenodd" d="M22.828 29.308C22.828 32.746 20.866 34.78 17.914 34.78C14.962 34.78 13 32.746 13 29.308V22H14.818V29.326C14.818 31.612 16.006 33.016 17.914 33.016C19.822 33.016 21.01 31.612 21.01 29.326V22H22.828V29.308ZM28.062 29.524V34.6H26.244V22H29.844C31.104 22 32.058 22.396 32.724 23.08C33.408 23.746 33.804 24.682 33.804 25.762C33.804 26.824 33.426 27.742 32.724 28.444C32.13 29.038 31.32 29.434 30.24 29.524L34.38 34.6H32.112L28.062 29.524ZM29.682 27.832H28.062V23.728H29.682C30.456 23.728 30.978 23.926 31.338 24.286C31.68 24.646 31.896 25.168 31.896 25.78C31.896 26.374 31.698 26.896 31.338 27.256C30.978 27.598 30.474 27.832 29.682 27.832ZM44.024 32.872V34.6H37.076V22H38.894V32.872H44.024Z" fill="white"></path></svg></button><button class="common-layout__sc-bfrisq-3 fjZAfZ gtm-catch-click" data-gtm-cd-23="fab_share" data-gtm-cd-19="button" data-gtm-cd-21="302" data-gtm-category="fab_share" data-gtm-action="client.click" data-gtm-label="공유하기팝업닫기" aria-label="공유하기 팝업 닫기"><svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg" role="img"><path d="M5.41704 5.41619L24.5835 24.5826M24.5834 5.41602L5.41699 24.5824" stroke="black"></path></svg></button></section><div data-system="CCommonDim" class="common-layout__sc-1el4gzj-0 gsKEkH"></div></div>
    </div>
    

    <script type="text/javascript" async="" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script><script type="text/javascript" src="https://static.msscdn.net/static/common/2.2.0/cl-mobile.js"></script>
    <script type="text/javascript" src="https://static.msscdn.net/mfile_outsrc/js/vendor/jquery-1.11.1.min.js"></script>
    

    <script>
        var THIS_PAGE_GF = "A" ;

        function commonHistoryBack() {
            var isApp = false;
            if (isApp) {
                AppInterface.historyBack();
                return false;
            }
            history.back();
            return false;
        }

    </script>
    <script src="https://static.msscdn.net/static/common-appinterface/release/common-appinterface.js" type="text/javascript"></script>
    <script src="https://static.msscdn.net/static/member/js/member-appinterface.js?202202111209" type="text/javascript"></script>

    <script>window.commonLayout.render('#commonLayoutFooter', '#commonLayoutHeader', {
        titleText: '아이디 찾기',
        useAppbarButtonBack: true,
        useMenubarBottom: false
    });</script>


    

        <script type="text/javascript">
            $(document).ready(function () {
            });

            //case by JQuery
            $(window).bind("pageshow", function (event) {
                initLayout();
            });

            var validPassName = false;
            var validPassMobileNumber = false;

            var validPassEmail = false;

            onlyNumbericKeyPress = function (evt) {
                // Only ASCII character in that range allowed
                var ASCIICode = (evt.which) ? evt.which : evt.keyCode
                if (ASCIICode > 31 && (ASCIICode < 48 || ASCIICode > 57))
                    return false;
                return true;
            }

            initLayout = function () {

                $('#inputName').val('');
                $('#inputMobileNumber').val('');
                $('#inputAuthCodeByMobileNumber').val('');

                $('#inputEmail').val('');
                $('#inputAuthCodeByEmail').val('');

                $('#radioMobileNumber').prop("checked", true);
                $('#findMemberIdMobileNumberLayer').show();
                $('#findMemberIdEmailLayer').hide();
                $('#findMemberIdSelfCertifyLayer').hide();
                $('#searchIdButton').prop("disabled", true);
                $('#searchIdButtonLoading').hide();

            }

            maxLengthCheck = function (object) {
                if (object.val().trim().length >= object.attr('maxlength')) {
                    object.val(object.val().trim().slice(0, object.attr('maxlength')));
                }
            }


            initInputNameKeyFunc = function () {
                $('#inputAuthCodeByMobileNumberLayer').hide();
                $('#inputAuthCodeByMobileNumber').val('');
                $('#searchIdButton').prop("disabled", true);
            }

            inputNameByMobileNumberFunc = function () {
                if ($('#inputName').val().trim() === '') {
                    $('#inputNameLayer').addClass('login-input__danger');
                    $('#textValidInputName').text('이름을 입력해 주세요.').show();
                    $('#inputNameClearButton').hide();
                    validPassName = false;
                } else {
                    $('#inputNameLayer').removeClass('login-input__danger');
                    $('#textValidInputName').text('').hide();
                    $('#inputNameClearButton').show();
                    validPassName = true;
                }
            }

            validMobileNumber = function (phoneNumber) {
                if (!(phoneNumber.length >= 10 && phoneNumber.length <= 11)) {
                    return false;
                }
                var regNumber = /^(01[016789])(\d{3,4})(\d{4})/;
                if (!regNumber.test(phoneNumber)) {
                    return false;
                }
                return true;
            }

            inputMobileNumberFunc = function () {

                validPassMobileNumber = false;

                if ($('#inputMobileNumber').val().trim() === '') {

                    $('#inputMobileNumberLayer').addClass('login-input__danger');
                    $('#textValidInputMobileNumber').text('휴대전화 번호를 입력해 주세요.').show();
                    $('#inputMobileNumberClearButton').hide();

                } else {

                    $('#inputMobileNumberClearButton').show();

                    if (validMobileNumber($('#inputMobileNumber').val().trim())) {
                        $('#textValidInputMobileNumber').text('').hide();
                        $('#inputMobileNumberLayer').removeClass('login-input__danger');
                        validPassMobileNumber = true;
                    } else {
                        $('#textValidInputMobileNumber').text('번호 형식이 올바르지 않습니다.').show();
                        $('#inputMobileNumberLayer').addClass('login-input__danger');
                    }
                }
            }

            initInputMobileNumberFunc = function () {
                $('#inputAuthCodeByMobileNumberLayer').hide();
                $('#inputAuthCodeByMobileNumber').val('');
                $('#textValidInputAuthCodeByMobileNumber').text('').hide();
                $('#searchIdButton').prop("disabled", true);
            }

            inputAuthCodeByMobileNumberFunc = function () {
                if ($('#inputAuthCodeByMobileNumber').val().trim() === '' || !$.isNumeric($('#inputAuthCodeByMobileNumber').val().trim())) {
                    $('#inputAuthCodeByMobileNumberClearButton').hide();

                    $('#textValidInputAuthCodeByMobileNumber').text("인증번호를 입력해 주세요.").show();
                    $('#inputAuthCodeByMobileNumberLayer').addClass('login-input__danger');
                    $('#searchIdButton').prop("disabled", true);
                } else {
                    $('#inputAuthCodeByMobileNumberClearButton').show();

                    $('#textValidInputAuthCodeByMobileNumber').text("").hide();
                    $('#inputAuthCodeByMobileNumberLayer').removeClass('login-input__danger');

                    var authCodeLength = 5;
                    if ($('#inputAuthCodeByMobileNumber').val().trim().length == authCodeLength) {
                        $('#searchIdButton').prop("disabled", false);
                    } else {
                        $('#searchIdButton').prop("disabled", true);
                    }

                }
            }


            validEmail = function (enteredEmail) {
                if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(enteredEmail)) {
                    return true;
                } else {
                    return false;
                }
            }


            inputEmailFunc = function () {
                validPassEmail = false;
                if ($('#inputEmail').val().trim() === '') {
                    $('#inputEmailLayer').addClass('login-input__danger');
                    $('#textValidInputEmail').text('이메일을 입력해 주세요.').show();
                    $('#inputEmailClearButton').hide();
                } else {

                    $('#inputEmailClearButton').show();

                    if (validEmail($('#inputEmail').val().trim())) {
                        $('#inputEmailLayer').removeClass('login-input__danger');
                        $('#textValidInputEmail').text('').hide();
                        validPassEmail = true;
                    } else {
                        $('#inputEmailLayer').addClass('login-input__danger');
                        $('#textValidInputEmail').text('이메일주소를 다시 확인해주세요').show();
                    }
                }
            }

            initInputEmailFunc = function () {
                $('#inputAuthCodeByEmailLayer').hide();
                $('#inputAuthCodeByEmail').val('');
                $('#textValidInputAuthCodeByEmail').text('').hide();
                $('#searchIdButton').prop("disabled", true);
            }

            inputAuthCodeByEmailFunc = function () {
                if ($('#inputAuthCodeByEmail').val().trim() === '' || !$.isNumeric($('#inputAuthCodeByEmail').val().trim())) {
                    $('#inputAuthCodeByEmailClearButton').hide();
                    $('#searchIdButton').prop("disabled", true);

                    $('#inputAuthCodeByEmailLayer').addClass('login-input__danger');
                    $('#textValidInputAuthCodeByEmail').text("인증번호를 입력해 주세요.").show();

                } else {
                    $('#inputAuthCodeByEmailClearButton').show();

                    $('#inputAuthCodeByEmailLayer').removeClass('login-input__danger');
                    $('#textValidInputAuthCodeByEmail').text("").hide();

                    var authCodeLength = 5;
                    if ($('#inputAuthCodeByEmail').val().trim().length == authCodeLength) {
                        $('#searchIdButton').prop("disabled", false);
                    } else {
                        $('#searchIdButton').prop("disabled", true);
                    }
                }
            }

            $('#inputName').keyup(function () {
                inputNameByMobileNumberFunc();
                initInputNameKeyFunc();
            });


            $('#inputName').focusin(function () {
                inputNameByMobileNumberFunc();
            });

            $('#inputMobileNumber').keyup(function () {
                inputMobileNumberFunc();
                initInputMobileNumberFunc();
            });

            $('#inputMobileNumber').keypress(function (e) {
                return onlyNumbericKeyPress(e);
            });

            $('#inputMobileNumber').focusin(function () {
                inputMobileNumberFunc();
            });


            $('#inputAuthCodeByMobileNumber').keyup(function () {
                maxLengthCheck($(this));
                inputAuthCodeByMobileNumberFunc();
            });

            $('#inputAuthCodeByMobileNumber').keypress(function (e) {
                if ($(this).val().trim().length == $(this).attr('maxlength')) {
                    return false;
                }
                return onlyNumbericKeyPress(e);
            });


            $('#inputAuthCodeByMobileNumber').focusin(function () {
                inputAuthCodeByMobileNumberFunc();
            });

            $('#inputNameClearButton').click(function () {
                $('#inputName').val('');
                $('#inputName').focus();
                initInputMobileNumberFunc();
            });

            $('#inputMobileNumberClearButton').click(function () {
                $('#inputMobileNumber').val('');
                $('#inputMobileNumber').focus();
                initInputMobileNumberFunc();
            });

            $('#inputAuthCodeByMobileNumberClearButton').click(function () {
                $('#inputAuthCodeByMobileNumber').val('');
                $('#inputAuthCodeByMobileNumber').focus();
            });


            $('#inputEmail').keyup(function () {
                inputEmailFunc();
                initInputEmailFunc();
            });

            $('#inputEmail').focusin(function () {
                inputEmailFunc();
            });

            $('#inputAuthCodeByEmail').keyup(function () {
                maxLengthCheck($(this));
                inputAuthCodeByEmailFunc();
            });

            $('#inputAuthCodeByEmail').keypress(function (e) {
                if ($(this).val().trim().length == $(this).attr('maxlength')) {
                    return false;
                }
                return onlyNumbericKeyPress(e);
            });

            $('#inputAuthCodeByEmail').focusin(function () {
                inputAuthCodeByEmailFunc();
            });

            $('#inputEmailClearButton').click(function () {
                $('#inputEmail').val('');
                $('#inputEmail').focus();
                initInputEmailFunc();
            });

            $('#inputAuthCodeByEmailClearButton').click(function () {
                $('#inputAuthCodeByEmail').val('');
                $('#inputAuthCodeByEmail').focus();
            });

            $('#sendAuthCodeByMobileNumberButton').click(function () {

                if (!validPassName) {
                    $("#inputName").focus();
                    return;
                }
                if (!validPassMobileNumber) {
                    $("#inputMobileNumber").focus();
                    return;
                }

                $('#sendAuthCodeByMobileNumberButton').prop("disabled", true);
                $('#sendAuthCodeByMobileNumberButtonLoading').show();

                $.ajax({
                    async: true,
                    type: 'POST',
                    url: 'https://my.musinsa.com/api/member/search/id/mobilenumber/authcode/send',
                    contentType: "application/json",
                    xhrFields: {
                        withCredentials: true
                    },
                    data: JSON.stringify({
                        name: $("#inputName").val().trim(),
                        mobileNumber: $("#inputMobileNumber").val().trim(),
                        searchIdFormToken: $("#searchIdFormToken").val()
                    }),
                    success: function (response) {

                        var jsonData = response.data;

                        if (jsonData.success) {
                            alert("입력하신 휴대전화로 인증번호를 발송했습니다.");
                            $('#authCodeToken').val(jsonData.authCodeToken);
                            $('#inputAuthCodeByMobileNumberLayer').show();
                            $('#inputAuthCodeByMobileNumber').focus();
                        } else {
                            alert("회원정보를 다시 확인해주세요.");
                        }

                    }, error: function (response, status, error) {
                        alert(response.responseJSON.error.message);
                    }, complete: function () {
                        $('#sendAuthCodeByMobileNumberButton').prop("disabled", false);
                        $('#sendAuthCodeByMobileNumberButtonLoading').hide();
                    }
                });

            });

            $('#sendAuthCodeByEmailButton').click(function () {

                if (!validPassEmail) {
                    $("#inputEmail").focus();
                    return;
                }

                $('#sendAuthCodeByEmailButton').prop("disabled", true);
                $('#sendAuthCodeByEmailButtonLoading').show();

                $.ajax({
                    async: true,
                    type: 'POST',
                    url: 'https://my.musinsa.com/api/member/search/id/email/authcode/send',
                    contentType: "application/json",
                    xhrFields: {
                        withCredentials: true
                    },
                    data: JSON.stringify({
                        email: $("#inputEmail").val().trim(),
                        searchIdFormToken: $("#searchIdFormToken").val()
                    }),
                    success: function (response) {

                        var jsonData = response.data;

                        if (jsonData.success) {

                            alert("입력하신 이메일 주소로 인증번호를 발송했습니다.");
                            $('#authCodeToken').val(jsonData.authCodeToken);
                            $('#inputAuthCodeByEmailLayer').show();
                            $('#inputAuthCodeByEmail').focus();
                        } else {
                            alert("회원정보를 다시 확인해주세요.");
                        }

                    }, error: function (response, status, error) {
                        alert(response.responseJSON.error.message);
                    }, complete: function () {
                        $('#sendAuthCodeByEmailButton').prop("disabled", false);
                        $('#sendAuthCodeByEmailButtonLoading').hide();
                    }
                });


            });

            verifyAuthCodeByMobileNumberFunc = function () {

                if (!validPassName) {
                    $("#inputName").focus();
                    return;
                }
                if (!validPassMobileNumber) {
                    $("#inputMobileNumber").focus();
                    return;
                }
                if ($("#inputAuthCodeByMobileNumber").val().trim() === '') {
                    $("#inputAuthCodeByMobileNumber").focus();
                    return;
                }

                $('#searchIdButton').prop("disabled", true);
                $('#searchIdButtonLoading').show();

                $.ajax({
                    async: true,
                    type: 'POST',
                    url: 'https://my.musinsa.com/api/member/search/id/mobilenumber/authcode/verify',
                    contentType: "application/json",
                    xhrFields: {
                        withCredentials: true
                    },
                    data: JSON.stringify({
                        name: $("#inputName").val().trim(),
                        mobileNumber: $("#inputMobileNumber").val().trim(),
                        authCodeToken: $("#authCodeToken").val(),
                        authCode: $("#inputAuthCodeByMobileNumber").val(),
                        searchIdFormToken: $("#searchIdFormToken").val()
                    }),
                    success: function (response) {

                        var jsonData = response.data;

                        if (jsonData.success) {
                            location.href = '/member/find/id/mobilenumber/result?verifyAuthCodeToken=' + jsonData.verifyToken + '&searchIdFormToken=' + $("#searchIdFormToken").val();
                        } else {
                            $('#searchIdButton').prop("disabled", false);
                            $('#searchIdButtonLoading').hide();
                        }

                    }, error: function (response, status, error) {
                        alert(response.responseJSON.error.message);
                        $('#searchIdButton').prop("disabled", false);
                        $('#searchIdButtonLoading').hide();
                    }
                });

            };

            verifyAuthCodeByEmailFunc = function () {

                if ($("#inputAuthCodeByEmail").val().trim() === '') {
                    $("#inputAuthCodeByEmail").focus();
                    return;
                }

                $('#searchIdButton').prop("disabled", true);
                $('#searchIdButtonLoading').show();

                $.ajax({
                    async: true,
                    type: 'POST',
                    url: 'https://my.musinsa.com/api/member/search/id/email/authcode/verify',
                    contentType: "application/json",
                    xhrFields: {
                        withCredentials: true
                    },
                    data: JSON.stringify({
                        email: $("#inputEmail").val().trim(),
                        authCodeToken: $("#authCodeToken").val(),
                        authCode: $("#inputAuthCodeByEmail").val(),
                        searchIdFormToken: $("#searchIdFormToken").val()
                    }),
                    success: function (response) {

                        var jsonData = response.data;

                        if (jsonData.success) {
                            location.href = '/member/find/id/email/result?verifyAuthCodeToken=' + jsonData.verifyToken + '&searchIdFormToken=' + $("#searchIdFormToken").val();
                        } else {
                            $('#searchIdButton').prop("disabled", false);
                            $('#searchIdButtonLoading').hide();
                        }

                    }, error: function (response, status, error) {
                        alert(response.responseJSON.error.message);
                        $('#searchIdButton').prop("disabled", false);
                        $('#searchIdButtonLoading').hide();
                    }
                });

            };

            $('#radioMobileNumber').change(function () {
                $('#findMemberIdMobileNumberLayer').show();
                $('#findMemberIdEmailLayer').hide();
                $('#findMemberIdSelfCertifyLayer').hide();
                $('#searchIdButton').prop("disabled", true);
            });

            $('#radioEmail').change(function () {
                $('#findMemberIdMobileNumberLayer').hide();
                $('#findMemberIdEmailLayer').show()
                $('#findMemberIdSelfCertifyLayer').hide();
                $('#searchIdButton').prop("disabled", true);
            });

            $('#radioSelfCertify').change(function () {
                $('#findMemberIdMobileNumberLayer').hide();
                $('#findMemberIdEmailLayer').hide();
                $('#findMemberIdSelfCertifyLayer').show();
                $('#searchIdButton').prop("disabled", false);
            });

            $('#searchIdButton').click(function () {
                if ($('#radioSelfCertify').prop('checked')) {
                    window.open("https://my.musinsa.com/member/v1/selfcertify/connect?pageCode=012&redirectUrl=https%3A%2F%2Fwww.musinsa.com%2Fapp%2F", "popupChk", "width=410, height=715");
                    return;
                }

                if ($('#radioMobileNumber').prop('checked')) {
                    verifyAuthCodeByMobileNumberFunc();
                    return;
                }

                if ($('#radioEmail').prop('checked')) {
                    verifyAuthCodeByEmailFunc();
                    return;
                }
            });
        </script>
    

</body>
</html>