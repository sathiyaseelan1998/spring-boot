<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>login</title>
	<style type="text/css">
	
	@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
	padding: 0px;
	margin: 0px;
	box-sizing: border-box;
	font-family: 'Poppins',sans-serif;
}
body{
    height: 100vh;
    width: 100vw;
    background-color: rgb(213, 220, 226);
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}
.container{

    width: 500px;
    height: 300px;
    background-color: white;
    display: flex;
    margin-top: 20px;
        box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;
    
}

.image{
    background-image: url("../image/login.jpg");
    width: 50%;
    background-position: center;
    background-size: cover;
    
}
.login{
    margin: 20px 10px;
}
.login h3{
    margin-bottom: 20px;
}
.text{
    margin-bottom: 20px;
}
.text input{
    border: none;
    outline: none;
    border-bottom: 1px solid gray;
}
.text span{
    font-size: 12px;
    margin-left: 5px;
}
.btn button{
    height: 30px;
    width: 90px;
    background-color: rgb(107, 164, 230);
    font-weight: bold;
    border: none;
    outline: none;
    border-radius: 5px;
}
.logo{
    margin-top: 30px;
    text-align: center;
    margin-left: -60px;
}
.logo a{
    height: 25px;
    width: 25px;
    text-decoration: none;
    color: white;
    line-height: 25px;
    border-radius: 50%;
    margin-right: 5px;
}
.fa-facebook {
    background: #3B5998;

  }
  .fa-twitter {
    background: #55ACEE;
  }
  
  .fa-google {
    background: #dd4b39;
  }
  .logo span{
    font-size: 12px;
    color: rgb(94, 88, 88);
  }
.msg{
	color: white;
	background-color: tomato;
	height: 50px;
	margin-top: 30px;
	width: 500px;
	border-radius: 20px;
}
.msg p{
	line-height: 50px;
	margin-left: 20px;
}
  
	</style>
</head>
<body>
	<h1>Password Validation</h1>
    <div class="container">
        <div class="image">
          
        </div>
        <div class="login">
            <h3>Login</h3>
            <div class="form">
                <form action="password">

                    <div class="text">
                        <input type="text" name="userName" placeholder="User Name">
                    </div>
                    <div class="text">
                        <input type="text" name="password" placeholder="Password">
                    </div>
                    <div class="text">
                        <input type="checkbox"><span>Remember me</span>
                    </div>
                    <div class="btn">
                        <button>Login</button>
                    </div>

                </form>
                

            </div>
            <div class="logo">
                <span>Or login with</span>
                <a href="#" class="fa fa-google"></a>
                <a href="#" class="fa fa-facebook"></a>
                <a href="#" class="fa fa-twitter"></a>
            </div>

        </div>

    </div><br>
    <div class="msg">
    	<p>${msg}</p>
    </div>
</body>
</html>