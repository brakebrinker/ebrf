<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta http-equiv="X-RU-Compatible" content="IE=edge">
	<?php 
	$queried_object = get_queried_object();
	$taxonomy = $queried_object->taxonomy;
	$term_id = $queried_object->term_id;

	$post_type = get_post_type();
	$seo_descr = get_field($post_type . '_seo_description', $taxonomy . '_' . $term_id);
	?>
	<title><?php wp_title('«', true, 'right'); ?></title>
	<?php
	if ($seo_descr) { ?>
	<meta name="description" content="<?php echo $seo_descr; ?>"/>
	<?php } 
	?>
	<meta name="viewport" content="width=device-width" />
  <link rel="shortcut icon" href="/wp-content/uploads/2018/01/favicon.ico" type="image/x-icon">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

	<?php wp_head(); ?>
</head>
<body>
	<header>
		<div class="header__topline">
			<div class="wrapper">
				<a href="#mobile-menu" class="menu-btn icon-menu"></a>
				<a href="<?php echo get_home_url(); ?>" class="logo">EBRF.RU</a>
				<?php 
				$argSubMenu = array(
					'theme_location'  => 'top_sub',
					'menu'            => '', 
					'container'       => false, 
					'container_class' => 'wrapper', 
					'container_id'    => '',
					'menu_class'      => 'top-menu', 
					'menu_id'         => 'top-menu',
					'echo'            => true,
					'fallback_cb'     => 'wp_page_menu',
					'before'          => '',
					'after'           => '',
					'link_before'     => '',
					'link_after'      => '',
					'items_wrap'      => '<ul id="%1$s" class="%2$s">%3$s</ul>',
					'depth'           => 0,
					'walker'          => '',
				);
				wp_nav_menu( $argSubMenu );
				?>
				<a href="#filter" class="filter-btn icon-filter"></a>
			</div>
		</div>
		<div class="header__bottomline" id="mobile-menu">
			<?php 
			$argsMenu = array(
				'theme_location'  => 'top',
				'menu'            => '', 
				'container'       => 'div', 
				'container_class' => 'wrapper', 
				'container_id'    => '',
				'menu_class'      => 'main-menu', 
				'menu_id'         => 'main-menu',
				'echo'            => 0,
				'fallback_cb'     => 'wp_page_menu',
				'before'          => '',
				'after'           => '',
				'link_before'     => '',
				'link_after'      => '',
				'items_wrap'      => '<ul id="%1$s" class="%2$s">%3$s</ul>',
				'depth'           => 0,
				'walker'          => '',
			);
			$menu = wp_nav_menu( $argsMenu );
			$menu = str_replace('class="sub-menu', 'class="dropdown-block main-menu__dropdown-block collapsed', $menu );
			echo $menu;
			?>
		</div>
	</header>