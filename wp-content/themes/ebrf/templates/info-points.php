<?php if( have_rows('company_list_info_points', 6) ): ?>
<div class="clauses">
	<?php while( have_rows('company_list_info_points', 6) ): the_row(); 
		$link = get_sub_field('link');
		$title = get_sub_field('title');
		$icon = get_sub_field('icon');
	?>
	<div class="clause">
		<?php echo $icon; ?>
		<a href="<?php echo $link; ?>" class="clause__text"><?php echo $title; ?></a>
	</div>
	<?php endwhile; ?>
</div>
<?php endif; ?>