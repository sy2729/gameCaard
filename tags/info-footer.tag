
<info-footer>
  <footer>
    <div class="footer-left">
      <ul>
        <li><a href="">2018 Advanced Game Design</a></li>
        <li><a href="">Shuai & Melon & Zhijing</a></li>
        <li><a href="">Contact</a></li>
      </ul>
      <p class="copyright">Copyright 2018 Code Battle | All Rights Reserved</p>
    </div>
    <div class="footer-right">
      <h2>Keep in Touch</h2>
      <p>Sign up for our monthly newsletter to get the latest news and developments from Code Battle delivered right into your box</p>
      <form action="" class="email">
        <input type="text" placeholder="Your Email"> <i class="ion-paper-airplane send"></i>
      </form>
    </div>
  </footer>
  <script>
    message() {
      return 'there'
    }
  </script>

  <style>
      footer {
        display: flex;
        /* justify-content: center; */
        flex-wrap: wrap;
      }

      footer .footer-left, footer .footer-right{
        color: #fff;
        flex: 1;
        padding: 70px;
        box-sizing: border-box;
        min-width: 300px;
        -webkit-flex: 1 1 300px;
      }

      footer .footer-left {
        background: #b67993;
      }
      footer .footer-left a {
        color: inherit;
      }
      footer .footer-left .copyright{
        font-size: 10px;
      }
      footer .footer-right {
        background: rgb(123,83,128);
      }
      footer .footer-right .email {
        padding: 20px 0 0;
      }
      footer .footer-right .email input::placeholder {
        color: #fff;
        text-indent: 5px;
        transition: all .5s;
      }
      footer .footer-right .email input {
        border: 0;
        height: 30px;
        width: 150px;
        border-radius: 30px;
        transition: all .5s;
        color: #fff;
        background: #C16B96;
        font-size: 18px;
        padding: 3px 2px;
      }
      footer .footer-right .email .send {
        margin-left: -30px;
        font-size: 1.2em;
        cursor: pointer;
      }

      footer .footer-right .email input:focus {
        width: 250px;
        padding-left: 20px;
      }
      footer .footer-right .email input:focus::placeholder {
        text-indent: -100%;
      }
      

  </style>
</info-footer>
