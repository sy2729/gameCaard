
<app>
  
  <section class="head">
    <div class="head-nav clearfix">
      <div class="logo">LOGO</div>
      <ul class="nav">
        <li><a href="">Feature</a></li>
        <li><a href="">Pricing</a></li>
        <li><a href="">Blog</a></li>
      </ul>
    </div>
    <div class="head-content">
      <figure class="head-card"><img src="./img/card1.png" alt="card1"></figure>
      <div class="intro">
        <h1>Code Battle</h1>
        <p>Learn to the play the chess like pros and play with others around the world</p>
        <button onclick={gg} class="headBtn">More</button>
      </div>
    </div>
  </section>

  <middle></middle>


  <info-panel>

  </info-panel>
  

  <info-footer>
    
  </info-footer>

  <script>
  
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

    .head > .head-content > .intro > .headBtn {
      width: 30%;
      min-width: 100px;
      height: 50px;
      background: transparent;
      border-radius: 10px;
      color: #FFFEFD;
      border: 1px solid #FFFEFD;
      cursor: pointer;
      font-size: 1.1em;
      font-weight: 100;
      transition: all .4s;
    }

    .head > .head-content > .intro > .headBtn:hover {
      color: #222;
      background: rgba(255, 255 ,255, 1);
      box-shadow: 2px 2px 7px 0 rgba(255, 255, 255, 0.4); 
      box-shadow: -2px -2px 7px 0 rgba(255, 255, 255, 0.4); 
    }
  </style>
</app>
