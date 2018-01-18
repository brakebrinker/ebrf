<?php 
$args = array(
	'post_type' => 'company',
	'posts_per_page' => -1,
	'post_status' => 'publish',
);
query_posts($args);

$argsAtr = array(
	'numberposts' => 9,
	'orderby'     => 'rand',
);

$statiAlsoPosts = get_posts( $argsAtr );
?>
<?php get_header(); ?>
<main>
	<div class="wrapper">
		<?php if (!dynamic_sidebar("catalog-widget-area") ) : ?> 
		<?php endif; ?>
	</div>
	<?php if ( have_posts() ) : ?>
	<?php get_template_part( 'templates/company', 'search' ); ?>
	<div class="wrapper">
		<h1 class="archive-title">Главная страница</h1>
		<div class="catalog aside-wrapper">
			<?php get_template_part( 'aside' ); ?>
			<div class="catalog__content">
				<?php get_template_part( 'templates/company', 'sort' ); ?>
				<?php if ($_GET && !empty($_GET)) { // если было передано что-то из формы
					go_filter(); // запускаем функцию фильтрации
				} ?>
				<?php while( have_posts() ){ 
					the_post();  ?>
				<div class="company">
					<div class="company__head">
						<?php if ( has_post_thumbnail()) { ?>
						<?php the_post_thumbnail('medium', array('alt' => get_the_title(),
							'class' => "company__logo"
						)); ?>
						<?php } else { ?>
							<img src="<?php bloginfo('template_url'); ?>/img/post/no_photo.png" alt="" class="company__logo">
						<?php } ?>
						<div class="company__rating">
							<h6 class="company__rating-title">Рейтинг</h6>
							<div class="company__rating-stars">
								<?php if(function_exists('the_ratings')) { echo expand_ratings_template('%RATINGS_IMAGES%', get_the_ID()); } ?>
							</div>
							<span class="company__rating-amount"><?php if(function_exists('the_ratings')) { echo expand_ratings_template('%RATINGS_AVERAGE%', get_the_ID()); } ?></span>
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
						<a href="#" class="company__btn btn">Получить займ</a>
						<?php if( $cashouts = get_field('company_cashout', get_the_ID()) ): ?>
						<div class="company__receiving">
							<span>Способ получения</span>
							<?php foreach( $cashouts as $cashout ): ?>
							<?php if ($cashoutIcon = get_field('waystopay', 'waystopay_' . $cashout)) { 
							?>
							<img class="receiving__img" src="<?php echo $cashoutIcon; ?>" alt="">
							<?php } else {
								echo '<span>' . $cashout->name . '</span>';
							} ?>
							<?php endforeach; ?>
						</div>
						<?php endif; ?>
					</div>
				</div>
				<?php } 
				wp_reset_query();
				?>
				<?php get_template_part( 'templates/union', 'order' ); ?>
				<h2>Полезная информация</h2>
				<div class="blog">
					<?php foreach ($statiAlsoPosts as $post) { setup_postdata($post)?>
					<?php get_template_part( 'templates/post', 'preview' ); ?>
					<?php } 
					wp_reset_postdata();
					?>
				</div>
				<?php the_content(); ?>
			</div>
		</div>
	</div>
	<?php endif; ?>
</main>
<?php get_footer(); ?>