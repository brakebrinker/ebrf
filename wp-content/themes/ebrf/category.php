<?php 
/*
Template Name: Шаблон Блог
*/
?>
<?php get_header(); ?>
	<main>
		<div class="wrapper">
			<div class="breadcrumbs">
				<a href="index.php">Главная</a>
				<i class="icon-arrow-right"></i>
				<span>Статьи</span>
			</div>
			<div class="aside-wrapper">
				<aside class="aside_right">
					<div class="post-nav">
						<?php $count_posts = wp_count_posts(); ?>
						<h4 class="post-nav__title">Разделы статей</h4>
						<a href="<?php echo get_page_link( 30 ); ?>" class="post-nav__link">
							<span>Все статьи</span>
							<span class="post-nav__amount"><?php echo $count_posts->publish; ?></span>
						</a>
						<?php
							$categories = get_categories(array(
								'orderby' => 'name',
								'order' => 'ASC'
							));
							
							foreach( $categories as $category ){
								echo '<a href="' . get_category_link( $category->term_id ) . '" title="' .  $category->name . '"  class="post-nav__link"' . '><span>' . $category->name.'</span><span class="post-nav__amount">' . $category->count . '</a>';
							}
						?>
					</div>
					<?php if (!dynamic_sidebar("blog-widget-area") ) : ?> 
					<div class="dummy"></div>
					<?php endif; ?>
				</aside>

				<div class="page-content">
					<?php $mainPost = get_pages( array('include' => '30')); ?>
					<?php foreach ($mainPost as $post) {
							setup_postdata($post);
							the_content();
					} 
					wp_reset_postdata();
					?>

					<?php 
					if ( is_single() ) {
					    $cats =  get_the_category();
					    $cat = $cats[0];
					} else {
					    $cat = get_category( get_query_var('cat') );
					}
					$cat_slug = $cat->slug;

					$paged = get_query_var( 'paged' ) ? get_query_var( 'paged' ) : 1;
					$args = array(
						'post_type' => 'post',
						'posts_per_page' => get_option('posts_per_page'),
						'post_status' => 'publish',
						'paged' => $paged,
						'category_name' => $cat_slug
					);
					query_posts($args);
					?>
					<?php if ( have_posts() ) : ?>
					<div class="blog">
						<?php while( have_posts() ){ 
							the_post();  ?>
						<?php get_template_part( 'templates/post', 'preview' ); ?>
						<?php } ?>
					</div>
					<?php
					the_posts_pagination( array(
						'end_size' => 1,
						'mid_size' => 1,
						'prev_text'    => __('<'),
						'next_text'    => __('Следующая >'),
					) );
					?>
					<?php endif; 
					wp_reset_query();
					?>
				</div>
			</div>
		</div>
	</main>
<?php get_footer(); ?>