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
			<?php
			if ( function_exists('yoast_breadcrumb') ) {
			yoast_breadcrumb('
			<div class="breadcrumbs" id="breadcrumbs">','</div>
			');
			}
			?>
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
					<?php if ( comments_open() || get_comments_number() ) : ?>
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
					<?php endif; ?>

					<?php get_template_part( 'templates/union', 'order' ); ?>

					<h2>Похожие статьи</h2>
					<div class="blog">
						<?php foreach ($statiAlsoPosts as $post) { setup_postdata($post)?>
						<?php get_template_part( 'templates/post', 'preview' ); ?>
						<?php } 
						wp_reset_postdata();
						?>
					</div>
				</div>
			</div>
		</div>
	</main>
<?php get_footer(); ?>