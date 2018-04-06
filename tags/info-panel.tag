
<info-panel>
  <div class="panel-wrap">
    <info-piece each = {i in info} title = {i} class="info-piece"></info-piece>
  </div>

  
  <script>
    
    this.info = [
      {
        level: "beginner",
        src: "./img/card1.png"
      },
      {
        level: "Expert",
        src: "./img/card1.png"
      },  
      {
        level: "Expert",
        src: "./img/card1.png"
      },  
      {
        level: "Master",
        src: "./img/card1.png"
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
      width: 33.3%;
      min-width: 300px;
      /* background: #aaa; */
      text-align: center;
    }

  </style>
</info-panel>
