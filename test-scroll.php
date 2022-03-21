<!DOCTYPE html>
<!-- code by webdevtrick ( https://webdevtrick.com ) -->
<html>
<head>
  <meta charset="UTF-8">
  <title>HTML CSS Smooth Scrolling | Webdevtrick.com</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
      <link rel="stylesheet" href="style.css">
	  <style>
	  /** code by webdevtrick ( https://webdevtrick.com ) **/
ul{
  position: fixed;
  top: 50%;
  left: 0;
  transform: translateY(50%);
  margin: 0;
  padding: 0;
  z-index: 1; 
}
ul li{
  list-style: none;
}
#container{
  width: 100%;
  height: 100vh;
}
#container div{
  position: relative;
  width: 100%;
  height: 100%;
}

#container div h1{
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  width: 100%;
  text-align: center;
  text-transform: uppercase; 
  margin: 0;
  padding: 0;
  font-size: 8rem;
  color: #fff;
}
ul li a{
  display: block;
  text-decoration: none;
  height: 30px;
  font-size: 24px;
  background: #fff;
  width: 140px;
  color: #262626;
  margin: 4px 0;
  padding-left: 15px;
  text-transform: uppercase;
  border-top-right-radius: 15px;
  border-bottom-right-radius: 15px;
  line-height:30px;
}
ul li a:hover{
  background: #333;
  text-decoration: none;
  color: #fff;
}
#container{
  width: 100%;
  height: 100vh;
  scroll-behavior: smooth;
  overflow-Y: scroll;
}
#container div#web{
  background-color: #00ced1;
}
#container div#dev{
  background-color: #f05855;
}
#container div#trick{
  background-color: #2bb673;
}
#container div#dot{
  background-color: #2bb673;
}
#container div#com{
  background-color: #c72339;
}
	  </style>
</head>

<body>
  
  <ul>
    <li class="list-elem" id=""><a href="#web">Web</a></li>
    <li class="list-elem" id=""><a href="#dev">Dev</a></li>
    <li class="list-elem" id=""><a href="#trick">Trick</a></li>
    <li class="list-elem" id=""><a href="#dot">Dot</a></li>
    <li class="list-elem" id=""><a href="#com">Com</a></li>
  </ul>
  
  <div id="container">
    <div id="web"><h1>WEB</h1></div>
    <div id="dev"><h1>DEV</h1></div>
    <div id="trick"><h1>TRICK</h1></div>
    <div id="dot"><h1>.DOT</h1></div>
    <div id="com"><h1>COM</h1></div>
  </div>
  
</body>
</html>