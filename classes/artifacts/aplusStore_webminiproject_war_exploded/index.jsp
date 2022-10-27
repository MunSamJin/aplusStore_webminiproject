<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>iLand Multipurpose Landing Page Template</title>
    <link rel="icon" href="images/favicon.png" type="image/png" sizes="16x16">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="iLand Multipurpose Landing Page Template">
    <meta name="keywords" content="iLand HTML Template, iLand Landing Page, Landing Page Template">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,500,600,700" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/animate.css">
    <!-- Resource style -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/ionicons.min.css">
    <!-- Resource style -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<jsp:include page="common/header.jsp"/>
    <!-- /.container-fluid -->
    <div class="main app form" id="main"><!-- Main Section-->
        <div class="hero-section">
            <div class="container nopadding">
                <div class="col-md-5"> <img class="img-responsive wow fadeInUp" data-wow-delay="0.1s" src="images/app-signup.png" alt="App" /> </div>
                <div class="col-md-7">
                    <div class="hero-content">
                        <h1 class="wow fadeInUp" data-wow-delay="0.1s">Welcome to Aplus Store!</h1>
                        <p class="wow fadeInUp" data-wow-delay="0.2s"> Kosta Aplus Store 에 오신것을 환영합니다! </p>
                        <div class="sub-form wow fadeInUp" data-wow-delay="0.3s">
                            <form class="subscribe-form wow zoomIn" action="php/subscribe.php" method="post" name="subscribeform" id="subscribeform">
                                <input class="mail" type="email" name="email" placeholder="Join the wait list" autocomplete="off" id="subemail">
                                <input class="submit-button" type="submit" value="Subscribe" name="send" id="subsubmit">
                            </form>
                            <!-- subscribe message -->
                            <div id="mesaj"></div>
                            <!-- subscribe message -->
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Client Section -->
        <div class="client-section">
            <div class="container text-center">
                <div class="clients owl-carousel owl-theme">
                    <div class="single"> <img src="images/client1.png" alt="Image" /> </div>
                    <div class="single"> <img src="images/client2.png" alt="Image" /> </div>
                    <div class="single"> <img src="images/client3.png" alt="Image" /> </div>
                    <div class="single"> <img src="images/client1.png" alt="Image" /> </div>
                    <div class="single"> <img src="images/client2.png" alt="Image" /> </div>
                    <div class="single"> <img src="images/client3.png" alt="Image" /> </div>
                </div>
            </div>
        </div>
        <div class="app-features text-center" id="features">
            <div class="container">
                <h1 class="wow fadeInDown" data-wow-delay="0.1s">Features & Overviews</h1>
                <p class="wow fadeInDown" data-wow-delay="0.2s"> Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est,<br class="hidden-xs">
                    convallis nec purus vitae, iaculis posuere sapien. </p>
                <div class="col-md-4 features-left">
                    <div class="col-md-12 wow fadeInDown" data-wow-delay="0.2s">
                        <div class="icon"> <i class="ion-ios-analytics-outline"></i> </div>
                        <div class="feature-single">
                            <h1>Lorem Ipsum</h1>
                            <p> Some lorem contetnt to fill the gap and make it look clean and organized. </p>
                        </div>
                    </div>
                    <div class="col-md-12 wow fadeInDown" data-wow-delay="0.3s">
                        <div class="icon"> <i class="ion-ios-briefcase-outline"></i> </div>
                        <div class="feature-single">
                            <h1>Lorem Ipsum</h1>
                            <p> Some lorem contetnt to fill the gap and make it look clean and organized. </p>
                        </div>
                    </div>
                    <div class="col-md-12 wow fadeInDown" data-wow-delay="0.4s">
                        <div class="icon"> <i class="ion-ios-chatboxes-outline"></i> </div>
                        <div class="feature-single">
                            <h1>Lorem Ipsum</h1>
                            <p> Some lorem contetnt to fill the gap and make it look clean and organized. </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 wow fadeInDown" data-wow-delay="0.5s"> <img class="img-responsive" src="images/iPhone-app.png" alt="App" /> </div>
                <div class="col-md-4 features-left">
                    <div class="col-md-12 wow fadeInDown" data-wow-delay="0.6s">
                        <div class="icon"> <i class="ion-ios-cloud-download-outline"></i> </div>
                        <div class="feature-single">
                            <h1>Lorem Ipsum</h1>
                            <p> Some lorem contetnt to fill the gap and make it look clean and organized. </p>
                        </div>
                    </div>
                    <div class="col-md-12 wow fadeInDown" data-wow-delay="0.7s">
                        <div class="icon"> <i class="ion-ios-copy-outline"></i> </div>
                        <div class="feature-single">
                            <h1>Lorem Ipsum</h1>
                            <p> Some lorem contetnt to fill the gap and make it look clean and organized. </p>
                        </div>
                    </div>
                    <div class="col-md-12 wow fadeInDown" data-wow-delay="0.8s">
                        <div class="icon"> <i class="ion-ios-game-controller-b-outline"></i> </div>
                        <div class="feature-single">
                            <h1>Lorem Ipsum</h1>
                            <p> Some lorem contetnt to fill the gap and make it look clean and organized. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="split-features">
            <div class="col-md-6 nopadding">
                <div class="split-image"> <img class="img-responsive wow fadeIn" src="images/app_image.png" alt="Image" /> </div>
            </div>
            <div class="col-md-6 nopadding">
                <div class="split-content">
                    <h1 class="wow fadeInUp">Designed for effective product landing page</h1>
                    <p class="wow fadeInUp"> Pellentesque eget dolor gravida, tempus purus ac, ultricies mauris. Etiam est nisl, molestie sed egestas bibendum, varius eu diam. Suspendisse est metus, ultrices sit amet dolor in, rhoncus malesuada mi.</p>
                    <ul class="wow fadeInUp">
                        <li>Nulla ornare purus non consequat ultricies.</li>
                        <li>Etiam est nisl, molestie sed egestas bibendum</li>
                        <li>Aliquam vel euismod elit, sed suscipit est.</li>
                        <li>Curabitur egestas justo neque viverra vel. </li>
                    </ul>
                </div>
            </div>
        </div>


        <div class="split-features2">

            <div class="col-md-6 nopadding">
                <div class="split-content second">
                    <h1 class="wow fadeInUp">The best way to show your product to the world</h1>
                    <p class="wow fadeInUp"> Pellentesque eget dolor gravida, tempus purus ac, ultricies mauris. Etiam est nisl, molestie sed egestas bibendum, varius eu diam. Suspendisse est metus, ultrices sit amet dolor in, rhoncus malesuada mi.</p>
                    <ul class="wow fadeInUp">
                        <li>Nulla ornare purus non consequat ultricies.</li>
                        <li>Etiam est nisl, molestie sed egestas bibendum</li>
                        <li>Aliquam vel euismod elit, sed suscipit est.</li>
                        <li>Curabitur egestas justo neque viverra vel. </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-6 nopadding">
                <div class="split-image"> <img class="img-responsive wow fadeIn" src="images/app_image2.png" alt="Image" /> </div>
            </div>
        </div>



        <div class="pitch text-center">
            <div class="container">
                <div class="pitch-intro">
                    <h1 class="wow fadeInDown" data-wow-delay="0.2s">More Awesome Features</h1>
                    <p class="wow fadeInDown" data-wow-delay="0.2s"> Pellentesque eget dolor gravida, tempus purus ac, ultricies mauris. Etiam est nisl, molestie sed egestas bibendum, varius eu diam. Suspendisse est metus, ultrices sit amet dolor in, rhoncus malesuada mi.</p>
                </div>
                <div class="col-md-12">
                    <div class="col-md-4 wow fadeInDown" data-wow-delay="0.2s">
                        <div class="pitch-icon"> <i class="ion-ios-checkmark-outline"></i> </div>
                        <div class="pitch-content">
                            <h1>Great Options</h1>
                            <p> Aliquam vel euismod elit, sed suscipit est. Sed tincidunt venenatis ligula ac luctus. Fusce egestas volutpat mi sed pellentesque. </p>
                        </div>
                    </div>
                    <div class="col-md-4 wow fadeInDown" data-wow-delay="0.2s">
                        <div class="pitch-icon"> <i class="ion-ios-mic-outline"></i> </div>
                        <div class="pitch-content">
                            <h1>Voice Callings</h1>
                            <p> Aliquam vel euismod elit, sed suscipit est. Sed tincidunt venenatis ligula ac luctus. Fusce egestas volutpat mi sed pellentesque. </p>
                        </div>
                    </div>
                    <div class="col-md-4 wow fadeInDown" data-wow-delay="0.2s">
                        <div class="pitch-icon"> <i class="ion-ios-folder-outline"></i> </div>
                        <div class="pitch-content">
                            <h1>Sharing Files</h1>
                            <p> Aliquam vel euismod elit, sed suscipit est. Sed tincidunt venenatis ligula ac luctus. Fusce egestas volutpat mi sed pellentesque.  </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="feature-sub">
            <div class="container">
                <div class="sub-inner">
                    <h1 class="wow fadeInUp">Creative Landing App For Your Easy Life! Simple Reliable & Understandable for your customers </h1>
                    <a href="#" class="btn btn-action wow fadeInUp">Buy now</a> </div>
            </div>
        </div>
        <div id="review-section" class="review-section">
            <div class="container">
                <div class="col-md-10 col-md-offset-1">
                    <div class="reviews owl-carousel owl-theme">
                        <div class="review-single"><img class="img-circle" src="images/customer1.png" alt="Client Testimonoal" />
                            <div class="review-text wow fadeInUp" data-wow-delay="0.2s">
                                <p>Morbi eget dictum enim. Praesent sed quam sit amet lorem tempor rhoncus. <br>In hac habitasse platea dictumst. Vivamus in accumsan ex</p>
                                <h3>Johnathan Doe</h3>
                                <h3>Marketing Head Matrix media</h3>
                            </div>
                        </div>
                        <div class="review-single"><img class="img-circle" src="images/customer2.png" alt="Client Testimonoal" />
                            <div class="review-text">
                                <p>Morbi eget dictum enim. Praesent sed quam sit amet lorem tempor rhoncus. <br>In hac habitasse platea dictumst. Vivamus in accumsan ex</p>
                                <h3>Oidila Matik</h3>
                                <h3>President Lexo Inc</h3>
                            </div>
                        </div>
                        <div class="review-single"><img class="img-circle" src="images/customer3.png" alt="Client Testimonoal" />
                            <div class="review-text">
                                <p>Morbi eget dictum enim. Praesent sed quam sit amet lorem tempor rhoncus. <br>In hac habitasse platea dictumst. Vivamus in accumsan ex</p>
                                <h3>- Alex Dattilo</h3>
                                <h3>CEO Optima Inc</h3>
                            </div>
                        </div>
                        <div class="review-single"><img class="img-circle" src="images/customer4.png" alt="Client Testimonoal" />
                            <div class="review-text">
                                <p>Morbi eget dictum enim. Praesent sed quam sit amet lorem tempor rhoncus. <br>In hac habitasse platea dictumst. Vivamus in accumsan ex</p>
                                <h3>- Robert Hammer</h3>
                                <h3>design head Omega Corp</h3>
                            </div>
                        </div>
                        <div class="review-single"><img class="img-circle" src="images/customer5.png" alt="Client Testimonoal" />
                            <div class="review-text">
                                <p>Morbi eget dictum enim. Praesent sed quam sit amet lorem tempor rhoncus. <br>In hac habitasse platea dictumst. Vivamus in accumsan ex</p>
                                <h3>- Rita Valentine</h3>
                                <h3>CEO Behena digital</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="pricing" class="pricing-section text-center">
            <div class="container">
                <div class="col-md-12 col-sm-12 nopadding">
                    <div class="pricing-intro">
                        <h1 class="wow fadeInUp" data-wow-delay="0s">Easy Pricing Plans</h1>
                        <p class="wow fadeInUp" data-wow-delay="0.2s"> Lorem ipsum dolor sit. Incidunt laborum beatae earum nihil odio consequatur officiis <br class="hidden-xs">tempore consequuntur officia ducimus unde doloribus quod unt repell </p>
                    </div>
                    <div class="col-sm-4">
                        <div class="table-left wow fadeInUp" data-wow-delay="0.4s">
                            <div class="icon"> <i class="ion-ios-paperplane-outline"></i> </div>
                            <div class="pricing-details">
                                <h2>Starter Plan</h2>
                                <span>Free</span>
                                <ul>
                                    <li>Consectetur adipiscing</li>
                                    <li>Nunc luctus nulla et tellus</li>
                                    <li>Suspendisse quis metus</li>
                                    <li>Vestibul varius fermentum erat</li>
                                </ul>
                                <button class="btn btn-primary btn-action btn-fill">Get Plan</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="table-right table-center wow fadeInUp" data-wow-delay="0.6s">
                            <div class="icon"> <i class="ion-ios-analytics-outline"></i> </div>
                            <div class="pricing-details">
                                <h2>Popular Plan</h2>
                                <span>$3.99</span>

                                <ul>
                                    <li>Consectetur adipiscing</li>
                                    <li>Nunc luctus nulla et tellus</li>
                                    <li>Suspendisse quis metus</li>
                                    <li>Vestibul varius fermentum erat</li>
                                </ul>
                                <button class="btn btn-primary btn-action btn-fill">Buy Now</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="table-right wow fadeInUp" data-wow-delay="0.6s">
                            <div class="icon"> <i class="ion-ios-color-wand-outline"></i> </div>
                            <div class="pricing-details">
                                <h2>Premium Plan</h2>
                                <span>$9.50</span>
                                <ul>
                                    <li>Consectetur adipiscing</li>
                                    <li>Nunc luctus nulla et tellus</li>
                                    <li>Suspendisse quis metus</li>
                                    <li>Vestibul varius fermentum erat</li>
                                </ul>
                                <button class="btn btn-primary btn-action btn-fill">Buy Now</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Subscribe Form -->
        <div class="cta-sub no-color">
            <div class="container">
                <div class="cta-inner">
                    <h1 class="wow fadeInUp" data-wow-delay="0s">Sign Up to Our Newsletter and get exciting offers</h1>
                    <p class="wow fadeInUp" data-wow-delay="0.2s"> Enter your email address we promise, never disclose<br class="hidden-xs">
                        or sell your email address. </p>
                    <div class="form wow fadeInUp" data-wow-delay="0.3s">
                        <form class="subscribe-form center-form wow zoomIn" action="php/subscribe.php" method="post" name="subscribeform" id="subscribeform">
                            <input class="mail" type="email" name="email" placeholder="Join the wait list" autocomplete="off" id="subemail">
                            <input class="submit-button" type="submit" value="Subscribe" name="send" id="subsubmit">
                        </form>
                        <!-- subscribe message -->
                        <div id="mesaj"></div>
                        <!-- subscribe message -->
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer Section -->
        <jsp:include page="common/footer.jsp"/>
    </div>

    <!-- Scroll To Top -->

    <a id="back-top" class="back-to-top page-scroll" href="#main"> <i class="ion-ios-arrow-thin-up"></i> </a>

    <!-- Scroll To Top Ends-->

</div>
<!-- Main Section -->
</div>
<!— Wrapper—>

<!— Jquery and Js Plugins —>
<script type="text/javascript" src="js/jquery-2.1.1.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<script type="text/javascript" src="js/plugins.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script src="js/jquery.subscribe.js"></script>
</body>
</html>
