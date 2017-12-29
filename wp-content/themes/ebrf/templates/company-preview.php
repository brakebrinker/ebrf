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
					<td>На срок / дней </td>
					<td>Сумма / дней</td>
					<td>Ставка/<?php echo $ratelabel; ?></td>
					<td>Рассмотрение</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<?php 
						echo '<td>';
						if ($termOt = get_field('company_term_ot', get_the_ID())) echo $termOt;
						if ($termDo = get_field('company_term_do', get_the_ID())) echo ' - ' . $termDo;
						echo '</td>';
					?>
					<td><?php echo get_field('company_summ_do', get_the_ID()); ?></td>
					<td><?php echo $rateNum . '% '; ?></td>
					<td><?php echo get_field('company_order_speed', get_the_ID()); ?></td>
				</tr>
			</tbody>
		</table>
		<a href="<?php the_permalink(); ?>" class="company-link company__btn btn">Получить займ</a>
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