<footer>
  <div class="container">
    <div class="row">
      <div class="social">
       <hr class="span12 hidden-xs" style="margin-left:0px;margin-top: 36px; border: 1px solid #e0e0e0;position:absolute;  margin-bottom:10px">
       <div class="clearfix">
      <a href="https://twitter.com/mishruclothing" class="link twitter" target="_new"><span class="fa fa-twitter"></span></a>        
      <a href="http://facebook.com/mishruclothing" class="link facebook" target="_new"><span class="fa fa-facebook-square"></span></a>
      <a href="https://instagram.com/mishruclothing" class="link instagram" target="_new"><span class="fa fa-instagram"></span></a>
      <a href="https://pinterest.com/mishruclothing" class="link pinterest" target="_new"><span class="fa fa-pinterest"></span></a>
      <a href="https://tumblr.com/mishruclothing" class="link tumblr" target="_new"><span class="fa fa-tumblr"></span></a>               
      </div>
      </div>
      <?php if ($informations) { ?>
      <div class="col-sm-12 footerMenu">
        <ul class="list-footer">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
      <?php } ?>
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
      </div>
    </div>
    <hr>
    <p style="text-align: center;"><?php echo $powered; ?></p>
  </div>
</footer>

</body></html>