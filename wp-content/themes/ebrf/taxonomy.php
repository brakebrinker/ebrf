<?php 
//$paged = get_query_var( 'paged' ) ? get_query_var( 'paged' ) : 1;
$queried_object = get_queried_object();
$taxonomy = $queried_object->taxonomy;
$term_id = $queried_object->term_id;

$args = array(
	'post_type' => 'company',
	'posts_per_page' => -1,
	'post_status' => 'publish',
	'field' => 'slug',
	'tax_query' => array(
		array(
			'taxonomy' => $taxonomy,
			'terms' => $term_id
		)
	)
	//'paged' => $paged,
	// 'meta_query' => array(
	// 	array(
	// 		'key'     => 'company_cashout',
	// 		'value'   => 12,
	// 		'compare' => 'LIKE'
	// 	)
	// )
);
query_posts($args);
?>
<?php get_header(); ?>
<main>
	<div class="wrapper">
		<?php if (!dynamic_sidebar("catalog-widget-area") ) : ?> 
		<?php endif; ?>
	</div>
	<?php if ( have_posts() ) : ?>
	<form action="#" class="search-form">
		<div class="wrapper">
			<h4 class="search-form__title">Поиск</h4>
			<input type="text" placeholder="Сумма">
			<input type="text" placeholder="Срок">
			<input type="text" placeholder="Процент">
			<button class="btn_big">Найти</button>
		</div>
	</form>
	<div class="wrapper">
		<div class="catalog aside-wrapper">
			<?php get_template_part( 'aside' ); ?>
			<div class="catalog__content">
				<form class="sort-form">
					<span>Сортировать</span>
					<label class="sort">
						<input type="radio" name="sort" value="summ">
						<span class="sort__item">По сумме <i class="fa-angle-down"></i></span>
					</label>
					<label class="sort">
						<input type="radio" name="sort" value="term">
						<span class="sort__item">По сроку <i class="fa-angle-down"></i></span>
					</label>
					<label class="sort">
						<input type="radio" name="sort" value="percent">
						<span class="sort__item">По % <i class="fa-angle-down"></i></span>
					</label>
				</form>
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
							<pre><?php print_r($cashouts); ?></pre>
							<span>Способ получения</span>
							<?php foreach( $cashouts as $cashout ): ?>
							<?php if ($cashoutIcon = get_field('waystopay', 'waystopay_' . $cashout)) { 
							echo $cashout;?>
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
				<p>Агрегатор финансовых продуктов “EBRF” уже больше года помогает десяткам тысяч людей по всей России выбирать оптимальные микрозаймы, кредиты и многое другое. Наша задача – избавить вас от необходимости изучать десятки сайтов банков и МФО в поисках нужной информации. Мы сделали это за вас!Чтобы сделать оптимальный выбор – изучите всю информацию, которая указана в карточке продукта. Обратите внимание на рейтинг К5М и прочитайте отзывы клиентов. Обязательно проверьте свои шансы на одобрение с помощью бесплатной и моментальной проверки кредитного рейтинга. </p>
				<p>После выбора, перейдите на сайт банка или МФО и заполните заявку. В ближайшее время с вами свяжутся менеджеры. После получения услуги, вы можете оставить свое мнение на странице организации.Агрегатор финансовых продуктов “EBRF” уже больше года помогает десяткам тысяч людей по всей России выбирать оптимальные микрозаймы, кредиты и многое другое. Наша задача – избавить вас от необходимости изучать десятки сайтов банков и МФО в поисках нужной информации. Мы сделали это за вас!Чтобы сделать оптимальный выбор – изучите всю информацию, которая указана в карточке продукта. Обратите внимание на рейтинг К5М и прочитайте отзывы клиентов. Обязательно проверьте свои шансы на одобрение с помощью бесплатной и моментальной проверки кредитного рейтинга. После выбора, перейдите на сайт банка или МФО и заполните заявку. В ближайшее время с вами свяжутся менеджеры. После получения услуги, вы можете оставить свое мнение на странице организации.</p>
			</div>
		</div>
	</div>
	<?php endif; ?>
</main>
<?php get_footer(); ?>