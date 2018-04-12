
<tutorialCharacter>
  <section class="character tobeanimate">
    <h1 class="subtitle">Activate Your Roles</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste explicabo aperiam atque voluptate quam recusandae facere commodi obcaecati impedit cum.</p>
    <div class="role-with-display">
      <div class="roleWrap">
        <div class="role" each={i in characters} style={"background-image:" + "url('" + i.url + "')"}
              onclick={choose}></div>
      </div>
      <div class="role-display" ref="roleDisplay">
        <h2>{showItem.name}</h2>
        <p>{showItem.intro}</p>
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
        intro: "lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem"
      },
      {
        name: "WARRIOR",
        url: "./img/character2.jpeg",
        intro: "lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem"
      },
      {
        name: "WIZZARD",
        url: "./img/character3.jpeg",
        intro: "lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem"

      },
      {
        name: "ARCHER",
        url: "./img/character4.jpeg",
        intro: "lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem"
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
