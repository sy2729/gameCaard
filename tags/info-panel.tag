
<info-panel>
  <div class="panel-wrap">
    <info-piece each = {i in info} title = {i} class="info-piece"></info-piece>
  </div>

  <div class="banner"></div>

  
  <script>
    
    this.info = [
      {
        level: "beginner",
        src: "./img/card1.png"
      },
      {
        level: "Expert",
        src: "./img/card2.png"
      },  
      {
        level: "Expert",
        src: "./img/card3.png"
      },  
      {
        level: "Master",
        src: "./img/card4.png"
      }
    ]



  </script>

  <style>
    .panel-wrap {
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
    }

    .info-piece {
      min-width: 300px;
      /* background: #aaa; */
      text-align: center;
    }

  </style>
</info-panel>
