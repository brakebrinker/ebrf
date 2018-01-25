<?php 
$queried_object = get_queried_object();
$taxonomy = $queried_object->taxonomy;
$term_id = $queried_object->term_id;

$argsCashout = array(
	'taxonomy' => 'waystopay',
	'hide_empty' => false,
);

$argsSumm = array(
	'taxonomy' => 'summ',
	'hide_empty' => false,
);

$argsTypeCredit = array(
	'taxonomy' => 'typeofcredit',
	'hide_empty' => false,
);

$argsDocument = array(
	'taxonomy' => 'document',
	'hide_empty' => false,
);

$argsTimeterm = array(
	'taxonomy' => 'timeterm',
	'hide_empty' => false,
);

$argsTypeBorrower = array(
	'taxonomy' => 'typeofborrower',
	'hide_empty' => false,
);

$argsAnother = array(
	'taxonomy' => 'another',
	'hide_empty' => false,
);

$argsCities = array(
	'taxonomy' => 'cities',
	'hide_empty' => false,
);

$cashoutsAll = get_terms( $argsCashout );
$summAll = get_terms( $argsSumm );
$typeofcreditAll = get_terms( $argsTypeCredit );
$documentAll = get_terms( $argsDocument );
$timetermAll = get_terms( $argsTimeterm );
$typeofborrowerAll = get_terms( $argsTypeBorrower );
$anotherAll = get_terms( $argsAnother );
$citiesAll = get_terms( $argsCities );
?>
<aside class="catalog__aside"  id="filter">
	<?php if ($cashoutsAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown open" data-target="#field1">Способ выплаты</h4>
		<fieldset class="filter__field" id="field1">
			<?php foreach( $cashoutsAll as $cashouta ) { ?>
			<div class="text-checkbox">
				<?php 
					$args = array(
						'numberposts' => -1,
						'post_type'   => 'mfo',
						'tax_query' => array(
							array(
								'taxonomy' => $cashouta->taxonomy,
								'terms' => $cashouta->term_id
							)
						)
					);
				?>
				<?php
				if (get_posts($args)) { ?>
				<a href="<?php echo get_post_type_archive_link('mfo') . $cashouta->taxonomy . '-' . $cashouta->slug; ?>" class="text-checkbox__item <?php if ($cashouta->term_id == $term_id) echo 'current'; ?>"><?php echo $cashouta->name; ?></a>
				<?php 				
				} 
				wp_reset_postdata();?>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<?php if ($summAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown open" data-target="#field2">Сумма</h4>
		<fieldset class="filter__field" id="field2">
			<?php foreach( $summAll as $summa ) { ?>
			<div class="text-checkbox">
			<?php 
					$args = array(
						'posts_per_page' => -1,
						'post_type'   => 'mfo',
						'tax_query' => array(
							array(
								'taxonomy' => $summa->taxonomy,
								'terms' => $summa->term_id
							)
						)
					);
				?>
				<?php
				$fa = get_posts($args);
				if ($fa) { ?>
				<a href="<?php echo get_post_type_archive_link('mfo') . $summa->taxonomy . '-' . $summa->slug; ?>" class="text-checkbox__item <?php if ($summa->term_id == $term_id) echo 'current'; ?>"><?php echo $summa->name . ' руб'; ?></a>
				<?php 
				} 
				wp_reset_postdata();?>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<?php if ($typeofcreditAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field3">Кредитная история</h4>
		<fieldset class="filter__field" id="field3" style="display: none;">
			<?php foreach( $typeofcreditAll as $typeofcredita ) { ?>
			<div class="text-checkbox block">
			<?php 
					$args = array(
						'posts_per_page' => -1,
						'post_type'   => 'mfo',
						'tax_query' => array(
							array(
								'taxonomy' => $typeofcredita->taxonomy,
								'terms' => $typeofcredita->term_id
							)
						)
					);
				?>
				<?php
				if (get_posts($args)) { ?>
				<a href="<?php echo get_post_type_archive_link('mfo') . $typeofcredita->taxonomy . '-' . $typeofcredita->slug; ?>" class="text-checkbox__item <?php if ($typeofcredita->term_id == $term_id) echo 'current'; ?>"><?php echo $typeofcredita->name; ?></a>
				<?php 
				} 
				wp_reset_postdata();?>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<?php if ($documentAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field4">Документы</h4>
		<fieldset class="filter__field" id="field4" style="display: none;">
			<?php foreach( $documentAll as $documenta ) { ?>
			<div class="text-checkbox">
			<?php 
					$args = array(
						'posts_per_page' => -1,
						'post_type'   => 'mfo',
						'tax_query' => array(
							array(
								'taxonomy' => $documenta->taxonomy,
								'terms' => $documenta->term_id
							)
						)
					);
				?>
				<?php
				if (get_posts($args)) { ?>
				<a href="<?php echo get_post_type_archive_link('mfo') . $documenta->taxonomy . '-' . $documenta->slug; ?>" class="text-checkbox__item <?php if ($documenta->term_id == $term_id) echo 'current'; ?>"><?php echo $documenta->name; ?></a>
				<?php 
				} 
				wp_reset_postdata();?>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<?php if ($timetermAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field5">Срок</h4>
		<fieldset class="filter__field" id="field5" style="display: none;">
			<?php foreach( $timetermAll as $timeterma ) { ?>
			<div class="text-checkbox">
				<?php 
					$args = array(
						'posts_per_page' => -1,
						'post_type'   => 'mfo',
						'tax_query' => array(
							array(
								'taxonomy' => $timeterma->taxonomy,
								'terms' => $timeterma->term_id
							)
						)
					);
				?>
				<?php
				if (get_posts($args)) { ?>
				<a href="<?php echo get_post_type_archive_link('mfo') . $timeterma->taxonomy . '-' . $timeterma->slug; ?>" class="text-checkbox__item <?php if ($timeterma->term_id == $term_id) echo 'current'; ?>"><?php echo $timeterma->name; ?></a>
				<?php 
				} 
				wp_reset_postdata();?>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<?php if ($typeofborrowerAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field6">Заемщик</h4>
		<fieldset class="filter__field" id="field6" style="display: none;">
			<?php foreach( $typeofborrowerAll as $typeofborrowera ) { ?>
			<div class="text-checkbox">
			<?php 
					$args = array(
						'posts_per_page' => -1,
						'post_type'   => 'mfo',
						'tax_query' => array(
							array(
								'taxonomy' => $typeofborrowera->taxonomy,
								'terms' => $typeofborrowera->term_id
							)
						)
					);
				?>
				<?php
				if (get_posts($args)) { ?>
				<a href="<?php echo get_post_type_archive_link('mfo') . $typeofborrowera->taxonomy . '-' . $typeofborrowera->slug; ?>" class="text-checkbox__item <?php if ($typeofborrowera->term_id == $term_id) echo 'current'; ?>"><?php echo $typeofborrowera->name; ?></a>
				<?php 
				} 
				wp_reset_postdata();?>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<?php if ($anotherAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field7">Разное</h4>
		<fieldset class="filter__field" id="field7" style="display: none;">
			<?php foreach( $anotherAll as $anothera ) { ?>
			<div class="text-checkbox">
			<?php 
					$args = array(
						'posts_per_page' => -1,
						'post_type'   => 'mfo',
						'tax_query' => array(
							array(
								'taxonomy' => $anothera->taxonomy,
								'terms' => $anothera->term_id
							)
						)
					);
				?>
				<?php
				if (get_posts($args)) { ?>
				<a href="<?php echo get_post_type_archive_link('mfo') . $anothera->taxonomy . '-' . $anothera->slug; ?>" class="text-checkbox__item <?php if ($anothera->term_id == $term_id) echo 'current'; ?>"><?php echo $anothera->name; ?></a>
				<?php 
				} 
				wp_reset_postdata();?>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<?php if ($citiesAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field8">Города</h4>
		<fieldset class="filter__field" id="field8" style="display: none;">
			<?php foreach( $citiesAll as $citya ) { ?>
			<div class="text-checkbox">
			<?php 
					$args = array(
						'posts_per_page' => -1,
						'post_type'   => 'mfo',
						'tax_query' => array(
							array(
								'taxonomy' => $citya->taxonomy,
								'terms' => $citya->term_id
							)
						)
					);
				?>
				<?php
				if (get_posts($args)) { ?>
				<a href="<?php echo get_post_type_archive_link('mfo') . $citya->taxonomy . '-' . $citya->slug; ?>" class="text-checkbox__item <?php if ($citya->term_id == $term_id) echo 'current'; ?>"><?php echo $citya->name; ?></a>
				<?php 
				} 
				wp_reset_postdata();?>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<form class="filter" method="get">
		<div class="filter__item">
			<h4 class="filter__title dropdown open" data-target="#field9">Опции</h4>
			<fieldset class="filter__field" id="field9">
				<label class="block">
					<input type="checkbox" class="custom-input checkbox" name="recommended" value="true" <?php if($_GET['recommended'] === 'true') echo checked; ?>>
					<span>Рекомендуемые</span>
				</label>
				<label class="block">
					<input type="checkbox" class="custom-input checkbox" name="bad_ki" value="true" <?php if($_GET['bad_ki'] === 'true') echo checked; ?>>
					<span>С плохой КИ</span>
				</label>
				<label class="block">
					<input type="checkbox" class="custom-input checkbox" name="allday" value="true" <?php if($_GET['allday'] === 'true') echo checked; ?>>
					<span>Круглосуточно</span>
				</label>
				<label class="block">
					<input type="checkbox" class="custom-input checkbox" name="prolongation" value="true" <?php if($_GET['prolongation'] === 'true') echo checked; ?>>
					<span>Продление</span>
				</label>
				<button type="submit" class="btn_block">Найти</button>
			</fieldset>
		</div>
	</form>
</aside>