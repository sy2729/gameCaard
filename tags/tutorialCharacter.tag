
<tutorialCharacter>
  <section class="character tobeanimate">
    <h1 class="subtitle">Activate Your Roles</h1>
    <p>After player stepping on the black "activate" square, they could choose a character as their identity, which would allow them to use the character’s special attacking or moving feature later. Whoever first arrive the block have the priority to choose the characters</p>
    <div class="role-with-display">
      <div class="roleWrap">
        <div class="role" each={i in characters} style={"background-image:" + "url('" + i.url + "')"}
              onclick={choose}></div>
      </div>
      <div class="role-display" ref="roleDisplay">
        <h2>{showItem.name}</h2>
        <p>{showItem.intro}</p>
        <img src= { showItem.demo } alt={showItem.name} class="role-demo">
      </div>
    </div>      
    </div>
  </section>
  <script>
    var that = this;
    choose(e) {
      this.showItem = e.item.i;
    }

    this.characters = [
      {
        name: "KNIGHT",
        url: "./img/character1.jpeg",
        intro: "Facing forward direction, knight may attack in both diagonal direction, within one square range",
        demo: "./img/knight-demo.png"
      },
      {
        name: "WARRIOR",
        url: "./img/character2.jpeg",
        intro: "Facing forward direction, warrior may attack one square range, his left, forward and right directions",
        demo: "./img/warrior-demo.png"
      },
      {
        name: "WIZARD",
        url: "./img/character3.jpeg",
        intro: "Facing forward direction, wizard may attack two squares rangeAlso, deactivate other’s role whom wizard attacks",
        demo: "./img/wizard-demo.png"
      },
      {
        name: "ARCHER",
        url: "./img/character4.jpeg",
        intro: "Facing forward direction, archer may attack three squares range",
        demo: "./img/archer-demo.png"
      }
    ];

    this.showItem = this.characters[0];
    this.on('update', function() {
      // console.log(that.refs.roleDisplay)
      // that.refs.roleDisplay.classList.remove("animate-fade-in")
      that.refs.roleDisplay.classList.add("animate-fade-in")
    })
    this.on('updated', function() {
     var id = setTimeout(() => {
        that.refs.roleDisplay.classList.remove("animate-fade-in")
      }, 500);
    })
  </script>

  <style>
    .character {
      position: relative;
    }
    
    .character .section-loading {
      position: absolute;
      top: 0;
      bottom: 0;
      left: 0;
      right: 0;
      background: #222;
    }

    .character .role-with-display {
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
    }
    
    .character .subtitle + p {
      text-align: center;
      padding: 20px 20%;
    }

    .character .roleWrap {
      max-width: 450px;
      min-width: 300px;
      width: 60%;
      display: flex;
      height: 500px;
      box-shadow: 2px 3px 10px 0 rgba(0, 0, 0, 0.5);
      background: #4A6770;
    }
    .character .roleWrap .role{
      min-width: 50px;
      background-position: 50%;
      background-repeat: no-repeat;
      background-size: cover;
      flex: 1 1 auto;
      transition: all .4s ease-in-out;
    }
   
    .character .roleWrap .role:hover {
      flex-grow: 3;
      cursor: pointer;
    }

    .character .role-display {
      text-align: center;
      max-width:300px;
      min-width: 150px;
      padding: 50px 0;
    }
    .character .role-display.animate-fade-in {
      animation: fade-in .4s ease-in-out;
    }
    .character .role-display h1, .character .role-display p {
      margin: 5px 0;
    }
    .character .role-display .role-demo {
      margin-top: 20px;
      max-width: 200px;
      height: auto;
    }

    @keyframes fade-in {
      from{
        transform: translateY(-10px);
        opacity: 0;
      }
      to{
        transform: translateY(0);
        opacity: 1;
      }
    }

  </style>
</tutorialCharacter>
