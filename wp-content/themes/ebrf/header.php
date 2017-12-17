<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta http-equiv="X-RU-Compatible" content="IE=edge">
	<title><?php wp_title('«', true, 'right'); ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />

	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

	<?php wp_head(); ?>
</head>
<body>
	<header>
		<div class="header__topline">
			<div class="wrapper">
				<a href="#mobile-menu" class="menu-btn icon-menu"></a>
				<a href="index.php" class="logo">EBRF.RU</a>
				<ul class="top-menu" id="top-menu">
					<h5 class="top-menu__title">Получить займ на:</h5>
					<li><a href="#">Яндекс.Деньги</a></li>
					<li><a href="#">Qiwi кошелек </a></li>
					<li><a href="#">Карту</a></li>
					<li><a href="#">Счет</a></li>
					<li><a href="#">Сбербанк</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
				<a href="#filter" class="filter-btn icon-filter"></a>
			</div>
		</div>
		<div class="header__bottomline" id="mobile-menu">
			<div class="wrapper">
				<ul class="main-menu" id="main-menu">
					<li><a href="#">Микрозаймы</a></li>
					<li><a href="#">Оформить кредит</a></li>
					<li>
						<a href="#dd-menu1" class="dropdown">Банковские кредиты</a>
						<ul class="dropdown-block main-menu__dropdown-block collapsed" id="dd-menu1">
							<li><a href="#">Кредитные карты</a></li>
							<li><a href="#">Дебитовые карты</a></li>
						</ul>
					</li>
					<li><a href="#">Займы под залог</a></li>
					<li>
						<a href="#dd-menu2" class="dropdown">Полезное</a>
						<ul class="dropdown-block main-menu__dropdown-block collapsed" id="dd-menu2">
							<li><a href="#">Калькулятор</a></li>
							<li><a href="#">Статьи</a></li>
							<li><a href="#">Единственная заявка</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</header>