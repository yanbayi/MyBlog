<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
<base href=" <%=basePath%>">
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <title>大雁塔</title>
  <link rel="stylesheet" type="text/css" href="res/layui/css/layui.css">
  <link rel="stylesheet" type="text/css" href="res/css/main.css">
  
  <script src="http://cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script>
  <script src="layer/layer.js"></script>
</head>
<body>

<div class="content whisper-content leacots-content details-content">
    <div class="cont w1000">
      <div class="whisper-list">
        <div class="item-box">
          <div class="review-version">
              <div class="form-box">
                <div class="article-cont">
                  <div class="title">
                    <h3>大雁塔游记</h3>
                    <p class="cont-info"><span class="data">2018/08/08</span><span class="types">游记</span></p>
                  </div>
                  <p>大雁塔美丽极了！</p>
                  <p>大雁塔共分七层，每层都装有四个小巧而精致的小窗户。一层有个禅房，禅房里放有佛经、佛像，其中有如来佛像和观世音菩萨的佛像等。</p>
                  <img src="res/img/sy_img1.jpg">
                  <p>大雁塔的门框上，有优美的线条雕刻着唐代建筑图案，美丽大方，是研究我国建筑史的重要资料。大雁塔已被列为国家一级保护文物。爸爸对我说：“大雁塔凝聚着我国劳动人民的勤劳汗水，是我国劳动人民智慧和毅力的结晶，我们现在要是不珍惜它，不保护它，怎能对的起我们祖先呢？”</p>
                  <p>顺着楼梯向上攀登，到了第七层，举目远眺，西安市市容尽收眼底。看，前端是西北最高的建筑物——电视塔，左端是规模宏大的小寨饭······。整个大雁塔气势雄伟，具有浓郁的民族色彩。最引人注目的是孙悟空、猪八戒、沙和尚和唐僧师徒四人的佛像，我仿佛进入了一个梦幻世界。我仿佛看见了孙悟空、猪八戒、沙和尚保护着师父唐僧去西天取经，一路上他们兄弟三人斩妖捉怪，击退了妖怪们一次次的进攻，保护着师父最后终于取得了真经。</p>
                  <p>参观完大雁塔后，爸爸妈妈还告诉我西安还有许多像大雁塔的古建筑。我觉得我们陕西有那么多名胜古迹，真是了不起，作为陕西人我们应该感到骄傲和自豪！</p>
                  
                </div>
              </div>
          </div>
        </div>
      </div>
      <div id="demo" style="text-align: center;"></div>
   </div>
 </div> 
<script type="text/javascript" src="res/layui/layui.js"></script>
</body>
</html>