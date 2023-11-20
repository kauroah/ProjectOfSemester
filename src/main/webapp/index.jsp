    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name ="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>ThreadTrove</title>
    </head>
    <body>
    <nav class="navbar">
        <div class="logo"><h1>ThreadTrove</h1></div>
        <ul class="menu">
            <li><a href="" class="active">Home</a></li>
            <li><a href="">Sell</a></li>
            <li><a href="/UserServlet">Accounts</a></li>
            <li><a href=""><i class="fas fa-shopping-cart"></i></a></li>
            <li><a href="/signin">Login</a></li>
        </ul>

        <div class="menu-btn">
            <i class="fa fa-bars"></i>
        </div>
    </nav>

    <section class="content">
        <h1>New Arrivals for Men & Women</h1>
        <p>Get The Best Women Fashion Arrivals</p>
        <button>Shop Now</button>
    </section>

    <h1 class="pheading">Our Latest Products</h1>

    <section class="sec">
        <div class="products">

            <div class="card">
                <div class="img"><img src="html/png/1.png" alt=""></div>
                <div class="desc">Women</div>
                <div class="title">Lady Sandal</div>
                <div class="box">
                    <div class="price">2000₽</div>
                    <button class="btn">Buy Now</button>
                </div>
            </div>


            <div class="card">
                <div class="img"><img src="html/png/2.png" alt=""></div>
                <div class="desc">Men</div>
                <div class="title">Air Jordan 1</div>
                <div class="box">
                    <div class="price">2500₽</div>
                    <button class="btn">Buy Now</button>
                </div>
            </div>


            <div class="card">
                <div class="img"><img src="html/png/4.png" alt=""></div>
                <div class="desc">Men</div>
                <div class="title">Classic Watch</div>
                <div class="box">
                    <div class="price">10000₽</div>
                    <button class="btn">Buy Now</button>
                </div>
            </div>


            <div class="card">
                <div class="img"><img src="html/png/3.png" alt=""></div>
                <div class="desc">Men</div>
                <div class="title">Sneakers Nike</div>
                <div class="box">
                    <div class="price">4500₽</div>
                    <button class="btn">Buy Now</button>
                </div>
            </div>


            <div class="card">
                <div class="img"><img src="html/png/6.png" alt=""></div>
                <div class="desc">Women</div>
                <div class="title">Sneakers Nike</div>
                <div class="box">
                    <div class="price">6553₽</div>
                    <button class="btn">Buy Now</button>
                </div>
            </div>


            <div class="card">
                <div class="img"><img src="html/png/5.png" alt=""></div>
                <div class="desc">Women</div>
                <div class="title">Watch</div>
                <div class="box">
                    <div class="price">1542₽</div>
                    <button class="btn">Buy Now</button>
                </div>
            </div>


            <div class="card">
                <div class="img"><img src="html/png/8.png" alt=""></div>
                <div class="desc">Women</div>
                <div class="title">Heels</div>
                <div class="box">
                    <div class="price">3565₽</div>
                    <button class="btn">Buy Now</button>
                </div>
            </div>


            <div class="card">
                <div class="img"><img src="html/png/9.png" alt=""></div>
                <div class="desc">Men</div>
                <div class="title">Blazer</div>
                <div class="box">
                    <div class="price">250₽</div>
                    <button class="btn">Buy Now</button>
                </div>
            </div>


            <div class="card">
                <div class="img"><img src="html/png/7.png" alt=""></div>
                <div class="desc">Boys</div>
                <div class="title">Shorts</div>
                <div class="box">
                    <div class="price">300₽</div>
                    <button class="btn">Buy Now</button>
                </div>
            </div>


            <div class="card">
                <div class="img"><img src="html/png/10.png" alt=""></div>
                <div class="desc">Men</div>
                <div class="title">Classic Shoes</div>
                <div class="box">
                    <div class="price">3451₽</div>
                    <button class="btn">Buy Now</button>
                </div>
            </div>


        </div>
    </section>

    <footer>
        <p>Copyrights @<a href="">ThreadTrove</a></p>
    </footer>

    <style>
        *{
            margin: 0;
            padding: 0;
            font-family: sans-serif;
        }

        body{
            height: 100%;
        }

        .menu-btn{
            color: #424144;
            font-size: 23px;
            cursor: pointer;
            display: none;
        }

        .navbar{
            padding: 20px 5%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 999;
            background-color: #f3f4f6;
            box-shadow: 0 0 14px rgba(0, 0, 0, 0.3);
        }
        .navbar .menu li{
            list-style: none;
            display: inline-block;
        }

        .navbar .menu li a{
            display: block;
            margin-left: 20px;
            color: #424144;
            border-bottom: 4px solid transparent;
            text-decoration: none;
            font-size: 20px;
            font-weight: bold;

        }

        .navbar .menu li .active{
            border-bottom: 4px solid #f63e4e;
        }

        .navbar . menu li a i{
            color: #f63e4e;

        }

        .navbar .menu li a:hover {
            border-bottom: 4px solid #f63e4e;
        }

        .content{
            background-image: url("shopping.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            padding: 0 5%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
            color: #000000;
            height: 100vh;
        }

        .content h1{
            font-size: 40px;
        }

        .content p{
            font-size: 20px;
            margin-top: 20px;
        }

        .content button{
            margin-top: 30px;
            padding: 15px 30px;
            border: none;
            background: #f63e4e;
            color: white;
            font-size: 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .pheading{
            text-align: center;
            margin: 50px 0;
            color: #424144;
        }

        .sec{
            padding: 10px 5%;

        }

        .products{
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
        }

        .products .card{
            width: 310px;
            background: #f5f5f5;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
            border-radius: 5px;
            padding: 5px;
            margin-bottom: 20px;
        }

        .products .card img{
            height: 250px;
            width: 100%;
        }

        .products .card .desc{
            padding: 5px 20px;
            opacity: 0.8;
        }

        .products .card .title{
            font-weight: 900;
            font-size: 20px;
            color: #424144;
            padding: 0 20px;
        }

        .products .card .box{
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
        }

        .products .card .box .price{
            color: #f63e4e;
            font-size: 20px;
            font-weight: bold;
        }

        .products .card .box .btn{
            font-size: 13px;
            color: #f63e4e;
            padding: 10px 18px;
            font-weight: 900;
            border-radius: 20px;
        }

        .products .card .box .btn:hover{
            cursor: pointer;
            background-color: #f63e4e;
            color: white;
        }

        footer{
            background-color: #f3f4f6;
            height: 10vh;
        }

        footer p{
            text-align: center;
            line-height: 10vh;
        }

        footer p a{
            text-decoration: none;
            color: #f63e4e;
            font-weight: bold;
        }
    </style>
    </body>
    </html>
