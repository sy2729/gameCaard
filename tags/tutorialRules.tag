
<tutorialRules>
  <section class="rules-wrap tobeanimate">
    <h1 class="subtitle">Move With programming thinking</h1>
    <div class="demo">
      <div class="chessBlocks">
        <div each={i in chessBlock} class="blocks"></div>
        <div class="blocks chess"></div>
      </div>
    </div>
  </section>
  <script>
    this.chessBlock = [];
    for(let i = 0; i < 64; i++) {
      this.chessBlock.push('haha');
    }

    this.on('mount', function() {
      // console.log(document.querySelectorAll('.blocks')[35]);
      document.querySelectorAll('.blocks')[35].textContent = 'activate';
    })


  </script>

  <style>
    .rules-wrap {
      min-height: 500px;
    }
    
    .rules-wrap .demo .chessBlocks {
      width: 400px;
      display: flex;
      flex-wrap: wrap;
      box-shadow: 1px 1px 5px 0 rgba(0, 0, 0, 0.3);
      position: relative;
      margin: 0 auto;
    }
    
    .rules-wrap .demo .chessBlocks .blocks{
      width: 50px;
      height: 50px;
      border: 1px solid #222;
      transition: all .4s;
      box-sizing: border-box;
    }
    .rules-wrap .demo .chessBlocks .chess{
      position: absolute;
      bottom: 0;
      right: 200px;
      background: #FAD063;
      border: transparent;
      border-radius: 50%;
      animation: chessMove 5s steps(1, end) infinite;
    }

    @keyframes chessMove {
      0% {
        bottom: 0;
        right: 200px;
      }
      20% {
        bottom: 50px;
        right: 200px;
      }
      40% {
        bottom: 100px;
        right: 200px;
      }
      60% {
        bottom: 150px;
        right: 200px;
        background: linear-gradient(to right top, #7d5182, #bc5e84, #ec7774, #ffa05c, #fad452);
      }
      80% {
        bottom: 150px;
        right: 150px;
      }
      100% {
        bottom: 150px;
        right: 100px;
      }
    }
    
    .rules-wrap .demo .chessBlocks .blocks:hover {
      background: #B47A92;
    }
    .rules-wrap .demo .chessBlocks .blocks:not(:nth-child(8n)){
      border-right: none;
    }
    .rules-wrap .demo .chessBlocks .blocks:nth-child(n+1):nth-child(-n+56){
      border-bottom: none;
    }
    .rules-wrap .demo .chessBlocks .blocks:nth-child(36){
      background: #7B5380;
      border: none;
      text-align: center;
      color: #fff;
      font-size: 13px;
      line-height: 50px;
    }
    
  </style>
</tutorialRules>
