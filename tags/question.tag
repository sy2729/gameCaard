<question>
  <section class="head">
    <div class="head-nav clearfix">
      <div class="logo"><img src="./img/logo.png" alt=""></div>
      <ul class="nav">
        <li>
          <a href="#tutorial">Tutorial</a>
        </li>
        <li>
          <a href="#question">Questions</a>
        </li>
      </ul>
    </div>
    <div class="head-content">
      <figure class="head-card">
        <img src="./img/function-back.png" alt="card1">
      </figure>
      <div class="intro">
        <h1>Questions</h1>
        <p>All Secrets Inside the Game and About Us</p>
      </div>
    </div>
  </section>

  <div class="page-wrap p-3">
    <div class="each-question p-1" each={value, key in questionsData}>
      <p class="name">{value.name[value.name.length - 1] === "?" ? value.name : value.name + "?"}</p>
      <p class="answer">{value.answer || 'this is gonna be the answer'}</p>
    </div>
  </div>


  <script>
    
    this.questionsData = null;

    this.on('mount', ()=> {
      this.db = firebase.database();

      this.db.ref('gameCard/questions').once('value', (data)=> {
        this.questionsData = data.val();
        this.update();
      });;
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
      font-size: 1em;
      cursor: pointer;
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

  
    .each-question {
      margin: 20px;
    }
    .name {
      font-size: 2em;
    }


    @media screen and (max-width: 500px) {
      .page-wrap {
        padding: 0;
      }
      .name {
        font-size: 1.5em;
      }
    }
  </style>


</question>