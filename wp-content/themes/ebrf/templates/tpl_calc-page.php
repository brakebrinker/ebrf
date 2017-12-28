<?php 
/*
Template Name: Шаблон Калькулятор
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
				<?php if (!dynamic_sidebar("calc-widget-area") ) : ?> 
				<div class="dummy"></div>
				<?php endif; ?>
			</aside>
			<?php while ( have_posts() ) : the_post(); ?>
			<div class="page-content">
				<h1><?php the_title(); ?></h1>
				<?php echo get_field('calc_review', get_the_ID()); ?>
				<h2>Калькулятор онлайн:</h2>
				<form class="blue-form calc">
					<input type="tel" placeholder="Сумма займа в рублях">
					<input type="tel" placeholder="Срок в днях">
					<input type="tel" placeholder="Процент в день">
					<button>Расчитать</button>
					<div class="calc__overpay">
						<span>Переплата</span>
						<input type="text" value="0 Р" readonly />
					</div>
				</form>
				<?php the_content(); ?>
			</div>
			<?php endwhile; ?>
		</div>
	</div>
</main>
<?php get_footer(); ?>