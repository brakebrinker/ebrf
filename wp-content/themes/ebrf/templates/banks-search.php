<form action="" class="search-form" method="get">
	<div class="wrapper">
		<h4 class="search-form__title">Поиск</h4>
		<input type="hidden" name="post_type" value="<?php echo $post_type?>">
		<input type="text" placeholder="Сумма" name="s_summ" <?php if (!empty($_GET['s_summ'])) echo 'value="' . $_GET['s_summ'] . '"'; ?>>
		<input type="text" placeholder="Срок" name="s_timeterm" <?php if (!empty($_GET['s_timeterm'])) echo 'value="' . $_GET['s_timeterm'] . '"'; ?>>
        <input type="text" placeholder="Возраст" name="s_age" <?php if (!empty($_GET['s_age'])) echo 'value="' . $_GET['s_age'] . '"'; ?>>
		<button class="btn_big">Найти</button>
	</div>
</form>