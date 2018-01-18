<form action="" class="search-form" method="get">
	<div class="wrapper">
		<h4 class="search-form__title">Поиск</h4>
		<input type="hidden" name="post_type" value="<?php echo $post_type?>">
		<input type="text" placeholder="Открытие" name="s_open" <?php if (!empty($_GET['s_open'])) echo 'value="' . $_GET['s_open'] . '"'; ?>>
		<input type="text" placeholder="Обслуживание" name="s_service" <?php if (!empty($_GET['s_service'])) echo 'value="' . $_GET['s_service'] . '"'; ?>>
        <input type="text" placeholder="Возраст" name="s_age" <?php if (!empty($_GET['s_age'])) echo 'value="' . $_GET['s_age'] . '"'; ?>>
		<button class="btn_big">Найти</button>
	</div>
</form>