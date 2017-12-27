<?php 
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

$cashoutsAll = get_terms( $argsCashout );
$summAll = get_terms( $argsSumm );
$typeofcreditAll = get_terms( $argsTypeCredit );
$documentAll = get_terms( $argsDocument );
$timetermAll = get_terms( $argsTimeterm );
$typeofborrowerAll = get_terms( $argsTypeBorrower );
$anotherAll = get_terms( $argsAnother );
?>
<aside class="catalog__aside"  id="filter">
	<?php if ($cashoutsAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown open" data-target="#field1">Способ выплаты</h4>
		<fieldset class="filter__field" id="field1">
			<?php foreach( $cashoutsAll as $cashouta ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($cashouta->term_id, 'waystopay'); ?>" class="text-checkbox__item <?php if ($cashouta->term_id == $term_id) echo 'current'; ?>"><?php echo $cashouta->name; ?></a>
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
				<a href="<?php echo get_term_link($summa->term_id, 'summ'); ?>" class="text-checkbox__item <?php if ($summa->term_id == $term_id) echo 'current'; ?>"><?php echo $summa->name . ' руб'; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<?php if ($typeofcreditAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown open" data-target="#field3">Кредитная история</h4>
		<fieldset class="filter__field" id="field3">
			<?php foreach( $typeofcreditAll as $typeofcredita ) { ?>
			<div class="text-checkbox block">
				<a href="<?php echo get_term_link($typeofcredita->term_id, 'typeofcredit'); ?>" class="text-checkbox__item <?php if ($typeofcredita->term_id == $term_id) echo 'current'; ?>"><?php echo $typeofcredita->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<?php if ($documentAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown open" data-target="#field4">Документы</h4>
		<fieldset class="filter__field" id="field4">
			<?php foreach( $documentAll as $documenta ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($documenta->term_id, 'document'); ?>" class="text-checkbox__item <?php if ($documenta->term_id == $term_id) echo 'current'; ?>"><?php echo $documenta->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<?php if ($timetermAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown open" data-target="#field5">Срок</h4>
		<fieldset class="filter__field" id="field5">
			<?php foreach( $timetermAll as $timeterma ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($timeterma->term_id, 'timeterm'); ?>" class="text-checkbox__item <?php if ($timeterma->term_id == $term_id) echo 'current'; ?>"><?php echo $timeterma->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<?php if ($typeofborrowerAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown open" data-target="#field6">Заемщик</h4>
		<fieldset class="filter__field" id="field6">
			<?php foreach( $typeofborrowerAll as $typeofborrowera ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($typeofborrowera->term_id, 'typeofborrower'); ?>" class="text-checkbox__item <?php if ($typeofborrowera->term_id == $term_id) echo 'current'; ?>"><?php echo $typeofborrowera->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<?php if ($anotherAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown open" data-target="#field7">Разное</h4>
		<fieldset class="filter__field" id="field7">
			<?php foreach( $anotherAll as $anothera ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($anothera->term_id, 'another'); ?>" class="text-checkbox__item <?php if ($anothera->term_id == $term_id) echo 'current'; ?>"><?php echo $anothera->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

	<form action="" class="filter" method="get">
		<div class="filter__item">
			<h4 class="filter__title dropdown open" data-target="#field8">Опции</h4>
			<fieldset class="filter__field" id="field8">
				<label class="block">
					<input type="checkbox" class="custom-input checkbox" name="recommended" value="true">
					<span>Рекомендуемые</span>
				</label>
				<label class="block">
					<input type="checkbox" class="custom-input checkbox" name="bad_ki" value="true">
					<span>С плохой КИ</span>
				</label>
				<label class="block">
					<input type="checkbox" class="custom-input checkbox" name="allday" value="true">
					<span>Круглосуточно</span>
				</label>
				<label class="block">
					<input type="checkbox" class="custom-input checkbox" name="prolongation" value="true">
					<span>Продление</span>
				</label>
				<button type="submit" class="btn_block">Найти</button>
			</fieldset>
		</div>
	</form>
</aside>