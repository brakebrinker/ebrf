<?php 
$queried_object = get_queried_object();
$taxonomy = $queried_object->taxonomy;
$term_id = $queried_object->term_id;

$argsAge = array(
	'taxonomy' => 'age',
	'hide_empty' => false,
);

$argsAnother = array(
	'taxonomy' => 'another',
	'hide_empty' => false,
);

$argsDocument = array(
	'taxonomy' => 'document',
	'hide_empty' => false,
);

$argsTypeCards = array(
	'taxonomy' => 'type-cards',
	'hide_empty' => false,
);

$argsForWho = array(
	'taxonomy' => 'for-who',
	'hide_empty' => false,
);

$argsLimitsCreditCards = array(
	'taxonomy' => 'limits-credit-cards',
	'hide_empty' => false,
);

$argsGraceLimitCreditCards = array(
	'taxonomy' => 'grace-limit-credit-cards',
	'hide_empty' => false,
);

$argsDeliveryCreditCards = array(
	'taxonomy' => 'delivery',
	'hide_empty' => false,
);

$argsGetSpeedCreditCards = array(
	'taxonomy' => 'get-speeds',
	'hide_empty' => false,
);

$adgesAll = get_terms( $argsAge );
$documentAll = get_terms( $argsDocument );
$anotherAll = get_terms( $argsAnother );
$typeCardsAll = get_terms( $argsTypeCards );
$forWhoAll = get_terms( $argsForWho );
$limitsCreditCardsAll = get_terms( $argsLimitsCreditCards );
$graceLimitCreditCardsAll = get_terms( $argsGraceLimitCreditCards );
$deliveryCreditCardsAll = get_terms( $argsDeliveryCreditCards );
$getSpeedCreditCardsAll = get_terms( $argsGetSpeedCreditCards );
?>
<aside class="catalog__aside"  id="filter">

	<?php if ($adgesAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown open" data-target="#field1">Возраст</h4>
		<fieldset class="filter__field" id="field1">
			<?php foreach( $adgesAll as $adgesa ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($adgesa->term_id, 'age') . '?post_type=' . $post_type; ?>" class="text-checkbox__item <?php if ($adgesa->term_id == $term_id) echo 'current'; ?>"><?php echo $adgesa->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

    <?php if ($documentAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown open" data-target="#field2">Документы</h4>
		<fieldset class="filter__field" id="field2">
			<?php foreach( $documentAll as $documenta ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($documenta->term_id, 'document') . '?post_type=' . $post_type; ?>" class="text-checkbox__item <?php if ($documenta->term_id == $term_id) echo 'current'; ?>"><?php echo $documenta->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>

    <?php if ($typeCardsAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field3">Тип карты</h4>
		<fieldset class="filter__field" id="field3" style="display: none;">
			<?php foreach( $typeCardsAll as $typeCardsa ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($typeCardsa->term_id, 'type-cards') . '?post_type=' . $post_type; ?>" class="text-checkbox__item <?php if ($typeCardsa->term_id == $term_id) echo 'current'; ?>"><?php echo $typeCardsa->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>
    
	<?php if ($forWhoAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field4">Для кого</h4>
		<fieldset class="filter__field" id="field4" style="display: none;">
			<?php foreach( $forWhoAll as $forWhoa ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($forWhoa->term_id, 'for-who') . '?post_type=' . $post_type; ?>" class="text-checkbox__item <?php if ($forWhoa->term_id == $term_id) echo 'current'; ?>"><?php echo $forWhoa->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>
    
	<?php if ($limitsCreditCardsAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field5">Кредитный лимит</h4>
		<fieldset class="filter__field" id="field5" style="display: none;">
			<?php foreach( $limitsCreditCardsAll as $limitsCreditCardsa ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($limitsCreditCardsa->term_id, 'limits-credit-cards') . '?post_type=' . $post_type; ?>" class="text-checkbox__item <?php if ($limitsCreditCardsa->term_id == $term_id) echo 'current'; ?>"><?php echo $limitsCreditCardsa->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>
    
	<?php if ($graceLimitCreditCardsAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field6">Льготный период</h4>
		<fieldset class="filter__field" id="field6" style="display: none;">
			<?php foreach( $graceLimitCreditCardsAll as $graceLimitCreditCardsa ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($graceLimitCreditCardsa->term_id, 'grace-limit-credit-cards') . '?post_type=' . $post_type; ?>" class="text-checkbox__item <?php if ($graceLimitCreditCardsa->term_id == $term_id) echo 'current'; ?>"><?php echo $graceLimitCreditCardsa->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>
    
	<?php if ($deliveryCreditCardsAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field7">Доставка</h4>
		<fieldset class="filter__field" id="field7" style="display: none;">
			<?php foreach( $deliveryCreditCardsAll as $deliveryCreditCardsa ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($deliveryCreditCardsa->term_id, 'delivery') . '?post_type=' . $post_type; ?>" class="text-checkbox__item <?php if ($deliveryCreditCardsa->term_id == $term_id) echo 'current'; ?>"><?php echo $deliveryCreditCardsa->name; ?></a>
			</div>
			<?php } ?>
		</fieldset>
	</div>
	<?php } ?>
    
	<?php if ($getSpeedCreditCardsAll) { ?>
	<div class="filter__item">
		<h4 class="filter__title dropdown" data-target="#field8">Скорость получения</h4>
		<fieldset class="filter__field" id="field8" style="display: none;">
			<?php foreach( $getSpeedCreditCardsAll as $getSpeedCreditCardsa ) { ?>
			<div class="text-checkbox">
				<a href="<?php echo get_term_link($getSpeedCreditCardsa->term_id, 'get-speeds') . '?post_type=' . $post_type; ?>" class="text-checkbox__item <?php if ($getSpeedCreditCardsa->term_id == $term_id) echo 'current'; ?>"><?php echo $getSpeedCreditCardsa->name; ?></a>
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
                    <input type="checkbox" class="custom-input checkbox" name="with_passport" value="true" <?php if($_GET['with_passport'] === 'true') echo checked; ?>>
                    <span>По паспорту</span>
                </label>
				<label class="block">
					<input type="checkbox" class="custom-input checkbox" name="cash_back" value="true" <?php if($_GET['cash_back'] === 'true') echo checked; ?>>
					<span>Кэшбэк</span>
				</label>
				<label class="block">
					<input type="checkbox" class="custom-input checkbox" name="apple_pay" value="true" <?php if($_GET['apple_pay'] === 'true') echo checked; ?>>
					<span>Apple Pay</span>
				</label>
				<label class="block">
					<input type="checkbox" class="custom-input checkbox" name="samsung_pay" value="true" <?php if($_GET['samsung_pay'] === 'true') echo checked; ?>>
					<span>Samsung Pay</span>
				</label>
				<label class="block">
					<input type="checkbox" class="custom-input checkbox" name="android_pay" value="true" <?php if($_GET['android_pay'] === 'true') echo checked; ?>>
					<span>Android Pay</span>
				</label>
				<button type="submit" class="btn_block">Найти</button>
			</fieldset>
		</div>
	</form>
</aside>