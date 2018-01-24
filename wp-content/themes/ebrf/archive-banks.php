<?php get_header(); ?>
<?php 
$queried_object = get_queried_object();
$taxonomy = $queried_object->taxonomy;
$term_id = $queried_object->term_id;

?>
<main>
	<div class="wrapper">
		<?php if (!dynamic_sidebar("catalog-widget-area") ) : ?> 
		<?php endif; ?>
	</div>
	<?php get_template_part( 'templates/banks', 'search' ); ?>
	<div class="wrapper">
		<div class="catalog aside-wrapper">
			<?php get_template_part( 'templates/aside', 'banks' ); ?>
			<?php if ( have_posts() ) : ?>
				<?php if ($term_id == '') : ?>
					<div class="catalog__content">
						<h1 class="archive-title"><?php post_type_archive_title(); ?></h1>
						<?php get_template_part( 'templates/company', 'sort' ); ?>
						<?php if ($_GET && !empty($_GET)) { // если было передано что-то из формы
							go_banks_filter(); // запускаем функцию фильтрации
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
						<?php echo get_field('banks_down_text', 6); ?>
					</div>
				<?php else: ?>
					<div class="catalog__content">
						<div class="term-head">
							<?php 
								$image = get_field('banks_tax_text_icon', $taxonomy . '_' . $term_id);
								if( !empty($image) ): 

									// vars
									$url = $image['url'];
									$title = $image['title'];
									$alt = $image['alt'];
									$caption = $image['caption'];

									// thumbnail
									$size = 'thumbnail';
									$thumb = $image['sizes'][ $size ];
									$width = $image['sizes'][ $size . '-width' ];
									$height = $image['sizes'][ $size . '-height' ];
							?>
							<img src="<?php echo $thumb; ?>" alt="<?php echo $alt; ?>" width="<?php echo $width; ?>" height="<?php echo $height; ?>" />
							<?php endif; ?>
							<div class="term-head-content">
								<h1 class="archive-title"><?php single_cat_title(); ?></h1>
								<?php echo get_field('banks_tax_text_up', $taxonomy . '_' . $term_id); ?>
							</div>
						</div>
						<?php get_template_part( 'templates/company', 'sort' ); ?>
						<?php if ($_GET && !empty($_GET)) { // если было передано что-то из формы
							go_banks_filter(); // запускаем функцию фильтрации
						} ?>
						<?php while( have_posts() ){ 
							the_post();
							get_template_part( 'templates/company', 'preview' );
						}
						if (  $wp_query->max_num_pages > 1 ) : ?>
							
						<?php endif;

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
						<?php echo get_field('banks_tax_text_down', $taxonomy . '_' . $term_id); ?>
					</div>
				<?php endif; ?>
			<?php else: ?>
				<div class="catalog__content">
					<h1 class="archive-title">Банки не найдены.</h1>
				</div>
			<?php endif; ?>
		</div>
	</div>
</main>
<?php get_footer(); ?>