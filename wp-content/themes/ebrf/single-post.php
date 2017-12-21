<?php 
$argsAtr = array(
	'numberposts' => 6,
	'orderby'     => 'rand',
	'exclude'     => array(get_the_ID()),
);

$statiAlsoPosts = get_posts( $argsAtr );
?>
<?php get_header(); ?>
	<main>
		<div class="wrapper">
			<div class="breadcrumbs">
				<a href="index.php">Главная</a>
				<i class="icon-arrow-right"></i>
				<a href="blog.php">Статьи</a>
				<i class="icon-arrow-right"></i>
				<span>Статья</span>
			</div>
			<div class="aside-wrapper">
				<aside class="aside_right">
					<?php if (!dynamic_sidebar("postin-widget-area") ) : ?> 
					<div class="dummy"></div>
					<?php endif; ?>
				</aside>
				<div class="page-content">
					<?php while ( have_posts() ) : the_post(); ?>

					<?php if ( has_post_thumbnail()) { ?>
						<?php the_post_thumbnail(array(270, 220), array('alt' => get_the_title(),
						'class' => "post-img"
						)); ?>
					<?php } ?>
					<p class="post-date"><?php the_date(); ?></p>
					<h1><?php the_title(); ?></h1>
					<?php the_content(); ?>
					<?php endwhile;?>
					<div class="post-tools">
						<div class="post-tools__item">							
							<?php if(function_exists('the_ratings')) { the_ratings(); } ?>
						</div>					
						<div class="ya-share2" data-services="facebook,gplus,twitter,linkedin,vkontakte,odnoklassniki" data-counter=""></div>
					</div>
					<h2>Комментарии</h2>
					<?php 
					$defaults = array(
						'fields' => array(
						'author' => '<input id="author" name="author" type="text" value="' . esc_attr( $commenter['comment_author'] ) . '"  class="block" placeholder="Ваше имя"' . $aria_req . $html_req . ' />'
						),
						'comment_field'        => '<textarea id="comment" name="comment"  rows="6" class="block" placeholder="Введите ваш комментарий"  aria-required="true" required="required"></textarea>',
						'submit_button'        => '<button name="%1$s" type="submit"  id="%2$s" class="btn_big %3$s">%4$s</button>',
						'title_reply'          => __( '' ),
						'comment_notes_before' => ''
					); ?>
					<?php 
					$argss = array(
						'author_email'        => '',
						'author__in'          => '',
						'author__not_in'      => '',
						'include_unapproved'  => '',
						'fields'              => '',
						'comment__in'         => '',
						'comment__not_in'     => '',
						'karma'               => '',
						'number'              => '',
						'offset'              => '',
						'no_found_rows'       => true,
						'orderby'             => '',
						'order'               => 'DESC',
						'parent'              => '',
						'post_author__in'     => '',
						'post_author__not_in' => '',
						'post_id'             => get_queried_object_id(),
						'post__in'            => '',
						'post__not_in'        => '',
						'post_author'         => '',
						'post_name'           => '',
						'post_parent'         => '',
						'post_status'         => '',
						'post_type'           => '',
						'status'              => 'all',
						'type'                => '',
						'type__in'            => '',
						'type__not_in'        => '',
						'user_id'             => '',
						'search'              => '',
						'count'               => false,
						'meta_key'            => '',
						'meta_value'          => '',
						'meta_query'          => '',
						'date_query'          => null, // See WP_Date_Query
						'hierarchical'        => false,
						'update_comment_meta_cache'  => true,
						'update_comment_post_cache'  => false,
					);
					?>
					<?php comment_form($defaults); ?>
					<?php
						$arrComment = array(
							'walker'            => null,
							'max_depth'         => '',
							'style'             => 'ul',
							'callback'          => null,
							'end-callback'      => null,
							'type'              => 'all',
							'reply_text'        => 'Ответить',
							'page'              => '',
							'per_page'          => 0,
							'avatar_size'       => 0,
							'reverse_top_level' => null,
							'reverse_children'  => '',
							'format'            => 'html5', // или xhtml, если HTML5 не поддерживается темой
							'short_ping'        => false,    // С версии 3.6,
							'echo'              => true,     // true или false
						);
					?>
					<ul class="comments">
					<?php wp_list_comments($arrComment, get_comments($argss)); ?>
					</ul>
					<h2>Единая заявка во все банки:</h2>
					<?php echo do_shortcode('[contact-form-7 id="28" title="Единая заявка во все банки" html_class="blue-form"]');  ?>
					<h2>Похожие статьи</h2>
					<div class="blog">
						<?php foreach ($statiAlsoPosts as $post) { setup_postdata($post)?>
						<div class="post-loop">
							<a href="<?php the_permalink(); ?>" class="block-link"></a>
							
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
						<?php } 
						wp_reset_postdata();
						?>
					</div>
				</div>
			</div>
		</div>
	</main>
<?php get_footer(); ?>