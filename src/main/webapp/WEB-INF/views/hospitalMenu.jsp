<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
img{width:150px;height:150px}
span.fw-700{font-size:18px}
</style>
</head>
<body>

<main id="js-page-content" role="main" class="page-content">

    <div id="panel-1" class="panel">
                                    <div class="panel-hdr">
                                        <h2>
                                            <span class="fw-300"></span>
                                        </h2>
                                        <div class="panel-toolbar">
                                            <button class="btn btn-panel" data-action="panel-collapse" data-toggle="tooltip" data-offset="0,10" data-original-title="Collapse"></button>
                                            <button class="btn btn-panel" data-action="panel-fullscreen" data-toggle="tooltip" data-offset="0,10" data-original-title="Fullscreen"></button>
                                            <button class="btn btn-panel" data-action="panel-close" data-toggle="tooltip" data-offset="0,10" data-original-title="Close"></button>
                                        </div>
                                    </div>
   <table>
      <tr>
         <td align="center"><br/><img src="/resource/img/hospitalMenu/ear.PNG" class="rounded-circle shadow-2 img-thumbnail shadow-hover cursor-pointer" onclick="search('이비인후과')" > <br/> <span class="fw-700" >이비인후과</span></td>
         <td align="center"><br/><img src="/resource/img/hospitalMenu/eye.PNG"  class="rounded-circle shadow-2 img-thumbnail shadow-hover cursor-pointer" onclick="search('안과')" > <br/><span class="fw-700" >안과</span></td>
         <td align="center"><br/><img src="/resource/img/hospitalMenu/jung.PNG"  class="rounded-circle shadow-2 img-thumbnail shadow-hover cursor-pointer" onclick="search('정형외과')" > <br/> <span class="fw-700" >정형외과</span></td>
      </tr>
      <tr>
         <td align="center"><br/><img src="/resource/img/hospitalMenu/p.PNG" class="rounded-circle shadow-2 img-thumbnail shadow-hover cursor-pointer" onclick="search('피부과')"> <br/> <span class="fw-700" >피부과</span></td>
         <td align="center"><br/><img src="/resource/img/hospitalMenu/ic.PNG"  class="rounded-circle shadow-2 img-thumbnail shadow-hover cursor-pointer" onclick="search('응급센터')"> <br/> <span class="fw-700" >응급센터</span></td>
         <td align="center"><br/><img src="/resource/img/hospitalMenu/so.PNG"  class="rounded-circle shadow-2 img-thumbnail shadow-hover cursor-pointer" onclick="search('소아과')" > <br/> <span class="fw-700" >소아과</span></td>
         
      </tr>
      <tr>
         <td align="center"><br/><img src="/resource/img/hospitalMenu/e.PNG" class="rounded-circle shadow-2 img-thumbnail shadow-hover cursor-pointer" onclick="search('치과')" > <br/> <span class="fw-700" >치과</span><br/><br/>  </td>
         <td align="center"><br/><img src="/resource/img/hospitalMenu/heart.PNG"  class="rounded-circle shadow-2 img-thumbnail shadow-hover cursor-pointer" onclick="search('정신과')" > <br/> <span class="fw-700" >정신과</span><br/><br/>  </td>
         <td align="center"><br/><img src="/resource/img/hospitalMenu/han.PNG"  class="rounded-circle shadow-2 img-thumbnail shadow-hover cursor-pointer" onclick="search('한의원')"  > <br/> <span class="fw-700" >한의원</span><br/> <br/> </td>
      </tr>
      
      <tr>
         <td align="center"><br/><img src="/resource/img/hospitalMenu/san.PNG" class="rounded-circle shadow-2 img-thumbnail shadow-hover cursor-pointer" onclick="search('산부인과')" > <br/> <span class="fw-700" >산부인과</span><br/><br/>  </td>
         <td align="center"><br/><img src="/resource/img/hospitalMenu/nae.PNG"  class="rounded-circle shadow-2 img-thumbnail shadow-hover cursor-pointer" onclick="search('내과')" > <br/> <span class="fw-700" >내과</span><br/><br/>  </td>
         <td align="center"><br/><img src="/resource/img/hospitalMenu/plastic.PNG"  class="rounded-circle shadow-2 img-thumbnail shadow-hover cursor-pointer" onclick="search('성형외과')"  > <br/> <span class="fw-700" >성형외과</span><br/> <br/> </td>
      </tr>

   </table>
   </div>

</main>
<script>
function search(searching){
   
   location.href="search?searching="+searching;
}
</script>

</body>
</html>