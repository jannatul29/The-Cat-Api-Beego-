<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <title>beego</title>
    <style>
        #nav {
          padding: 10px;
        }
        #nav a {
          font-weight: bold;
          color: #2c3e50;
        }
        #nav a.router-link-exact-active {
          color: #42b983;
        }
        
        a {
        color: #5c79b8;
      }
      
      a:hover {
        color: #80c792;
        text-decoration: none;
      }
      
      .featured-services {
        padding: 20px 0;
      }
      .featured-services .icon-box {
        padding: 20px;
      }
      .featured-services .icon-box-bg {
        background-image: linear-gradient(0deg, #222222 0%, #2f2f2f 50%, #222222 100%);
      }
      .featured-services .icon {
        margin-bottom: 15px;
      }
      .featured-services .icon i {
        color: #5cb874;
        font-size: 42px;
      }
      .featured-services .title {
        font-weight: 700;
        margin-bottom: 15px;
        font-size: 18px;
      }
      .featured-services .title a {
        color: #ffffff;
        transition: 0.3s;
      }
      .featured-services .icon-box:hover .title a {
        color: #5cb874;
      }
      .featured-services .description {
        line-height: 24px;
        font-size: 14px;
      }
      .featured-services .description a {
        color: #ffffff;
      }
      .featured-services .icon-box:hover .description a {
        color: #5cb874;
      }
      .featured-services .descrip {
        line-height: 24px;
        font-size: 14px;
      }
      .featured-services .descrip a {
        color: #5cb874;
      }
      .featured-services .icon-box:hover .descrip a {
        color: #5cb874;
      }
      #p1 {
        font-size: 30px;
        font-weight: bold;
      }
      #p2 {
        font-size: 20px;
        font-weight: bold;
      }
      .responsive {
        max-width: 100%;
        height: auto;
        }
      @media all and (max-width: 200px){
        select {
         width: 100%; max-width: 100%;
        }
      }
      
    </style>
  </head>
    <body>
      <nav class="container-fluid navbar navbar-expand-lg navbar-light " id="nav" style="background-color: rgb(204, 58, 14)">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
             <div class="navbar-nav ms-auto">
                    <li herf="#" class="nav-item nav-link" style="color:white ;">PRICING</li>
                    <li href="#" class="nav-item nav-link" style="color:white ;">ABOUT</li>
                    <li href="#" class="nav-link" style="color:white ;">DOCUMENTTATION</li>
                </div>
            </div>
      </nav>
      <section id="featured-services" class="featured-services section-bg">


      
      <div class="container">
<div class="row no-gutters">
    <div class="col-lg-7 col-md-6">
        <br>
        <div class="row no-gutters">
            <div class="col-lg-1 col-md-6">
                <div class="icon-box">
                </div>
             </div>

            <div class="col-lg-11 col-md-6">
              <div class="icon-box" style="text-align: left">
                <h1><span class="fw-bold">The Cat API -</span> Cats as a Service.</h1>
                <br><br>
                <h5><span class="fw-bold">Because everyday is a Caturday.</span></h5>
                <br><br>
                <p>A public service API all about Cats, free to use when making your fancy new App, Website or Service. <a href="#pricing" style="text-decoration: underline;">Get your license now.</a></p>
                <br>
                <img src="https://thecatapi.com/img/react.8d859602.png" class="responsive" width="100" height="100">
                <img src="https://thecatapi.com/img/jquery.b873e649.png" class="responsive" width="100" height="100">
                <img src="https://thecatapi.com/img/vue.82b9c7a5.png" class="responsive" width="100" height="100">
                <img src="https://thecatapi.com/img/node.3c715421.png" class="responsive" width="100" height="100">
                <img src="https://thecatapi.com/img/angular.2345a5c4.png" class="responsive" width="100" height="100">
              </div>
           </div>
        </div>
        <br>
      <br>
    </div>
    <div class="col-lg-5 col-md-6">
        <div class="row no-gutters">
            <div class="col-lg-12 col-md-6">
                <div class="icon-box">
                    <br>
                    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: rgb(0, 0, 0)">
                        <div class="container-fluid" >
                          <div class="collapse navbar-collapse" id="navbarScroll">
                            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                              <li class="nav-item">
                                <a class="nav-link" href="#" style="color: rgb(202, 189, 189)">VOTE</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#" style="color: rgb(202, 189, 189)">BREEDS</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#" style="color: rgb(202, 189, 189)">IMAGES/SEARCH</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#" style="color: rgb(202, 189, 189)">FAVOURITES</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#" style="color: rgb(202, 189, 189)">UPLOAD</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </nav>
                      <div class="container" style="border-style: ridge;">
                          <br>
                        <div class="row no-gutters">
                            <div class="col-lg-6 col-md-6">
                                    <label>Order</label><br>
                                    <select onchange="breedc(this.value);" id="order" style="width:200px;">
                                    <option value="Rand" > Random</option>
                                    <option value="Desc">Desc</option>
                                    <option value="Asc">Asc</option>
                                    </select>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                    <label>Type</label><br>
                                    <select onchange="breedch(this.value);" id="type" style="width:200px;" style="border-bottom-style: solid; border-bottom-color: rgb(9, 67, 124);">
                                        <option value="jpg,png,gif">All</option>
                                        <option value="jpg,png">Static</option>
                                        <option value="gif">Animated</option>
                                    </select>
                            </div>
                        </div>
                        <br>
                        <div class="row no-gutters">
                            <div class="col-lg-6 col-md-6">
                                <label>Category</label><br>
                                <select onchange="breedchn(this.value);" id="category_ids" style="width:200px;">
                                    <option value="" >None</option>
                                     {{range $i,$v := .C}}
                                      <option value="{{$v.Id}}">{{$v.Name}}</option>
                                    {{end}}
                                 </select>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <label>Breed</label><br>
                                <select onchange="breedchng(this.value);"  id="breed" style="width:200px;">
                                    <option value="" >None</option>
                                    {{range $i,$v := .B}}
                                      <option value="{{$v.Id}}">{{$v.Name}}</option>
                                    {{end}}
                                </select>
                            </div>
                        </div>
                        <br>

                        <div class="row no-gutters">
                            {{range $i,$v := .F}}
                            <div class="col-lg-4 col-md-6">
                                <img src="{{$v.Url}}" alt="Girl in a jacket" width="147" height="130">
                            </div>
                            {{end}}
                        </div>
                        <br>
                        <div class="row no-gutters">
                            <div class="col-lg-8 col-md-6">
                                <label>Per Page</label><br>
                                <select onchange="page(this.value);" id="page" style="width:150px;">
                                    <option value="9">9</option>
                                    <option value="18">18</option>
                                    <option value="80" >80</option>
                                 </select>
                                 <button type="button" class="btn btn-primary">MORE</button>
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row no-gutters" id="top">
  <div class="col-lg-3 col-md-6">
    <div class="icon-box" >
      <!-- <h2 class="title1" style="color: white;">The Best Sedona Hiking Trails</h2> -->
    </div>
  </div>
  <div class="col-lg-5 col-md-6">
    <div class="icon-box" >
      <!-- <h2 class="title1" style="color: white;">The Best Sedona Hiking Trails</h2> -->
      <p style="color: rgb(255, 255, 255); background-color: rgb(204, 58, 14); text-align: center; font-style: italic;">The Cat API has delivered Billions of requests, to over 30K developers</p> 
    </div>
  </div>
  <div class="col-lg-4 col-md-6">
    <div class="icon-box" >
      <!-- <h2 class="title1" style="color: white;">The Best Sedona Hiking Trails</h2> -->
    </div>
  </div>
</div>
</section>
<section id="featured-services" class="featured-services section-bg">
<div class="row no-gutters"  style="background-color: rgb(184,184,184);" id="pricing">
    <div class="col-lg-1 col-md-6">
    </div>
    <div class="col-lg-10 col-md-6">
        <br>
        <div class="row no-gutters">
            <div class="col-lg-4 col-md-6">
                <h1>Pricing</h1>
            </div>
            <div class="col-lg-4 col-md-6">
            </div>
            <div class="col-lg-4 col-md-6">
                <p>Yearly with 20% discount</p>
            </div>
        </div>
        <br>

        <div class="row no-gutters">
            <div class="col-lg-4 col-md-6">
                <div class="card" style="text-align: center; height: 660px;">
                    <br>
                    <h4 class="card-text" style="color:black;">Free</h4>
                    <br><br>
                    <span><i class='fas fa-cloud-sun' style='font-size:24px; color:rgb(136,136,136);'></i></span>
                    <br>
                    <h3 class="card-text" style="color:black;">$0</h3>
                    <span style="color:black ;font-size:12px; font-style: italic;">No hidden costs
                    <p style="color:black ;font-size:15px; font-style: normal">Free for you to use on your non-monetized app</p>
                    <br>
                    <button type="button" class="btn btn-success">SIGNUP FOR FREE</button></span>
                    <br><br>
                    <ul style="text-align: left">
                        <li style="color:black ;font-size:15px; font-style: normal">10,000 requests / month</li>
                        <li style="color:black ;font-size:15px; font-style: normal">Free Code Samples</li>
                        <li style="color:black ;font-size:15px; font-style: normal"> <a href="https://forum.thatapiguy.com/" style="text-decoration: underline;">Community forums</a></li>
                        <li style="color:black ;font-size:15px; font-style: normal">SSL Encryption</li>
                    </ul> 
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="card" style="text-align: center; height: 660px;">
                    <br>
                    <h4 class="card-text" style="color:black;">Paid</h4>
                    <br><br>
                    <span><i class='fas fa-cloud-sun' style='font-size:24px; color:rgb(136,136,136);'></i></span>
                    <br>
                    <h3 class="card-text" style="color:black;">$10</h3>
                    <span style="color:black ;font-size:12px; font-style: italic;">per month
                    <p style="color:black ;font-size:15px; font-style: normal">Required if you charge for access to the application using the Cat API</p>
                    <br>
                    <button type="button" class="btn btn-primary">GET STARTED</button></span>
                    <br><br>
                    <ul style="text-align: left">
                        <li style="color:black ;font-size:15px; font-style: normal">10,000 requests / month</li>
                        <li style="color:black ;font-size:15px; font-style: normal">Free Code Samples</li>
                        <li style="color:black ;font-size:15px; font-style: normal"><a href="https://forum.thatapiguy.com/" style="text-decoration: underline;">Community forums</a></li>
                        <li style="color:black ;font-size:15px; font-style: normal">SSL Encryption</li>
                    </ul> 
                    <br>
                    <ul style="text-align: left" class="fw-bold" style="color:black ;font-size:16px; font-style: normal">
                        <li style="color:black ;font-size:15px; font-style: normal">Curated Facts / Jokes / Quotes</li>
                        <li style="color:black ;font-size:15px; font-style: normal">Analytics</li>
                        <li style="color:black ;font-size:15px; font-style: normal">Higher resolution Pictures</li>
                        <li style="color:black ;font-size:15px; font-style: normal">Premium Images</li>
                        <li style="color:black ;font-size:15px; font-style: normal">Video</li>
                        <li style="color:black ;font-size:15px; font-style: normal">Realtime web hooks</li>
                    </ul> 
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="card" style="text-align: center; height: 660px;">
                    <br>
                    <h4 class="card-text" style="color:black;">Enterprise</h4>
                    <br><br>
                    <span><i class='fas fa-cloud-sun' style='font-size:24px; color:rgb(136,136,136);'></i></span>
                    <br>
                    <h3 class="card-text" style="color:black;">Volume Pricing</h3>
                    <span>Bespoke pricing tailored to your scaling needs
                    <br><br><br>
                    <button type="button" class="btn btn-warning">CONTACT US</button></span>
                    <br><br>
                    <ul style="text-align: left">
                        <li>Unlimited requests / month</li>
                        <li>Free Code Samples</li>
                        <li><a href="https://forum.thatapiguy.com/" style="text-decoration: underline;">Community forums</a></li>
                        <li>SSL Encryption</li>
                    </ul> 
                    <br>
                    <ul style="text-align: left" class="fw-bold">
                        <li>Curated Facts / Jokes / Quotes</li>
                        <li>Analytics</li>
                        <li>Higher resolution Pictures</li>
                        <li>Premium Images</li>
                        <li>Video</li>
                        <li>Realtime web hooks</li>
                    </ul>
                </div>
            </div>
        </div>
        <br>
    </div>
    <div class="col-lg-1 col-md-6">
    </div>
</div>
<div class="row no-gutters"  style="background-color: rgb(0, 0, 0);" id="pricing">
    <div class="col-lg-1 col-md-6">
    </div>
    <div class="col-lg-4 col-md-6">
        <div class="row no-gutters" style="color: rgb(255, 255, 255);">
            <div class="col-lg-6 col-md-6">
                <br>
                <p>About Us</p>
                <p>Terms & Conditions</p>
                <p>Privacy Policy</p>
                <br>
            </div>
            <div class="col-lg-6 col-md-6">
                <br>
                <p>Forum</p>
                <p>Github</p>
            </div>
        </div>
    </div>
    <div class="col-lg-7 col-md-6">
    </div>
</div>
</section>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="/static/js/reload.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
    var category_ids = ''
    var breed = ''
    function breedchn(value){
      var category_ids = value
      window.location='http://localhost:8080/cat?category_ids=' + category_ids;
    }
    var breed = document.getElementById('breed');
    breed.onchange = function(){
    //function breedchng(value){
      var value = breed.options[breed.selectedIndex].value;
      document.getElementById('breed').value = value;
      breed = value
      window.location='http://localhost:8080/cat?breed_id=' + breed;
    }
    function breedch(value){
      mime = value
      window.location='http://localhost:8080/cat?mime_types=' + mime;
    }
    function breedc(value){
      order = value
      window.location='http://localhost:8080/cat?order=' + order;
    }
    function page(value){
      pg = value
      window.location='http://localhost:8080/cat?page=' + pg;
    }
    </script>
    </body>
</html>

