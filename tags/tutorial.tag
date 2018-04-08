
<tutorial>
  <section class="head">
    <div class="head-nav clearfix">
      <a href="#home"><div class="logo">LOGO</div></a>
      <ul class="nav">
        <li>
          <a href="#tutorial">Tutorial</a>
        </li>
        <li>
          <a href="">Pricing</a>
        </li>
        <li>
          <a href="">Blog</a>
        </li>
      </ul>
    </div>
    <div class="head-content">
      <figure class="head-card">
        <img src="./img/card1.png" alt="card1">
      </figure>
      <div class="intro">
        
      </div>
    </div>
  </section>
  <script>
    message() {
      return 'there'
    }
  </script>

  <style>
    .head {
      background-image: linear-gradient(to right top, #7d5182, #bc5e84, #ec7774, #ffa05c, #fad452);
      /* height: 600px; */
      width: 100%;
      display: flex;
      flex-direction: column;
    }

    .clearfix:after {
      content: "";
      display: table;
      clear: both;
    }

    .head .head-nav {
      padding: 30px;
    }
    .head .head-nav .logo {
      float: left;
      
    }
    .head .head-nav .nav{
      float: right;
      margin-right: 5%;
      font-weight: 100;
    }
    .head .head-nav .nav li{
      display: inline-block;
      margin-left: 40px;
      color: #FFFEFD;
      font-size: 1.2em;
      cursor: pointer;
    }
    .head .head-nav .nav li a{
      color: inherit;
    }


    .head .head-content {
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
    }

    .head > .head-content > .head-card img {
      width: auto;
      height: 560px;
      margin: 0 auto;
    }

    .head > .head-content > .intro {
      display: flex;
      flex-direction: column;
      justify-content: center;
      max-width: 40%;
      padding: 20px 0;
    }
    
    .head > .head-content > .intro h1 {
      color: #FFFEFD;
      font-size: 3em;
      font-weight: 300;
      white-space: nowrap;
    }

    .head > .head-content > .intro p {
      color: #FFFEFD;
      font-size: 1.4em;
      line-height: 1.6em;
      margin: 15px 0;
      font-weight: 100;
    }
  </style>
</tutorial>
