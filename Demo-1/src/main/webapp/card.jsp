<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <title>credit card</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
	padding: 0px;
	margin: 0px;
	box-sizing: border-box;
	font-family: 'Poppins',sans-serif;
}
body{
    width: 100vw;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    
}
.container{
    width: 400px;
    background: linear-gradient( rgba(41,8,62,1) 0%, rgba(29,79,253,0.9402985074626866) 15%, rgba(38,35,31,1) 52%);
    padding: 10px;
    border-radius: 10px;
    box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;
    margin-top: 20px;
}
.header{
    display: flex;
    justify-content: space-between;
    margin-bottom: 10px;
    color: white;
}
.header i{
    font-size: 25px;
}
.box{
    width: 45px;
    height: 45px;
    background-color: goldenrod;
    margin-bottom: 10px;
    border-radius: 10px;
}
form {
    display: flex;
    justify-content: center;
    width: 100%;
}
.input input{
    height: 35px;
    margin-right: 10px;
    border-radius: 7px;
    padding-left: 5px;
    outline: none;
    border: none;
}
.btn button{
    height: 35px;
    width: 90px;
    border-radius: 7px;
    outline: none;
    border: none;
}
.footer{
    display: flex;
    justify-content: space-between;
    margin-top: 20px;
    height: 60px;
    color: white;
}
.cir{
    display: flex;
}
.circle{
    width: 50px;
    height: 50px;
    border-radius: 50%;
}
.cir1{
    background-color: red;
    position:relative ;
    left: -25px;
}
.cir2{
    background-color: orange;
    position: absolute;
}

.footer h5{
    line-height: 60px;
    text-transform: uppercase;
}
.msg{
	color: white;
	background-color: lime;
	height: 50px;
	margin-top: 30px;
	width: 400px;
	border-radius: 20px;
}
.msg p{
	line-height: 50px;
	margin-left: 20px;
}
  
</style>
    </head>
    <body>
    <h1>Credit Card Validation</h1>
        <div class="container">
            <div class="header">
                <h3>PayPal</h3>
                <i class='fa fa-rss'></i>

            </div>
            <div class="box">

            </div>
            <div class="form">
                <form action="card">
                    <div class="input">
                        <input type="text" name="cardNo" placeholder="Enter Card No" maxlength="16">
                    </div>
                    <div class="btn">
                        <button>save</button>
                    </div>
                    
                </form>
            </div>
            <div class="footer">
                <h5>rolex</h5>
                <div class="valid">
                    <p>valid</p>
                    <p>12/25</p>
                </div>
                <div class="cir">
                <div class="circle cir1"></div>
                <div class="circle cir2"></div>
            </div>
            </div>
        </div>
         <div class="msg">
    	<p>${msg}</p>
    </div>
    </body>
</html>