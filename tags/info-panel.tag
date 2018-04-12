
<info-panel>
  <div class="tobeanimate">
    <div class="panel-wrap">
      <info-piece each = {i in info} title = {i} class="info-piece"></info-piece>
    </div>
  
    <div class="banner"></div>
  </div>

  
  <script>
    
    this.info = [
      {
        level: "beginner",
        src: "./img/knight.png"
      },
      {
        level: "Expert",
        src: "./img/warrior.png"
      },  
      {
        level: "Expert",
        src: "./img/wizzard.png"
      },  
      {
        level: "Master",
        src: "./img/archer.png"
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
