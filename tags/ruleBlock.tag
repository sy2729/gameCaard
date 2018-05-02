
<ruleBlock>
  <section class="tobeanimate ruleBlock-wrap">
    <p class="rule"> <span>{ this.opts.data.rule }</span></p>
    <img src={ this.opts.data.demo } alt="demo-picture" class="demo">
  </section>
  <script>
    var that = this;
    this.on('mount', function() {
      console.log(that.opts.data.rule)
    })
  </script>

  <style>
    .ruleBlock-wrap {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-around;
      margin-top: 40px;
      margin-bottom: 10px;
    }
    
    .ruleBlock-wrap .rule{
      flex: 1 1 auto;
      max-width: 400px;
      display: flex;
      justify-content: center;
      align-items: center;
    }
    .ruleBlock-wrap .demo{
      max-height: 400px;
      max-width: 400px;
      vertical-align: middle;
    }
    
    .ruleBlock-wrap .rule span {
      font-size: 1.2em;
      font-weight: 100;
      line-height: 2em;
    }
  </style>
</ruleBlock>
