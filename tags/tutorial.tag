
<tutorial>
  <section class="head">
    <div class="head-nav clearfix">
      <a href="#home"><div class="logo"><img src="./img/logo.png" alt=""></div></a>
      <ul class="nav">
        <li>
          <select name="SelectCard" id="selectCard" onchange={selectCard}>
            <option value="">Select Card Type</option>
            <option value="0">Function</option>
            <option value="1">Property</option>
            <option value="2">Attack</option>
          </select>
        </li>
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
        <div class="changeBtn">
          <button onclick={changeLeft}><</button>
          <button onclick={changeRight}>></button>
        </div>
        <img src={cards[this.index].img} alt={cards[this.index].img}>
      </figure>
      <div class="intro">
        <h1>{cards[this.index].title}</h1>
        <p>{cards[this.index].info}</p>
      </div>
    </div>
  </section>

  <tutorialCharacter></tutorialCharacter>
  <tutorialRules></tutorialRules>



  <info-footer></info-footer>

  <script>
    var that = this;
    this.cards = [
      {
        img: "./img/card1.png",
        title: "Function",
        info: "loremloremloremloremloremloremloremlo, remloremloremloremlo remloremlor emloremloremloremlorem"
      },
      {
        img: "./img/card2.png",
        title: "Property",
        info: "loremloremloremloremloremloremloremlo, remloremloremloremloreml oremloremloremloremlo remlorem"
      },
      {
        img: "./img/card3.png",
        title: "Attack",
        info: "loremloremloremloremloremloremloremlor, emloremloremlorem loremloremloremloremlorem loremlorem"
      } 
    ]

    this.index = 0;
    
    
    changeLeft() {
      this.index--;
      if(this.index < 0) {
        this.index = this.cards.length-1;
      };
      // console.log(this.index)
      this.update();
    };
    changeRight() {
      this.index++;
      if(this.index > 2) {
        this.index = 0;
      };
      // console.log(this.index)
      this.update();
    };
    selectCard() {
      var select = document.querySelector('#selectCard');
      this.index = select.value - 0;
    };


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
    .head .head-nav .logo img{
      width: 40px;
      height: auto;
      vertical-align: middle;
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
    .head .head-nav .nav #selectCard {
      border: 1px solid #7B5380;
      background: transparent;
      width: 200px;
      color: #FFFCE4;
      border-radius: 4px;
    }
    .head .head-nav .nav #selectCard option{
      background: transparent;
    }


    .head .head-content {
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
    }

    .head > .head-content > .head-card {
      position: relative;
    }
    .head > .head-content > .head-card img {
      width: auto;
      height: 560px;
      margin: 0 auto;
    }
    .head > .head-content > .head-card > .changeBtn {
      position: absolute;
      left: 0;
      top: 0;
      right: 0;
      bottom: 0;
      margin: auto;
    }

    .head > .head-content > .head-card > .changeBtn > button:nth-child(1), .head > .head-content > .head-card > .changeBtn > button:nth-child(2){
      position: absolute;
      top: 0;
      bottom: 0;
      margin: auto 0;
      width: 40px;
      height: 40px;
      display: block;
      border-radius: 50%;
      border: 1px solid #FAD263;
      cursor: pointer;
      font-size: 2em;
      line-height: 0px;
      background: transparent;
      color: #FAD263;
      box-shadow: 1px 1px 10px 0 rgba(0, 0, 0, 0.2);
      transition: all .4s ease-in-out;
    }

    .head > .head-content > .head-card > .changeBtn > button:nth-child(1):hover, .head > .head-content > .head-card > .changeBtn > button:nth-child(2):hover {
      background: #FAD070;
      color: #fff;
      box-shadow: 1px 1px 10px 0 #F4BE71;
    }

    .head > .head-content > .head-card > .changeBtn > button:nth-child(1) {
      left: -30px;
    }
    .head > .head-content > .head-card > .changeBtn > button:nth-child(2) {
      right: -30px;
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
