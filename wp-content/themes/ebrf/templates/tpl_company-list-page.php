<?php 
/*
Template Name: Шаблон Список компаний
*/
?>
<?php get_header(); ?>
<main>
	<div class="wrapper">
		<div class="breadcrumbs">
			<a href="index.php">Главная</a>
			<i class="icon-arrow-right"></i>
			<span>Микрофинансовые организации</span>
		</div>
		<div class="aside-wrapper">
			<aside class="aside_right">
				<div class="clauses">
					<div class="clause">
						<i class="clause__icon icon-early"></i>
						<span class="clause__text">Досрочное погашение</span>
					</div>
					<div class="clause">
						<i class="clause__icon icon-bag"></i>
						<span class="clause__text">Неофициальное трудоустройство</span>
					</div>
					<div class="clause">
						<i class="clause__icon icon-question"></i>
						<span class="clause__text">Плохая кредитная история</span>
					</div>
					<div class="clause">
						<i class="clause__icon icon-card"></i>
						<span class="clause__text">Нет кредитной истории</span>
					</div>
					<div class="clause">
						<i class="clause__icon icon-docs"></i>
						<span class="clause__text">Необходимые документы</span>
					</div>
					<div class="clause">
						<i class="clause__icon icon-percent"></i>
						<span class="clause__text">Процентная ставка</span>
					</div>
				</div>
				<?php if (!dynamic_sidebar("company-list-widget-area") ) : ?> 
				<div class="dummy"></div>
				<?php endif; ?>
			</aside>
			<?php while ( have_posts() ) : the_post(); ?>
			<div class="page-content">
				<h1><?php the_title(); ?></h1>
				<?php echo get_field('company_list_announcement', get_the_ID()); ?>
				<div class="list" id="after-clauses">
					<div class="list__head">
						<span class="list__title">МФК</span>
						<span class="list__title">Отзывы</span>
						<span class="list__title">Средний К5М</span>
					</div>
					<?php 
					$argsCompany = array(
						'numberposts' => 0,
						'post_type'   => 'company'
					);

					$companies = get_posts( $argsCompany );
					?>
					<?php foreach($companies as $post){ setup_postdata($post); ?>
					<div class="company-string">
						<?php if ( has_post_thumbnail()) { ?>
						<?php the_post_thumbnail('medium', array('alt' => get_the_title(),
							'class' => "company-string__img"
						)); ?>
						<?php } else { ?>
							<img src="<?php bloginfo('template_url'); ?>/img/post/no_photo.png" alt="" class="company-string__img">
						<?php } ?>
						<h3 class="company-string__title"><?php the_title(); ?></h3>
						<div class="company-string__info">
							<?php if(function_exists('the_ratings')) { echo expand_ratings_template('%RATINGS_IMAGES% <a href="' . get_the_permalink() . '#reviews-block" class="rev-link">%RATINGS_USERS% отзывов</a><span class="rating-number"> (%RATINGS_AVERAGE% из %RATINGS_MAX%)</span>', get_the_ID()); } ?>
						</div>
						<span class="company-string__k5m">9.4</span>
					</div>
					<?php }
					wp_reset_postdata();
					?>
				</div>
				<?php the_content(); ?>
			</div>
			<?php endwhile; ?>
		</div>
	</div>
</main>
<?php get_footer(); ?>