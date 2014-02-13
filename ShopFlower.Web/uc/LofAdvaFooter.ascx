<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LofAdvaFooter.ascx.cs" Inherits="FlowerShop.uc.LofAdvaFooter" %>
<div id="lofadva-pos-1" class="lof-position" style="width:100%">
			<div class="lof-position-wrap">
							<div class="lofadva-block-1 lof-block" style="width:40.00%; float:left;">
					<div class="lof-block-wrap">
												<ul class="lof-items">
																					<li class="lof-module">
									<h2>Newsletters</h2>									
<!-- Block Newsletter module-->

<div id="newsletter_block_left">
	<div class="block_content">
		<form action="http://www.demo4leotheme.com/prestashop/leo_flowers/index.php" method="post">
			<div class="input-append">
				<input class="inputNew span8" id="newsletter-input" type="text" name="email" size="18" value="Your email address" />
				<input type="submit" value="Subscribe" class="button_mini btn" name="submitNewsletter" />
				<input type="hidden" name="action" value="0" />
			</div>
		</form>
	</div>
	</div>
<!-- /Block Newsletter module-->

<script type="text/javascript">
    var placeholder = "Your email address";
    $(document).ready(function () {
        $('#newsletter-input').on({
            focus: function () {
                if ($(this).val() == placeholder) {
                    $(this).val('');
                }
            },
            blur: function () {
                if ($(this).val() == '') {
                    $(this).val(placeholder);
                }
            }
        });

    });
</script>

								</li>
																			</ul>
					</div>
				</div>
							<div class="lofadva-block-2 lof-block" style="width:35.00%; float:left;">
					<div class="lof-block-wrap">
												<ul class="lof-items">
																					<li class="lof-text">
									<h2>Payment Method</h2>									<ul><li><a href="#"><img src="modules/lofadvancecustom/images/paypal-bg.png" alt="" /></a></li><li><a href="#"><img src="modules/lofadvancecustom/images/visa-bg.png" alt="" /></a></li><li><a href="#"><img src="modules/lofadvancecustom/images/payment-bg.png" alt="" /></a></li><li><a href="#"><img src="modules/lofadvancecustom/images/amex-bg.png" alt="" /></a></li></ul>
								</li>
																			</ul>
					</div>
				</div>
							<div class="lofadva-block-3 lof-block" style="width:25.00%; float:left;">
					<div class="lof-block-wrap">
												<ul class="lof-items">
																					<li class="lof-module">
									<h2>Follow us on</h2>									<div id="leosocial_block">
	<!-- <h3 class="title_block">Follow us on</h3> -->
	<ul>
		<li class="facebook"><a alt="" href="#">Facebook</a></li>		<li class="twitter"><a alt="" href="#">Twitter</a></li>		<li class="gg"><a alt="" href="#">google</a></li>		<li class="linkin"><a alt="" href="#">LinkedIn</a></li>	</ul>
</div>

								</li>
																			</ul>
					</div>
				</div>
						<div style="clear:both;"></div>
			</div>
		</div>