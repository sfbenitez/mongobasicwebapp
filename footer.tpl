                </div>
                <script type="text/javascript" src="js/simple-lightbox.min.js"></script>
                <script>
                        $(function(){
                                var gallery = $('.agileinfo-gallery-row a').simpleLightbox({navText:            ['&lsaquo;','&rsaquo;']});
                        });
                </script>
        </div>
        <div class="agile-footer">
                <div class="container">
                        <div class="footer-agileinfo">
                                <div class="col-md-3 col-sm-6 footer-wthree-grid">
                                        <h6><a  href="index.html">Flat Decor</a></h6>
                                </div>
                                <div class="col-md-3 col-sm-6 footer-wthree-grid">
                                        <h3>Contact Info</h3>
                                        <ul>
                                                <li>123 Broome St, 2nd Block</li>
                                                <li>NY 10002, New York</li>
                                        </ul>
                                </div>
                                <div class="col-md-3 col-sm-6 footer-wthree-grid">
                                        <h3>Archives</h3>
                                        <ul>
                                                <li><a href="#myModal" data-toggle="modal">10th Nov 2016</a></li>
                                                <li><a href="#myModal" data-toggle="modal">02nd Oct 2016</a></li>
                                        </ul>
                                </div>
                                <div class="col-md-3 col-sm-6 footer-wthree-grid w3social">
                                        <h3>Social Media</h3>
                                        <ul>
                                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                        </ul>
                                </div>
                                <div class="clearfix"> </div>
                        </div>
                </div>
        </div>
        <!-- copy rights start here -->
        <div class="copyw3-agile">
                <div class="container">
                        <p>© 2017 Flat Decor. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
                </div>
        </div>
        <!-- //copy right end here -->
        <script src="js/SmoothScroll.min.js"></script>
        <!-- Scrolling Nav JavaScript -->
    <script src="js/scrolling-nav.js"></script>
        <!-- //fixed-scroll-nav-js -->
        <!-- start-smooth-scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
                        jQuery(document).ready(function($) {
                                $(".scroll").click(function(event){
                                        event.preventDefault();

                        $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
                                });
                        });
        </script>
        </script>
        <!-- //Owl-Carousel-JavaScript -->
        <!-- smooth-scrolling-of-move-up -->
        <script type="text/javascript">
                $(document).ready(function() {
                        /*
                        var defaults = {
                                containerID: 'toTop', // fading element id
                                containerHoverID: 'toTopHover', // fading element hover id
                                scrollSpeed: 1200,
                                easingType: 'linear'
                        };
                        */

                        $().UItoTop({ easingType: 'easeOutQuart' });

                });
        </script>
        <!-- //smooth-scrolling-of-move-up -->
        <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>
</html>


