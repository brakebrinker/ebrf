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
);
// query_posts($args);
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
		<h1 class="archive-title"><?php single_cat_title(); ?></h1>
		<div class="catalog aside-wrapper">
			<?php get_template_part( 'aside' ); ?>
			<div class="catalog__content">
				<?php get_template_part( 'templates/company', 'sort' ); ?>
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
				<?php echo get_field('tax_company_text',$taxonomy . '_' . $term_id); ?>
			</div>
		</div>
	</div>
	<?php endif; ?>
</main>
<?php get_footer(); ?>