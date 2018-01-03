<div class="post-loop">
	<?php if ( has_post_thumbnail()) { ?>
	<a href="<?php the_permalink(); ?>" rel="no-follow">
	<?php the_post_thumbnail(array(270, 150), array('alt' => get_the_title(),
		'class' => "post-loop__img"
	)); ?></a>
	<?php } else { ?>
		<a href="<?php the_permalink(); ?>" rel="no-follow"><img src="<?php bloginfo('template_url'); ?>/img/post/no_photo.png" alt="" class="post-loop__img"></a>
	<?php } ?>
	<div class="post-loop__content">
		<a href="<?php the_permalink(); ?>"><h5 class="post-loop__title"><?php the_title(); ?></h5></a>
		<div class="post-loop__text"><?php the_content(); ?></div>
		<div class="post-loop__tools">
			<div class="post-loop__char">
				<i class="icon-eye"></i>
				<span><?php echo get_post_meta (get_the_ID(),'views',true); ?></span>
			</div>
			<div class="post-loop__char">
				<i class="fa-comment-o fa-flip-horizontal"></i>
				<span><?php comments_number('0', '1', '%'); ?></span>
			</div>
			<div class="post-loop__date"><?php the_date("j F Y"); ?></div>
		</div>
	</div>
</div>