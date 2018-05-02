
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
            <option value="3">Movement</option>
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

  <tutorialCharacter ref="wrap"></tutorialCharacter>
  <tutorialRules ></tutorialRules>
  <ruleBlock each = {i in ruleData} data = {i} ></ruleBlock>
  <!-- <tutorialFunction></tutorialFunction> -->



  <info-footer></info-footer>

  <script>
    var that = this;
    this.cards = [
      {
        img: "./img/function-back.png",
        title: "Function",
        info: "Use computational thinking to unlock different possibilities of function card combinations."
      },
      {
        img: "./img/property-back.png",
        title: "Property",
        info: "The most powerful card and only bravery deserves it."
      },
      {
        img: "./img/attack-back.png",
        title: "Attack",
        info: "Use the Attack card to tackle the enemies the game and win a new Property card."
      },
      {
        img: "./img/movement-back.png",
        title: "Movement",
        info: "The seemingly easily obtained card, which consist your every step and have the unlimited potentials."
      }  
    ]

    this.ruleData = [
      {
        rule: "1. Everyone has no identity in the beginning of the game, the start position is the each corner of the chessboard. Every player has three blood initially.",
        demo: "./img/chessboard.png"
      },
      {
        rule: "2. In the beginning of the game, every player will start with 1 attack card, 1 movement card and 1 function cards in hand. Every turn each player could draw one movement card to start, after which they could use either to use it or not (which will allow them to stay at the same place for this turn). Only after using a movement card or a function card can the player draw a new function card. (one player can have 2 movement cards at most and 5 function card at most, 2 attack cards at most, 2 property cards at most)",
        demo: "./img/rule-2.png"
      },
      {
        rule: "3. A function can be used with a movement card every turn.",
        demo: "./img/rule-3.png"
      },
      {
        rule: "4. Once the players step on different color squares, they can use certain teleport function cards to transfer to another square with the same color.",
        demo: "./img/rule-4.png"
      },
      {
        rule: "5.The basic attack card only allow players to attack one square away in their forward direction. Once the players have an identity, they can only use the identity’s attack method.",
        demo: "./img/rule-5.png"
      },
      {
        rule: "6.Players have the option to stay at the same place for the current turn but lose the chance to draw a new movement card next turn",
        demo: "./img/movement-back.png"
      },
      {
        rule: "7.Similarly, the player even has the option to discard one movement card each turn, which will disable them to perform other action in the current turn and next turn",
        demo: "./img/movement-back.png"
      },
      {
        rule: "8.Once a player being attacked, he has to go back to the initial point to restart his journey.",
        demo: "./img/rule-6.png"
      },
      {
        rule: "9.Stepping into the central red area will get the player one property cards, one player have only have two property cards at most.",
        demo: "./img/rule-7.png"
      },
      {
        rule: "10.For movement card, players can execute to the last executable one if it's not fully executable. But a functional card has to be fully executable",
        demo: "./img/rule-demo.png"
      },
    ]



    this.index = 0;
    
    
    changeLeft() {
      this.index--;
      if(this.index < 0) {
        this.index = this.cards.length-1;
      };
      this.update();
    };
    changeRight() {
      this.index++;
      if(this.index > this.cards.length-1) {
        this.index = 0;
      };
      this.update();
    };
    selectCard() {
      var select = document.querySelector('#selectCard');
      this.index = select.value - 0;
    };


    //detect scrolling
      this.on('mount', function () {
          var wrap = document.querySelectorAll('.tobeanimate');
          window.onscroll = function () {
            var scrollY = window.scrollY;
            var minIndex = 0;
            wrap.forEach(function(i,j) {
              if(Math.abs(i.offsetTop - scrollY) < Math.abs(wrap[minIndex].offsetTop - scrollY)){
                minIndex = j;
              };
            })
            wrap[minIndex].classList.add('slideIn');
          }
      })

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


    .slideIn {
    opacity: 1 !important;
}

  </style>
</tutorial>
