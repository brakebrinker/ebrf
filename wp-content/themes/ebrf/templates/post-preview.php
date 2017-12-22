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