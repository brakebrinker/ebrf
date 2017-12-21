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
						<h4 class="post-nav__title">Разделы статей</h4>
						<a href="#" class="post-nav__link">
							<span>Все статьи</span>
							<span class="post-nav__amount">10</span>
						</a>
						<a href="#" class="post-nav__link">
							<span>Полезные статьи</span>
							<span class="post-nav__amount">20</span>
						</a>
						<a href="#" class="post-nav__link">
							<span>Новости партнеров</span>
							<span class="post-nav__amount">30</span>
						</a>
					</div>
					<div class="dummy"></div>
				</aside>

				<div class="page-content">
					<?php while( have_posts() ){ 
						the_post();  ?>
						<?php the_content(); ?>
					<?php } ?>
					<?php 
					$paged = get_query_var( 'paged' ) ? get_query_var( 'paged' ) : 1;
					$args = array(
						'post_type' => 'post',
						'posts_per_page' => get_option('posts_per_page'),
						'post_status' => 'publish',
						'paged' => $paged,
					);
					query_posts($args);
					?>
					<?php if ( have_posts() ) : ?>
					<div class="blog">
						<?php while( have_posts() ){ 
							the_post();  ?>
						<div class="post-loop">
							<a href="post.php" class="block-link"></a>
							<?php if ( has_post_thumbnail()) { ?>
							<?php the_post_thumbnail(array(270, 150), array('alt' => get_the_title(),
								'class' => "post-loop__img"
							)); ?>
							<?php } else { ?>
								<img src="<?php bloginfo('template_url'); ?>/img/post/no_photo.png" alt="" class="post-loop__img">
							<?php } ?>
							<div class="post-loop__content">
								<h5 class="post-loop__title"><?php the_title(); ?></h5>
								<div class="post-loop__text"><?php the_content(); ?></div>
								<div class="post-loop__tools">
									<div class="post-loop__char">
										<i class="icon-eye"></i>
										<span><?php echo get_post_meta ($post->ID,'views',true); ?></span>
									</div>
									<div class="post-loop__char">
										<i class="fa-comment-o fa-flip-horizontal"></i>
										<span><?php comments_number('0', '1', '%'); ?></span>
									</div>
									<div class="post-loop__date"><?php the_date("j F Y"); ?></div>
								</div>
							</div>
						</div>
						<?php } ?>
					</div>
					<div class="pagination">
						<a href="#" class="pagination__item"><</a>
						<a href="#" class="pagination__item active">1</a>
						<a href="#" class="pagination__item">2</a>
						<a href="#" class="pagination__item">3</a>
						<a href="#" class="pagination__item">4</a>
						<a href="#" class="pagination__item">5</a>
						<a href="#" class="pagination__item">6</a>
						<a href="#" class="pagination__item">7</a>
						<a href="#" class="pagination__item">8</a>
						<a href="#" class="pagination__item">9</a>
						<a href="#" class="pagination__item">10</a>
						<span class="pagination__item">...</span>
						<a href="" class="pagination__item next">Следующая ></a>
					</div>
					<?php endif; ?>
				</div>
			</div>
		</div>
	</main>
<?php get_footer(); ?>