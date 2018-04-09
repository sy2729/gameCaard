
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
  </style>
</app>
