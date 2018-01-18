<div class="company">
	<div class="company__head">
		<?php if ( has_post_thumbnail()) { ?>
		<a href="<?php the_permalink(); ?>">
		<?php the_post_thumbnail('medium', array('alt' => get_the_title(),
			'class' => "company__logo"
		)); ?>
		</a>
		<?php } else { ?>
			<a href="<?php the_permalink(); ?>"><img src="<?php bloginfo('template_url'); ?>/img/post/no_photo.png" alt="" class="company__logo"></a>
		<?php } ?>
		<div class="company__rating">
			<h6 class="company__rating-title">Рейтинг</h6>
			<a href="<?php the_permalink(); ?>"><div class="company__rating-stars">
				<?php if(function_exists('the_ratings')) { echo expand_ratings_template('%RATINGS_IMAGES%', get_the_ID()); } ?>
			</div>
			<span class="company__rating-amount"><?php if(function_exists('the_ratings')) { echo expand_ratings_template('%RATINGS_AVERAGE%', get_the_ID()); } ?></span>
			</a>
		</div>
	</div>
	<div class="company__text">
		<h3 class="company__name"><?php the_title(); ?></h3>
		<?php if ($rateNum = get_field('company_interest_rate_num', get_the_ID())) {
				$rateTerm = get_field_object('company_interest_rate_term', get_the_ID());
				$ratevalue = $rateTerm['value'];
				$ratelabel = $rateTerm['choices'][ $ratevalue ];
		} ?>
		<table class="company__table">
			<thead>
				<tr>
					<td>Беспроцентный период</td>
					<td>Максимальный лимит</td>
					<td>Процентная ставка</td>
					<td>Рассмотрение</td>
				</tr>
			</thead>
			<tbody>
				<tr>
                    <td><?php echo get_field('company_no_percent_termin', get_the_ID()); ?></td>
					<td><?php echo get_field('company_card_maxlim', get_the_ID()); ?></td>
                    <?php 
						echo '<td>';
						if ($rate_num_from = get_field('company_interest_rate_num_from', get_the_ID())) echo $rate_num_from . '%';
						if ($rate_num_to = get_field('company_interest_rate_num_to', get_the_ID())) echo ' - ' . $rate_num_to . '%';
						echo '</td>';
					?>
					<td><?php echo get_field('company_order_speed', get_the_ID()); ?></td>
				</tr>
			</tbody>
		</table>
		<a href="<?php the_permalink(); ?>" data-id="<?php echo get_the_ID(); ?>" class="company-link company__btn btn" target="_blank">Получить займ</a>
		<?php $json = json_encode(get_field('company_partner_link', get_the_ID())); 
		$json;
		?>
		<?php if( $cashouts = get_field('company_cashout', get_the_ID()) ): ?>
		<div class="company__receiving">
			<span>Способ получения</span>
			<?php foreach( $cashouts as $cashout ): ?>
			<?php if ($cashoutIcon = get_field('waystopay', 'waystopay_' . $cashout)) { 
			?>
			<img class="receiving__img" src="<?php echo $cashoutIcon; ?>" alt="">
			<?php } else {
				$thisterm = get_term( $cashout, 'waystopay' );
				echo '<span>' . $thisterm->name . '</span>';
			} ?>
			<?php endforeach; ?>
		</div>
		<?php endif; ?>
	</div>
</div>