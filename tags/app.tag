
<app>
  
  <home if = {page === "home"}></home>
  <tutorial if = {page === "tutorial"}></tutorial>

  <script>
    var that = this;
    this.page = "home";
    var Router = route.create();
    Router('*', function (page) {
      that.page = page;
      that.update();
      console.log(that.page)
    })

    route.start(true);

  </script>

  <style>
    
<<<<<<< HEAD
=======
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

    .head > .head-content > .intro > .headBtn {
      width: 30%;
      min-width: 200px;
      height: 50px;
      background: transparent;
      border-radius: 10px;
      color: #FFFEFD;
      border: 1px solid #FFFEFD;
      cursor: pointer;
      font-size: 1.1em;
      font-weight: 100;
      transition: all .4s;
    }

    .head > .head-content > .intro > .headBtn:hover {
      color: #222;
      background: rgba(255, 255 ,255, 1);
      box-shadow: 2px 2px 7px 0 rgba(255, 255, 255, 0.4); 
      box-shadow: -2px -2px 7px 0 rgba(255, 255, 255, 0.4); 
    }
>>>>>>> 0decb59a37c75d7793e538ebd043392f3d4bb785
  </style>
</app>
