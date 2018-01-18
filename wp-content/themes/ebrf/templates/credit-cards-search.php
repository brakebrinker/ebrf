<form action="" class="search-form" method="get">
	<div class="wrapper">
		<h4 class="search-form__title">Поиск</h4>
		<input type="hidden" name="post_type" value="<?php echo $post_type?>">
		<input type="text" placeholder="Лимит" name="s_limit" <?php if (!empty($_GET['s_limit'])) echo 'value="' . $_GET['s_limit'] . '"'; ?>>
		<input type="text" placeholder="Беспроцентный период" name="s_no_percent_term" <?php if (!empty($_GET['s_no_percent_term'])) echo 'value="' . $_GET['s_no_percent_term'] . '"'; ?>>
		<input type="text" placeholder="Процент" name="s_percent" <?php if (!empty($_GET['s_percent'])) echo 'value="' . $_GET['s_percent'] . '"'; ?>>
        <input type="text" placeholder="Возраст" name="s_age" <?php if (!empty($_GET['s_age'])) echo 'value="' . $_GET['s_age'] . '"'; ?>>
		<button class="btn_big">Найти</button>
	</div>
</form>