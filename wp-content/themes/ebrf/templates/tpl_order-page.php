<?php 
/*
Template Name: Шаблон Единая заявка
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
				<?php if (!dynamic_sidebar("order-widget-area") ) : ?> 
				<div class="dummy"></div>
				<?php endif; ?>
			</aside>
			<?php while ( have_posts() ) : the_post(); ?>
			<div class="page-content">
				<h1><?php the_title(); ?></h1>
				<?php the_content(); ?>
				<?php get_template_part( 'templates/union', 'order' ); ?>
			</div>
			<?php endwhile; ?>
		</div>
	</div>
</main>
<?php get_footer(); ?>