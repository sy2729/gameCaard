
<tutorialCharacter>
  <section class="character">
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
        name: "XXX",
        url: "./img/character1.jpeg",
        intro: "lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem"
      },
      {
        name: "YYY",
        url: "./img/character2.jpeg",
        intro: "lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem"
      },
      {
        name: "ZZZ",
        url: "./img/character3.jpeg",
        intro: "lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem"

      },
      {
        name: "BBB",
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

    .character .subtitle {
      text-align: center;
      padding: 60px 0 10px;
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
