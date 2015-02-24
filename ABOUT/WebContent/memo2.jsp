<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

    <style>
*, *:before, *:after {
  box-sizing: border-box;
}

html {
  font-size: 62.5%;
}

body {
  font-family: 'Open Sans', sans-serif;
  font-size: 1.1rem;
  line-height: 1.5;
  color: #111;
  font-weight: 300;
  letter-spacing: 0.1em;
    background-image: url("images/background.png");
}
img {
  max-width: 100%;
}

.container {
  width: 80%;
  max-width: 960px;
  margin: 5rem auto;
  box-shadow: 0 0 1px black;
}

.grid_4 {
  background: white;
  width: 23%;
  float: left;
  margin-right: 2.66%;
  border: solid 1px rgba(0, 0, 0, 0.15);
  position: relative;
  cursor: pointer;
}
.grid_4:last-child {
  margin-right: 0;
}
.grid_4 p {
  margin: 0;
  padding: 1rem 1.5rem;
  min-height: 200px;
  max-height: 300px;
}
.grid_4:before {
  background: white;
  content: '';
  position: absolute;
  width: 98%;
  height: 100%;
  display: block;
  border: solid 1px rgba(0, 0, 0, 0.15);
  left: 1%;
  top: 3px;
  z-index: -10;
}
.grid_4:after {
  content: '';
  position: absolute;
  width: 96%;
  height: 100%;
  display: block;
  border: solid 1px rgba(0, 0, 0, 0.15);
  left: 2%;
  top: 5px;
  z-index: -10;
}
.grid_4:hover img {
  opacity: 0.8;
}

</style>


  <div class="container">
  <div class="grid_4">
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    </p>
  </div>

   <div class="grid_4">
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
  </div>

   <div class="grid_4">
    <img src="http://lorempixel.com/800/600/food" alt="" />
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
  </div>

   <div class="grid_4">
    <img src="http://lorempixel.com/800/600/nature" alt="" />
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
  </div>
  
  

</div>
</body>
</html>