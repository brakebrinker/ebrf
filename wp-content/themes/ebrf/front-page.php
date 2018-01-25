<?php 
$page_title = get_the_title();

$paged = get_query_var( 'paged' ) ? get_query_var( 'paged' ) : 1;
$args = array(
	'post_type' => 'mfo',
	'posts_per_page' => get_option('posts_per_page'),
	'post_status' => 'publish',
	'paged' => $paged
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
	<?php get_template_part( 'templates/mfo', 'search' ); ?>
	<div class="wrapper">
		<div class="catalog aside-wrapper">
			<?php get_template_part( 'templates/aside', 'mfo' ); ?>
			<div class="catalog__content">
				<h1 class="archive-title"><?php if ($main_title = get_field('home_title', 6)) echo $main_title; else echo $page_title;?></h1>
				<?php get_template_part( 'templates/company', 'sort' ); ?>
				<?php if ($_GET && !empty($_GET)) { // если было передано что-то из формы
					go_mfo_filter(); // запускаем функцию фильтрации
				} ?>
				<?php while( have_posts() ){ 
					the_post();  
					get_template_part( 'templates/company', 'preview' );
				}
				if (  $wp_query->max_num_pages > 1 ) : ?>
				<script>
				var ajaxurl = '<?php echo site_url() ?>/wp-admin/admin-ajax.php';
				var true_posts = '<?php echo serialize($wp_query->query_vars); ?>';
				var current_page = <?php echo (get_query_var('paged')) ? get_query_var('paged') : 1; ?>;
				var max_pages = '<?php echo $wp_query->max_num_pages; ?>';
				</script>
				<div id="true_loadmore" class="btn loadmore">Загрузить ещё</div>
				<?php endif;
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