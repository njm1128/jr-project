<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="today" class="java.util.Date" />
<fmt:formatDate value="${today}" pattern="yyyyMMddHHmmddss" var="ver" />

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0,  user-scalable=yes, minimum-scale=1.0, maximum-scale=3.0"
    />
    <meta name="naver-site-verification" content="6410fa0dc4eed7c08c14e3d0dc8e548445d160e1" />
    <meta name="title" content="중랑구 도시재생지원포털" />
    <meta name="author" content="중랑구 도시재생지원포털" />
    <meta name="keywords" content="중랑구 도시재생지원포털" />
    <meta
      name="description"
      content="중랑구 도시재생, 도시재생사업 소개, 주민참여, 알림마당, 도시재생 교육, 도시재생 공모사업, 도시재생 빅데이터"
    />

    <!-- OG tag  -->
    <meta property="og:type" content="website" />
    <meta property="og:title" content="중랑구 도시재생지원포털" />
    <meta property="og:site_name" content="중랑구 도시재생지원포털" />
    <meta
      property="og:discription"
      content="중랑구 도시재생, 도시재생사업 소개, 주민참여, 알림마당, 도시재생 교육, 도시재생 공모사업, 도시재생 빅데이터"
    />
    <meta property="og:url" content="http://'.$SERVER['SERVERNAME']" />
    <meta property="og:image" content="http://'.$SERVER['SERVERNAME']/assets/images/commons/favicon.png" />
    <meta name="twitter:card" content="summary" />
    <title>중랑구 도시재생지원포털</title>
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="/assets/images/commons/favicon.png"
    />
    <link
      rel="stylesheet"
      href="/assets/plugins/font-awesome-4.7.0/font-awesome.min.css"
    />
    <link rel="stylesheet" href="/assets/plugins/daum-editor/css/editor.css" />
    <link rel="stylesheet" href="/assets/css/styles.css?ver=${ver}" />
  </head>
  <body>
  	<svg viewBox="0 0 500 200">
      <defs>
        <clipPath id="letter-s-mask">
          <path
            d="M51.149,95.317H33.245v-4.32h42.24v4.32H57.581v2.64
          c2.208,0.608,4.04,1.752,5.496,3.432c1.456,1.68,2.184,3.593,2.184,5.736c0,1.344-0.288,2.592-0.864,3.744
          c-0.576,1.152-1.361,2.16-2.352,3.023c-0.992,0.864-2.153,1.543-3.48,2.041c-1.329,0.494-2.729,0.744-4.2,0.744
          c-1.504,0-2.92-0.25-4.248-0.744c-1.328-0.498-2.488-1.177-3.48-2.041c-0.992-0.863-1.769-1.871-2.328-3.023
          c-0.56-1.152-0.84-2.4-0.84-3.744c0-2.144,0.728-4.057,2.184-5.736c1.456-1.68,3.288-2.824,5.496-3.432V95.317z M38.045,76.357
          v-4.32h32.688v4.32H57.677c0.224,1.408,0.848,2.6,1.872,3.576c1.023,0.977,2.256,1.769,3.696,2.376
          c1.472,0.608,3.056,1.064,4.752,1.368c1.696,0.305,3.328,0.488,4.896,0.552c0.192,0,0.288,0.056,0.288,0.168
          c0,0.112-0.048,0.216-0.144,0.312l-2.736,3.408c-1.344,0-2.792-0.136-4.344-0.408c-1.552-0.271-3.064-0.68-4.536-1.224
          c-1.44-0.544-2.769-1.2-3.984-1.968c-1.216-0.768-2.144-1.647-2.784-2.64c-0.064-0.064-0.168-0.096-0.312-0.096
          s-0.232,0.032-0.264,0.096c-0.576,0.96-1.457,1.824-2.64,2.592c-1.184,0.768-2.512,1.424-3.984,1.968
          c-1.472,0.544-3.008,0.96-4.608,1.248c-1.601,0.288-3.072,0.432-4.416,0.432l-2.736-3.408c-0.128-0.128-0.185-0.24-0.168-0.336
          c0.016-0.096,0.12-0.144,0.312-0.144c1.536-0.064,3.151-0.248,4.848-0.552c1.696-0.304,3.28-0.76,4.752-1.368
          c1.44-0.607,2.672-1.399,3.696-2.376c1.024-0.976,1.664-2.167,1.92-3.576H38.045z M59.069,105.181
          c-0.288-0.624-0.672-1.176-1.152-1.655c-0.48-0.48-1.032-0.865-1.656-1.152c-0.624-0.288-1.256-0.432-1.896-0.432
          c-0.672,0-1.313,0.144-1.92,0.432c-0.608,0.287-1.152,0.672-1.632,1.152c-0.48,0.479-0.864,1.031-1.152,1.655
          s-0.432,1.272-0.432,1.944c0,0.704,0.144,1.367,0.432,1.992c0.288,0.623,0.672,1.176,1.152,1.656
          c0.48,0.479,1.023,0.855,1.632,1.127c0.607,0.271,1.248,0.408,1.92,0.408c0.64,0,1.272-0.137,1.896-0.408s1.176-0.647,1.656-1.127
          c0.48-0.48,0.864-1.033,1.152-1.656c0.288-0.625,0.432-1.288,0.432-1.992C59.501,106.453,59.357,105.805,59.069,105.181z"
          ></path>
        </clipPath>
        <clipPath id="letter-u-mask">
          <path
            d="M125.885,80.437v4.8h-6.239v11.328h-5.761v-3.888
          c-0.864,0.32-1.88,0.536-3.047,0.648c-1.168,0.113-2.633,0.168-4.392,0.168H88.541c-1.44,0-2.44-0.295-3-0.888
          c-0.56-0.592-0.84-1.624-0.84-3.096v-3.504c0-0.512-0.168-0.968-0.504-1.368c-0.336-0.4-0.809-0.6-1.416-0.6h-0.48v-2.496h18.816
          v-3.744H83.021v-4.272h23.472c0.16,0,0.28,0.048,0.36,0.144c0.08,0.096,0.12,0.224,0.12,0.384v10.8c0,0.288-0.08,0.513-0.24,0.672
          c-0.161,0.16-0.401,0.24-0.72,0.24H90.605v3.36h17.76c1.248,0,2.312-0.064,3.192-0.192c0.88-0.127,1.656-0.319,2.328-0.576V76.021
          c0-0.48-0.16-0.944-0.479-1.392c-0.32-0.448-0.8-0.672-1.44-0.672h-0.96v-2.4h8.64v8.88H125.885z M95.885,102.085
          c0.576-1.248,1.375-2.32,2.4-3.216c1.024-0.928,2.224-1.664,3.6-2.208c1.375-0.543,2.848-0.816,4.416-0.816
          c1.536,0,2.992,0.272,4.368,0.816c1.375,0.544,2.576,1.28,3.6,2.208c1.023,0.896,1.831,1.968,2.424,3.216
          c0.592,1.248,0.888,2.561,0.888,3.937c0,1.408-0.296,2.735-0.888,3.983c-0.593,1.248-1.4,2.319-2.424,3.216
          c-1.024,0.928-2.225,1.656-3.6,2.184c-1.376,0.529-2.832,0.793-4.368,0.793c-1.568,0-3.041-0.264-4.416-0.793
          c-1.376-0.527-2.576-1.256-3.6-2.184c-1.024-0.896-1.824-1.968-2.4-3.216s-0.864-2.575-0.864-3.983
          C95.021,104.646,95.309,103.333,95.885,102.085z M110.165,101.797c-1.104-1.152-2.392-1.728-3.864-1.728
          c-1.504,0-2.792,0.576-3.864,1.728c-1.072,1.152-1.608,2.561-1.608,4.225c0,1.695,0.536,3.111,1.608,4.247
          c1.072,1.136,2.36,1.704,3.864,1.704c1.472,0,2.76-0.568,3.864-1.704s1.656-2.552,1.656-4.247
          C111.821,104.357,111.269,102.949,110.165,101.797z"
          ></path>
        </clipPath>
        <clipPath id="letter-p1-1-mask">
          <path
            d="M129.726,97.477v-4.32h29.951
          c0.416-0.864,0.744-1.888,0.984-3.072c0.24-1.184,0.36-2.544,0.36-4.08v-7.056c0-0.319-0.064-0.552-0.192-0.696
          s-0.384-0.216-0.768-0.216h-26.641v-4.32h33.024c0.16,0,0.279,0.041,0.36,0.12c0.079,0.08,0.119,0.2,0.119,0.36v12.336
          c0,1.28-0.128,2.472-0.384,3.576s-0.656,2.12-1.2,3.048h5.664v4.32H153.39v18.24h-6.049v-18.24H129.726z"
          ></path>
        </clipPath>
        <clipPath id="letter-p1-2-mask">
          <path
            d="M222.989,106.597h18.096v4.32h-42.24v-4.32h18.192v-4.896
          c0-0.544-0.161-0.984-0.48-1.32c-0.32-0.336-0.72-0.504-1.2-0.504h-0.768v-2.352h8.4V106.597z M204.269,88.597V78.373
          c0-0.511-0.168-0.967-0.504-1.368c-0.336-0.4-0.809-0.6-1.416-0.6h-0.96v-2.4h34.656v4.368h-25.824v10.704
          c0,0.32,0.08,0.561,0.24,0.72c0.159,0.161,0.384,0.24,0.672,0.24h25.152v4.272h-26.496c-1.92,0-3.32-0.432-4.2-1.296
          C204.708,92.149,204.269,90.677,204.269,88.597z"
          ></path>
        </clipPath>
        <clipPath id="letter-p2-1-mask">
          <path
            d="M264.148,89.725c0.721,1.809,1.64,3.369,2.761,4.68
          c1.087,1.313,2.271,2.36,3.552,3.144c1.279,0.785,2.479,1.289,3.6,1.512c0.128,0.033,0.2,0.089,0.216,0.168
          c0.017,0.08-0.008,0.152-0.071,0.216l-2.977,3.456c-0.992-0.256-2.04-0.688-3.144-1.295c-1.104-0.608-2.152-1.328-3.145-2.161
          c-1.024-0.799-1.937-1.68-2.735-2.64c-0.801-0.96-1.393-1.92-1.776-2.88c-0.096-0.192-0.216-0.288-0.36-0.288
          c-0.144,0-0.264,0.096-0.359,0.288c-0.416,0.96-1.024,1.92-1.824,2.88s-1.712,1.841-2.736,2.64
          c-0.992,0.833-2.032,1.552-3.119,2.161c-1.089,0.607-2.129,1.039-3.12,1.295l-2.977-3.456c-0.096-0.064-0.137-0.136-0.12-0.216
          c0.016-0.08,0.104-0.136,0.265-0.168c1.119-0.255,2.328-0.784,3.624-1.584c1.296-0.799,2.487-1.855,3.575-3.168
          c1.088-1.312,1.992-2.856,2.713-4.632c0.72-1.776,1.079-3.784,1.079-6.024v-5.616c0-0.48-0.168-0.928-0.504-1.344
          c-0.336-0.416-0.84-0.624-1.512-0.624h-0.864v-2.352h8.88v9.936C263.068,85.893,263.429,87.917,264.148,89.725z M279.053,115.717
          V76.021c0-0.48-0.16-0.944-0.479-1.392c-0.32-0.448-0.801-0.672-1.44-0.672h-0.96v-2.4h8.592v44.16H279.053z"
          ></path>
        </clipPath>
        <clipPath id="letter-p2-2-mask">
          <path
            d="M297.005,78.709v-4.272h19.2v4.272h-6.528v5.52c0,2.208,0.224,4.2,0.672,5.976
          c0.448,1.776,1.072,3.336,1.872,4.68c0.8,1.313,1.72,2.376,2.76,3.192s2.168,1.368,3.385,1.656
          c0.127,0.032,0.207,0.088,0.239,0.168c0.032,0.08,0,0.152-0.096,0.216l-3.12,3.36c-0.544-0.063-1.24-0.336-2.088-0.816
          c-0.849-0.479-1.688-1.071-2.52-1.775c-0.833-0.736-1.608-1.552-2.328-2.448c-0.721-0.896-1.225-1.808-1.513-2.736
          c-0.096-0.224-0.216-0.328-0.359-0.312c-0.145,0.017-0.248,0.12-0.313,0.312c-0.32,0.96-0.832,1.889-1.536,2.784
          c-0.704,0.896-1.456,1.696-2.256,2.4c-0.832,0.736-1.672,1.336-2.52,1.8c-0.849,0.464-1.561,0.729-2.136,0.792l-3.12-3.36
          c0-0.031-0.009-0.072-0.024-0.12c-0.017-0.048-0.023-0.087-0.023-0.12c0-0.032,0.007-0.056,0.023-0.072
          c0.016-0.016,0.072-0.04,0.168-0.072c1.184-0.288,2.296-0.848,3.336-1.68c1.04-0.832,1.96-1.92,2.76-3.264
          c0.769-1.312,1.384-2.856,1.849-4.632c0.463-1.776,0.695-3.751,0.695-5.928v-5.52H297.005z M328.829,85.957V75.925
          c0-0.544-0.145-1.008-0.433-1.392c-0.288-0.384-0.784-0.576-1.487-0.576h-0.528v-2.4h7.824v44.16h-5.376v-25.44h-3.744v25.44
          h-5.376V75.925c0-0.544-0.145-1.008-0.433-1.392c-0.287-0.384-0.784-0.576-1.487-0.576h-0.528v-2.4h7.824v14.4H328.829z"
          ></path>
        </clipPath>
        <clipPath id="letter-l-mask">
          <path
            d="M356.573,78.469c0,2.016,0.264,3.768,0.792,5.256c0.527,1.488,1.207,2.745,2.04,3.768c0.863,1.024,1.823,1.848,2.88,2.472
          c1.056,0.624,2.127,1.064,3.216,1.32c0.127,0.064,0.199,0.128,0.216,0.192c0.016,0.065-0.008,0.128-0.072,0.192l-2.928,3.072
          c-0.479-0.031-1.128-0.224-1.944-0.576c-0.815-0.352-1.655-0.816-2.52-1.392c-0.864-0.576-1.688-1.256-2.472-2.04
          c-0.785-0.784-1.385-1.656-1.801-2.616c-0.096-0.127-0.216-0.199-0.359-0.216c-0.145-0.016-0.248,0.056-0.313,0.216
          c-0.384,0.96-0.96,1.833-1.728,2.616c-0.769,0.784-1.584,1.464-2.448,2.04c-0.864,0.576-1.712,1.032-2.544,1.368
          c-0.833,0.336-1.488,0.521-1.968,0.552l-2.929-3.072c-0.096-0.063-0.136-0.136-0.119-0.216c0.016-0.08,0.104-0.136,0.264-0.168
          c1.12-0.256,2.216-0.688,3.288-1.296c1.071-0.607,2.023-1.44,2.855-2.496c0.832-1.024,1.504-2.28,2.017-3.768
          c0.512-1.488,0.768-3.24,0.768-5.256v-1.008c0-0.48-0.088-0.928-0.264-1.344c-0.177-0.416-0.601-0.624-1.272-0.624h-1.344v-2.736
          h8.688V78.469z M357.053,102.564c0.576-1.248,1.376-2.319,2.4-3.216c1.023-0.928,2.215-1.664,3.576-2.208
          c1.359-0.543,2.823-0.816,4.392-0.816c1.536,0,2.983,0.272,4.344,0.816c1.36,0.544,2.552,1.28,3.576,2.208
          c1.023,0.896,1.831,1.968,2.424,3.216c0.592,1.248,0.889,2.561,0.889,3.937c0,1.408-0.297,2.735-0.889,3.983
          c-0.593,1.248-1.4,2.32-2.424,3.217c-1.024,0.928-2.216,1.656-3.576,2.184s-2.808,0.793-4.344,0.793
          c-1.568,0-3.032-0.266-4.392-0.793c-1.361-0.527-2.553-1.256-3.576-2.184c-1.024-0.896-1.824-1.969-2.4-3.217
          s-0.864-2.575-0.864-3.983C356.188,105.125,356.477,103.813,357.053,102.564z M371.285,102.301
          c-1.073-1.104-2.36-1.656-3.864-1.656c-1.536,0-2.824,0.552-3.864,1.656s-1.56,2.504-1.56,4.2c0,1.728,0.52,3.136,1.56,4.224
          s2.328,1.633,3.864,1.633c1.504,0,2.791-0.545,3.864-1.633c1.071-1.088,1.607-2.496,1.607-4.224
          C372.893,104.805,372.356,103.404,371.285,102.301z M376.589,81.157v-5.232c0-0.544-0.144-1.008-0.432-1.392
          c-0.288-0.384-0.785-0.576-1.488-0.576h-0.528v-2.4h7.824v26.16h-5.376v-12.24h-3.744v9.36h-5.376V75.925
          c0-0.544-0.144-1.008-0.432-1.392c-0.288-0.384-0.785-0.576-1.488-0.576h-0.528v-2.4h7.824v9.6H376.589z"
          ></path>
        </clipPath>
        <clipPath id="letter-e-1-mask">
          <path
            d="M433.085,106.597v4.32h-42.24v-4.32h18.24v-4.416c0-0.544-0.16-0.983-0.48-1.32
          c-0.32-0.336-0.72-0.504-1.199-0.504h-0.769v-2.352h8.4v8.592H433.085z M395.837,78.277v-4.32h32.304v4.32h-5.616v12.72h5.616v4.32
          h-32.304v-4.32h5.568v-12.72H395.837z M407.165,78.277v12.72h9.6v-12.72H407.165z"
          ></path>
        </clipPath>
        <clipPath id="letter-e-2-mask">
          <path
            d="M447.725,88.357c0,0.32,0.08,0.56,0.24,0.72c0.16,0.161,0.384,0.24,0.672,0.24
          h18.528v4.224h-19.488c-1.92,0-3.36-0.472-4.32-1.416s-1.439-2.456-1.439-4.536v-9.12c0-0.511-0.168-0.967-0.504-1.368
          c-0.336-0.399-0.809-0.6-1.416-0.6h-0.96v-2.4h26.16v4.32h-17.473v3.36h13.681v4.224h-13.681V88.357z M449.692,108.996
          c0-0.511-0.168-0.967-0.504-1.367s-0.809-0.6-1.416-0.6h-0.479v-2.4h25.536v-2.977h-25.057v-4.176h29.952
          c0.288,0,0.52,0.104,0.696,0.312c0.176,0.208,0.264,0.44,0.264,0.696v9.36c0,0.288-0.08,0.513-0.239,0.672
          c-0.161,0.161-0.401,0.24-0.721,0.24h-22.128v2.353c0,0.159,0.031,0.264,0.096,0.312s0.192,0.071,0.385,0.071h23.088v4.225h-25.632
          c-1.44,0-2.44-0.297-3-0.889c-0.561-0.592-0.841-1.624-0.841-3.096V108.996z M472.925,76.021c0-0.48-0.16-0.944-0.479-1.392
          c-0.32-0.448-0.801-0.672-1.44-0.672h-0.96v-2.4h8.64v24.24h-5.76v-9.792h-8.64v-4.272h8.64V76.021z"
          ></path>
        </clipPath>
      </defs>
      <path
        class="letter letter--s"
        clip-path="url(#letter-s-mask)"
        d="M51.149,95.317H33.245v-4.32h42.24v4.32H57.581v2.64
		c2.208,0.608,4.04,1.752,5.496,3.432c1.456,1.68,2.184,3.593,2.184,5.736c0,1.344-0.288,2.592-0.864,3.744
		c-0.576,1.152-1.361,2.16-2.352,3.023c-0.992,0.864-2.153,1.543-3.48,2.041c-1.329,0.494-2.729,0.744-4.2,0.744
		c-1.504,0-2.92-0.25-4.248-0.744c-1.328-0.498-2.488-1.177-3.48-2.041c-0.992-0.863-1.769-1.871-2.328-3.023
		c-0.56-1.152-0.84-2.4-0.84-3.744c0-2.144,0.728-4.057,2.184-5.736c1.456-1.68,3.288-2.824,5.496-3.432V95.317z M38.045,76.357
		v-4.32h32.688v4.32H57.677c0.224,1.408,0.848,2.6,1.872,3.576c1.023,0.977,2.256,1.769,3.696,2.376
		c1.472,0.608,3.056,1.064,4.752,1.368c1.696,0.305,3.328,0.488,4.896,0.552c0.192,0,0.288,0.056,0.288,0.168
		c0,0.112-0.048,0.216-0.144,0.312l-2.736,3.408c-1.344,0-2.792-0.136-4.344-0.408c-1.552-0.271-3.064-0.68-4.536-1.224
		c-1.44-0.544-2.769-1.2-3.984-1.968c-1.216-0.768-2.144-1.647-2.784-2.64c-0.064-0.064-0.168-0.096-0.312-0.096
		s-0.232,0.032-0.264,0.096c-0.576,0.96-1.457,1.824-2.64,2.592c-1.184,0.768-2.512,1.424-3.984,1.968
		c-1.472,0.544-3.008,0.96-4.608,1.248c-1.601,0.288-3.072,0.432-4.416,0.432l-2.736-3.408c-0.128-0.128-0.185-0.24-0.168-0.336
		c0.016-0.096,0.12-0.144,0.312-0.144c1.536-0.064,3.151-0.248,4.848-0.552c1.696-0.304,3.28-0.76,4.752-1.368
		c1.44-0.607,2.672-1.399,3.696-2.376c1.024-0.976,1.664-2.167,1.92-3.576H38.045z M59.069,105.181
		c-0.288-0.624-0.672-1.176-1.152-1.655c-0.48-0.48-1.032-0.865-1.656-1.152c-0.624-0.288-1.256-0.432-1.896-0.432
		c-0.672,0-1.313,0.144-1.92,0.432c-0.608,0.287-1.152,0.672-1.632,1.152c-0.48,0.479-0.864,1.031-1.152,1.655
		s-0.432,1.272-0.432,1.944c0,0.704,0.144,1.367,0.432,1.992c0.288,0.623,0.672,1.176,1.152,1.656
		c0.48,0.479,1.023,0.855,1.632,1.127c0.607,0.271,1.248,0.408,1.92,0.408c0.64,0,1.272-0.137,1.896-0.408s1.176-0.647,1.656-1.127
		c0.48-0.48,0.864-1.033,1.152-1.656c0.288-0.625,0.432-1.288,0.432-1.992C59.501,106.453,59.357,105.805,59.069,105.181z"
      />
      <path
        class="letter letter--u"
        clip-path="url(#letter-u-mask)"
        d="M125.885,80.437v4.8h-6.239v11.328h-5.761v-3.888
		c-0.864,0.32-1.88,0.536-3.047,0.648c-1.168,0.113-2.633,0.168-4.392,0.168H88.541c-1.44,0-2.44-0.295-3-0.888
		c-0.56-0.592-0.84-1.624-0.84-3.096v-3.504c0-0.512-0.168-0.968-0.504-1.368c-0.336-0.4-0.809-0.6-1.416-0.6h-0.48v-2.496h18.816
		v-3.744H83.021v-4.272h23.472c0.16,0,0.28,0.048,0.36,0.144c0.08,0.096,0.12,0.224,0.12,0.384v10.8c0,0.288-0.08,0.513-0.24,0.672
		c-0.161,0.16-0.401,0.24-0.72,0.24H90.605v3.36h17.76c1.248,0,2.312-0.064,3.192-0.192c0.88-0.127,1.656-0.319,2.328-0.576V76.021
		c0-0.48-0.16-0.944-0.479-1.392c-0.32-0.448-0.8-0.672-1.44-0.672h-0.96v-2.4h8.64v8.88H125.885z M95.885,102.085
		c0.576-1.248,1.375-2.32,2.4-3.216c1.024-0.928,2.224-1.664,3.6-2.208c1.375-0.543,2.848-0.816,4.416-0.816
		c1.536,0,2.992,0.272,4.368,0.816c1.375,0.544,2.576,1.28,3.6,2.208c1.023,0.896,1.831,1.968,2.424,3.216
		c0.592,1.248,0.888,2.561,0.888,3.937c0,1.408-0.296,2.735-0.888,3.983c-0.593,1.248-1.4,2.319-2.424,3.216
		c-1.024,0.928-2.225,1.656-3.6,2.184c-1.376,0.529-2.832,0.793-4.368,0.793c-1.568,0-3.041-0.264-4.416-0.793
		c-1.376-0.527-2.576-1.256-3.6-2.184c-1.024-0.896-1.824-1.968-2.4-3.216s-0.864-2.575-0.864-3.983
		C95.021,104.646,95.309,103.333,95.885,102.085z M110.165,101.797c-1.104-1.152-2.392-1.728-3.864-1.728
		c-1.504,0-2.792,0.576-3.864,1.728c-1.072,1.152-1.608,2.561-1.608,4.225c0,1.695,0.536,3.111,1.608,4.247
		c1.072,1.136,2.36,1.704,3.864,1.704c1.472,0,2.76-0.568,3.864-1.704s1.656-2.552,1.656-4.247
		C111.821,104.357,111.269,102.949,110.165,101.797z"
      />
      <path
        class="letter letter--p1-1"
        clip-path="url(#letter-p1-1-mask)"
        d="M129.726,97.477v-4.32h29.951c0.416-0.864,0.744-1.888,0.984-3.072
		c0.24-1.184,0.36-2.544,0.36-4.08v-7.056c0-0.319-0.064-0.552-0.192-0.696s-0.384-0.216-0.768-0.216h-26.641v-4.32h33.024
		c0.16,0,0.279,0.041,0.36,0.12c0.079,0.08,0.119,0.2,0.119,0.36v12.336c0,1.28-0.128,2.472-0.384,3.576s-0.656,2.12-1.2,3.048
		h5.664v4.32H153.39v18.24h-6.049v-18.24H129.726z"
      />
      <path
        class="letter letter--p1-2"
        clip-path="url(#letter-p1-2-mask)"
        d="M222.989,106.597h18.096v4.32h-42.24v-4.32h18.192v-4.896
		c0-0.544-0.161-0.984-0.48-1.32c-0.32-0.336-0.72-0.504-1.2-0.504h-0.768v-2.352h8.4V106.597z M204.269,88.597V78.373
		c0-0.511-0.168-0.967-0.504-1.368c-0.336-0.4-0.809-0.6-1.416-0.6h-0.96v-2.4h34.656v4.368h-25.824v10.704
		c0,0.32,0.08,0.561,0.24,0.72c0.159,0.161,0.384,0.24,0.672,0.24h25.152v4.272h-26.496c-1.92,0-3.32-0.432-4.2-1.296
		C204.708,92.149,204.269,90.677,204.269,88.597z"
      />
      <path
        class="letter letter--p2-1"
        clip-path="url(#letter-p2-1-mask)"
        d="M264.148,89.725c0.721,1.809,1.64,3.369,2.761,4.68
		c1.087,1.313,2.271,2.36,3.552,3.144c1.279,0.785,2.479,1.289,3.6,1.512c0.128,0.033,0.2,0.089,0.216,0.168
		c0.017,0.08-0.008,0.152-0.071,0.216l-2.977,3.456c-0.992-0.256-2.04-0.688-3.144-1.295c-1.104-0.608-2.152-1.328-3.145-2.161
		c-1.024-0.799-1.937-1.68-2.735-2.64c-0.801-0.96-1.393-1.92-1.776-2.88c-0.096-0.192-0.216-0.288-0.36-0.288
		c-0.144,0-0.264,0.096-0.359,0.288c-0.416,0.96-1.024,1.92-1.824,2.88s-1.712,1.841-2.736,2.64
		c-0.992,0.833-2.032,1.552-3.119,2.161c-1.089,0.607-2.129,1.039-3.12,1.295l-2.977-3.456c-0.096-0.064-0.137-0.136-0.12-0.216
		c0.016-0.08,0.104-0.136,0.265-0.168c1.119-0.255,2.328-0.784,3.624-1.584c1.296-0.799,2.487-1.855,3.575-3.168
		c1.088-1.312,1.992-2.856,2.713-4.632c0.72-1.776,1.079-3.784,1.079-6.024v-5.616c0-0.48-0.168-0.928-0.504-1.344
		c-0.336-0.416-0.84-0.624-1.512-0.624h-0.864v-2.352h8.88v9.936C263.068,85.893,263.429,87.917,264.148,89.725z M279.053,115.717
		V76.021c0-0.48-0.16-0.944-0.479-1.392c-0.32-0.448-0.801-0.672-1.44-0.672h-0.96v-2.4h8.592v44.16H279.053z"
      />
      <path
        class="letter letter--p2-2"
        clip-path="url(#letter-p2-2-mask)"
        d="M297.005,78.709v-4.272h19.2v4.272h-6.528v5.52c0,2.208,0.224,4.2,0.672,5.976
		c0.448,1.776,1.072,3.336,1.872,4.68c0.8,1.313,1.72,2.376,2.76,3.192s2.168,1.368,3.385,1.656
		c0.127,0.032,0.207,0.088,0.239,0.168c0.032,0.08,0,0.152-0.096,0.216l-3.12,3.36c-0.544-0.063-1.24-0.336-2.088-0.816
		c-0.849-0.479-1.688-1.071-2.52-1.775c-0.833-0.736-1.608-1.552-2.328-2.448c-0.721-0.896-1.225-1.808-1.513-2.736
		c-0.096-0.224-0.216-0.328-0.359-0.312c-0.145,0.017-0.248,0.12-0.313,0.312c-0.32,0.96-0.832,1.889-1.536,2.784
		c-0.704,0.896-1.456,1.696-2.256,2.4c-0.832,0.736-1.672,1.336-2.52,1.8c-0.849,0.464-1.561,0.729-2.136,0.792l-3.12-3.36
		c0-0.031-0.009-0.072-0.024-0.12c-0.017-0.048-0.023-0.087-0.023-0.12c0-0.032,0.007-0.056,0.023-0.072
		c0.016-0.016,0.072-0.04,0.168-0.072c1.184-0.288,2.296-0.848,3.336-1.68c1.04-0.832,1.96-1.92,2.76-3.264
		c0.769-1.312,1.384-2.856,1.849-4.632c0.463-1.776,0.695-3.751,0.695-5.928v-5.52H297.005z M328.829,85.957V75.925
		c0-0.544-0.145-1.008-0.433-1.392c-0.288-0.384-0.784-0.576-1.487-0.576h-0.528v-2.4h7.824v44.16h-5.376v-25.44h-3.744v25.44
		h-5.376V75.925c0-0.544-0.145-1.008-0.433-1.392c-0.287-0.384-0.784-0.576-1.487-0.576h-0.528v-2.4h7.824v14.4H328.829z"
      />
      <path
        class="letter letter--l"
        clip-path="url(#letter-l-mask)"
        d="M356.573,78.469c0,2.016,0.264,3.768,0.792,5.256c0.527,1.488,1.207,2.745,2.04,3.768c0.863,1.024,1.823,1.848,2.88,2.472
		c1.056,0.624,2.127,1.064,3.216,1.32c0.127,0.064,0.199,0.128,0.216,0.192c0.016,0.065-0.008,0.128-0.072,0.192l-2.928,3.072
		c-0.479-0.031-1.128-0.224-1.944-0.576c-0.815-0.352-1.655-0.816-2.52-1.392c-0.864-0.576-1.688-1.256-2.472-2.04
		c-0.785-0.784-1.385-1.656-1.801-2.616c-0.096-0.127-0.216-0.199-0.359-0.216c-0.145-0.016-0.248,0.056-0.313,0.216
		c-0.384,0.96-0.96,1.833-1.728,2.616c-0.769,0.784-1.584,1.464-2.448,2.04c-0.864,0.576-1.712,1.032-2.544,1.368
		c-0.833,0.336-1.488,0.521-1.968,0.552l-2.929-3.072c-0.096-0.063-0.136-0.136-0.119-0.216c0.016-0.08,0.104-0.136,0.264-0.168
		c1.12-0.256,2.216-0.688,3.288-1.296c1.071-0.607,2.023-1.44,2.855-2.496c0.832-1.024,1.504-2.28,2.017-3.768
		c0.512-1.488,0.768-3.24,0.768-5.256v-1.008c0-0.48-0.088-0.928-0.264-1.344c-0.177-0.416-0.601-0.624-1.272-0.624h-1.344v-2.736
		h8.688V78.469z M357.053,102.564c0.576-1.248,1.376-2.319,2.4-3.216c1.023-0.928,2.215-1.664,3.576-2.208
		c1.359-0.543,2.823-0.816,4.392-0.816c1.536,0,2.983,0.272,4.344,0.816c1.36,0.544,2.552,1.28,3.576,2.208
		c1.023,0.896,1.831,1.968,2.424,3.216c0.592,1.248,0.889,2.561,0.889,3.937c0,1.408-0.297,2.735-0.889,3.983
		c-0.593,1.248-1.4,2.32-2.424,3.217c-1.024,0.928-2.216,1.656-3.576,2.184s-2.808,0.793-4.344,0.793
		c-1.568,0-3.032-0.266-4.392-0.793c-1.361-0.527-2.553-1.256-3.576-2.184c-1.024-0.896-1.824-1.969-2.4-3.217
		s-0.864-2.575-0.864-3.983C356.188,105.125,356.477,103.813,357.053,102.564z M371.285,102.301
		c-1.073-1.104-2.36-1.656-3.864-1.656c-1.536,0-2.824,0.552-3.864,1.656s-1.56,2.504-1.56,4.2c0,1.728,0.52,3.136,1.56,4.224
		s2.328,1.633,3.864,1.633c1.504,0,2.791-0.545,3.864-1.633c1.071-1.088,1.607-2.496,1.607-4.224
		C372.893,104.805,372.356,103.404,371.285,102.301z M376.589,81.157v-5.232c0-0.544-0.144-1.008-0.432-1.392
		c-0.288-0.384-0.785-0.576-1.488-0.576h-0.528v-2.4h7.824v26.16h-5.376v-12.24h-3.744v9.36h-5.376V75.925
		c0-0.544-0.144-1.008-0.432-1.392c-0.288-0.384-0.785-0.576-1.488-0.576h-0.528v-2.4h7.824v9.6H376.589z"
      />
      <path
        class="letter letter--e-1"
        clip-path="url(#letter-e-1-mask)"
        d="M433.085,106.597v4.32h-42.24v-4.32h18.24v-4.416c0-0.544-0.16-0.983-0.48-1.32
		c-0.32-0.336-0.72-0.504-1.199-0.504h-0.769v-2.352h8.4v8.592H433.085z M395.837,78.277v-4.32h32.304v4.32h-5.616v12.72h5.616v4.32
		h-32.304v-4.32h5.568v-12.72H395.837z M407.165,78.277v12.72h9.6v-12.72H407.165z"
      />
      <path
        class="letter letter--e-2"
        clip-path="url(#letter-e-2-mask)"
        d="M447.725,88.357c0,0.32,0.08,0.56,0.24,0.72c0.16,0.161,0.384,0.24,0.672,0.24
		h18.528v4.224h-19.488c-1.92,0-3.36-0.472-4.32-1.416s-1.439-2.456-1.439-4.536v-9.12c0-0.511-0.168-0.967-0.504-1.368
		c-0.336-0.399-0.809-0.6-1.416-0.6h-0.96v-2.4h26.16v4.32h-17.473v3.36h13.681v4.224h-13.681V88.357z M449.692,108.996
		c0-0.511-0.168-0.967-0.504-1.367s-0.809-0.6-1.416-0.6h-0.479v-2.4h25.536v-2.977h-25.057v-4.176h29.952
		c0.288,0,0.52,0.104,0.696,0.312c0.176,0.208,0.264,0.44,0.264,0.696v9.36c0,0.288-0.08,0.513-0.239,0.672
		c-0.161,0.161-0.401,0.24-0.721,0.24h-22.128v2.353c0,0.159,0.031,0.264,0.096,0.312s0.192,0.071,0.385,0.071h23.088v4.225h-25.632
		c-1.44,0-2.44-0.297-3-0.889c-0.561-0.592-0.841-1.624-0.841-3.096V108.996z M472.925,76.021c0-0.48-0.16-0.944-0.479-1.392
		c-0.32-0.448-0.801-0.672-1.44-0.672h-0.96v-2.4h8.64v24.24h-5.76v-9.792h-8.64v-4.272h8.64V76.021z"
      />
    </svg>
  </body>
</html>
