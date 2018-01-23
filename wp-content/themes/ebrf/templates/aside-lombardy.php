<?php 
$queried_object = get_queried_object();
$taxonomy = $queried_object->taxonomy;
$term_id = $queried_object->term_id;

$argsAge = array(
	'taxonomy' => 'age',
	'hide_empty' => false,
);

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

$argsTargets = array(
	'taxonomy' => 'targets',
	'hide_empty' => false,
);

$argsSpeeds = array(
	'taxonomy' => 'get-speeds',
	'hide_empty' => false,
);

$adgesAll = get_terms( $argsAge );
$cashoutsAll = get_terms( $argsCashout );
$summAll = get_terms( $argsSumm );
$typeofcreditAll = get_terms( $argsTypeCredit );
$documentAll = get_terms( $argsDocument );
$timetermAll = get_terms( $argsTimeterm );
$typeofborrowerAll = get_terms( $argsTypeBorrower );
$anotherAll = get_terms( $argsAnother );
$targetsAll = get_terms( $argsTargets );
$speedsAll = get_terms( $argsSpeeds );
?>
<aside class="catalog__aside"  id="filter">

	<?php if ($adgesAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown open" data-target="#field1">Возраст</h4>
		<fieldset class="filter__field" id="field1">
			<?php foreach( $adgesAll as $adgesa ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_post_type_archive_link('lombardy') . $adgesa->slug; ?>" class="text-checkbox__item <?php if ($adgesa->term_id == $term_id) echo 'current'; ?>"><?php echo $adgesa->name; ?></a>
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
				<a href="<?php echo get_term_link($summa->term_id, 'summ') . '?post_type=' . $post_type; ?>" class="text-checkbox__item <?php if ($summa->term_id == $term_id) echo 'current'; ?>"><?php echo $summa->name . ' руб '; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<?php if ($timetermAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field3">Срок</h4>
		<fieldset class="filter__field" id="field3" style="display: none;">
			<?php foreach( $timetermAll as $timeterma ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($timeterma->term_id, 'timeterm') . '?post_type=' . $post_type; ?>" class="text-checkbox__item <?php if ($timeterma->term_id == $term_id) echo 'current'; ?>"><?php echo $timeterma->name; ?></a>
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
				<a href="<?php echo get_term_link($documenta->term_id, 'document') . '?post_type=' . $post_type; ?>" class="text-checkbox__item <?php if ($documenta->term_id == $term_id) echo 'current'; ?>"><?php echo $documenta->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<?php if ($typeofborrowerAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field5">Заемщик</h4>
		<fieldset class="filter__field" id="field5" style="display: none;">
			<?php foreach( $typeofborrowerAll as $typeofborrowera ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($typeofborrowera->term_id, 'typeofborrower') . '?post_type=' . $post_type; ?>" class="text-checkbox__item <?php if ($typeofborrowera->term_id == $term_id) echo 'current'; ?>"><?php echo $typeofborrowera->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

    <?php if ($targetsAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field6">Цель</h4>
		<fieldset class="filter__field" id="field6" style="display: none;">
			<?php foreach( $targetsAll as $targetsa ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($targetsa->term_id, 'targets') . '?post_type=' . $post_type; ?>" class="text-checkbox__item <?php if ($targetsa->term_id == $term_id) echo 'current'; ?>"><?php echo $targetsa->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<?php if ($cashoutsAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field7">Способ выплаты</h4>
		<fieldset class="filter__field" id="field7" style="display: none;">
			<?php foreach( $cashoutsAll as $cashouta ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($cashouta->term_id, 'waystopay') . '?post_type=' . $post_type; ?>" class="text-checkbox__item <?php if ($cashouta->term_id == $term_id) echo 'current'; ?>"><?php echo $cashouta->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<?php if ($speedsAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field8">Скорость</h4>
		<fieldset class="filter__field" id="field8" style="display: none;">
			<?php foreach( $speedsAll as $speeda ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($speeda->term_id, 'get-speeds') . '?post_type=' . $post_type; ?>" class="text-checkbox__item <?php if ($speeda->term_id == $term_id) echo 'current'; ?>"><?php echo $speeda->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<?php if ($anotherAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field9">Разное</h4>
		<fieldset class="filter__field" id="field9" style="display: none;">
			<?php foreach( $anotherAll as $anothera ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($anothera->term_id, 'another') . '?post_type=' . $post_type; ?>" class="text-checkbox__item <?php if ($anothera->term_id == $term_id) echo 'current'; ?>"><?php echo $anothera->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<form class="filter" method="get">
		<div class="filter__item">
			<h4 class="filter__title dropdown open" data-target="#field10">Опции</h4>
			<fieldset class="filter__field" id="field10">
				<input type="hidden" name="post_type" value="<?php echo $post_type?>">
				<label class="block">
					<input type="checkbox" class="custom-input checkbox" name="recommended" value="true" <?php if($_GET['recommended'] === 'true') echo checked; ?>>
					<span>Рекомендуемые</span>
				</label>
				<label class="block">
					<input type="checkbox" class="custom-input checkbox" name="no_work" value="true" <?php if($_GET['no_work'] === 'true') echo checked; ?>>
					<span>Без работы</span>
				</label>
				<label class="block">
					<input type="checkbox" class="custom-input checkbox" name="no_2ndfl" value="true" <?php if($_GET['no_2ndfl'] === 'true') echo checked; ?>>
					<span>Без 2-НДФЛ</span>
				</label>
				<label class="block">
					<input type="checkbox" class="custom-input checkbox" name="with_passport" value="true" <?php if($_GET['with_passport'] === 'true') echo checked; ?>>
					<span>По паспорту</span>
				</label>
				<label class="block">
					<input type="checkbox" class="custom-input checkbox" name="pensioner" value="true" <?php if($_GET['pensioner'] === 'true') echo checked; ?>>
					<span>Пенсионерам</span>
				</label>
				<button type="submit" class="btn_block">Найти</button>
			</fieldset>
		</div>
	</form>
</aside>