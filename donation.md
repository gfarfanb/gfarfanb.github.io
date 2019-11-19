---
layout: page
title: Consider making a donation!
---

<div class="container">
  <div class="donation-button">
    <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
        <input type="hidden" name="cmd" value="_s-xclick" />
        <input type="hidden" name="hosted_button_id" value="{{ site.data.settings.donate-paypal }}" />
        <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif" border="0" name="submit" title="PayPal - The safer, easier way to pay online!" alt="Donate with PayPal button" />
        <img alt="" border="0" src="https://www.paypal.com/en_MX/i/scr/pixel.gif" width="1" height="1" />
    </form>
  </div>
  <div class="donation-button">
    <a href="https://blockchain.info/payment_request?address={{ site.data.settings.donate-blockchain }}" target="_blank">
      <img src="https://blockchain.info/Resources/buttons/donate_64.png" alt="Bitcoin donation"/>
    </a>
  </div>
</div>
