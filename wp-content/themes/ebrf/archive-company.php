<?php 
$args = array(
	'post_type' => 'company',
	'posts_per_page' => -1,
	'post_status' => 'publish',
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
	<form action="" class="search-form" method="get">
		<div class="wrapper">
			<h4 class="search-form__title">Поиск</h4>
			<input type="text" placeholder="Сумма" name="s_summ">
			<input type="text" placeholder="Срок" name="s_timeterm">
			<input type="text" placeholder="Процент" name="s_percent">
			<button class="btn_big">Найти</button>
		</div>
	</form>
	<div class="wrapper">
		<div class="catalog aside-wrapper">
			<?php get_template_part( 'aside' ); ?>
			<div class="catalog__content">
				<form class="sort-form" method="get">
					<span>Сортировать</span>
					<label class="sort">
						<input type="radio" name="sort" value="sr_summ">
						<span class="sort__item">По сумме <i class="fa-angle-down"></i></span>
					</label>
					<label class="sort">
						<input type="radio" name="sort" value="sr_timeterm">
						<span class="sort__item">По сроку <i class="fa-angle-down"></i></span>
					</label>
					<label class="sort">
						<input type="radio" name="sort" value="sr_percent">
						<span class="sort__item">По % <i class="fa-angle-down"></i></span>
					</label>
				</form>
				<?php if ($_GET && !empty($_GET)) { // если было передано что-то из формы
					go_filter(); // запускаем функцию фильтрации
				} ?>
				<?php while( have_posts() ){ 
					the_post();
					get_template_part( 'templates/company', 'preview' );
				}
				wp_reset_query();
				?>
				<?php get_template_part( 'templates/union', 'order' ); ?>
				<?php if (!dynamic_sidebar("catalog-bottom-widget-area") ) : ?> 
				<?php endif; ?>
			</div>
		</div>
	</div>
	<?php endif; ?>
</main>
<?php get_footer(); ?>