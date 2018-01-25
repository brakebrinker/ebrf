<?php 
/*
Template Name: Шаблон cписок Ломбардов
*/
?>
<?php get_header(); ?>
<main>
	<div class="wrapper">
		<?php
		if ( function_exists('yoast_breadcrumb') ) {
		yoast_breadcrumb('
		<div class="breadcrumbs" id="breadcrumbs">','</div>
		');
		}
		?>
		<div class="aside-wrapper">
			<aside class="aside_right">
				<?php get_template_part( 'templates/info', 'points' ); ?>
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
					</div>
					<?php 
					$argsCompany = array(
						'numberposts' => -1,
						'post_type'   => 'lombardy',
						'orderby' => 'meta_value',
						'meta_key' => 'ratings_users',
						'order'   => 'DESC',
					);

					$companies = get_posts( $argsCompany );
					?>
					<?php foreach($companies as $post){ setup_postdata($post); ?>
					<div class="company-string">
						<?php if ( has_post_thumbnail()) { ?>
							<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('medium', array('alt' => get_the_title(),
							'class' => "company-string__img"
						)); ?></a>
						<?php } else { ?>
							<a href="<?php the_permalink(); ?>"><img src="<?php bloginfo('template_url'); ?>/img/post/no_photo.png" alt="" class="company-string__img"></a>
						<?php } ?>
						<a href="<?php the_permalink(); ?>"><h3 class="company-string__title"><?php the_title(); ?></h3></a>
						<div class="company-string__info">
							<?php if(function_exists('the_ratings')) { echo expand_ratings_template('<a href="' . get_the_permalink() . '#reviews-block" class="rev-img-link">%RATINGS_IMAGES%</a> <a href="' . get_the_permalink() . '#reviews-block" class="rev-link">%RATINGS_USERS% отзывов</a><span class="rating-number"> (%RATINGS_AVERAGE% из %RATINGS_MAX%)</span>', get_the_ID()); } ?>
						</div>
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