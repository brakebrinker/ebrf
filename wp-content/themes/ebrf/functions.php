<?php 

function enqueue_styles() {
    wp_enqueue_style( 'whitesquare-style', get_stylesheet_uri());
    wp_enqueue_style( 'style', get_template_directory_uri() . '/css/style.css');
    wp_enqueue_style( 'style');
    wp_register_style('fonts', get_template_directory_uri() . '/css/fonts.css');
    wp_enqueue_style( 'fonts');
    wp_register_style('adaptive', get_template_directory_uri() . '/css/adaptive.css');
    wp_enqueue_style( 'adaptive');
    wp_register_style('font-awe', get_template_directory_uri() . '/css/font-awesome.css');
    wp_enqueue_style( 'font-awe');
    // wp_register_style('font-style', 'https://fonts.googleapis.com/css?family=Fira+Sans:400,500,700&amp;subset=cyrillic-ext');
    // wp_enqueue_style( 'font-style');
    // wp_register_style('font-style-pt', 'https://fonts.googleapis.com/css?family=PT+Serif:400,700&amp;subset=cyrillic-ext');
    // wp_enqueue_style( 'font-style-pt');
    // wp_register_style('bootstrap', get_template_directory_uri() . '/css/bootstrap.min.css');
    // wp_enqueue_style( 'bootstrap');
    // wp_register_style('lightbox', get_template_directory_uri() . '/css/lightbox.css');
    // wp_enqueue_style( 'lightbox');
}
add_action('wp_enqueue_scripts', 'enqueue_styles');

function enqueue_scripts () {
    wp_register_script('es5-shims', '//yastatic.net/es5-shims/0.0.2/es5-shims.min.js');
    wp_enqueue_script('es5-shims');
    wp_register_script('share2', '//yastatic.net/share2/share.js');
    wp_enqueue_script('share2');
    wp_register_script('prefixfree',  get_template_directory_uri() . '/js/prefixfree.min.js', array('jquery'), false, true);
    wp_enqueue_script('prefixfree');
    wp_register_script('one',  get_template_directory_uri() . '/js/1.js', array('jquery'), false, true);
    wp_enqueue_script('one');
    // wp_register_script('bootstrap-js', get_template_directory_uri() . '/js/bootstrap.min.js');
    // wp_enqueue_script('bootstrap-js');
    // wp_register_script('slick-js', get_template_directory_uri() . '/js/slick.min.js');
    // wp_enqueue_script('slick-js');
    // wp_register_script('maskedinput', get_template_directory_uri() . '/js/jquery.maskedinput.min.js');
    // wp_enqueue_script('maskedinput');
    // wp_register_script('lightbox-js', get_template_directory_uri() . '/js/lightbox.js');
    // wp_enqueue_script('lightbox-js');
    // wp_register_script('main-js', get_template_directory_uri() . '/js/main.js');
    // wp_enqueue_script('main-js');
    // wp_register_script('font-awesome', 'https://use.fontawesome.com/5048c3b714.js');
    // wp_enqueue_script('font-awesome');
}
add_action('wp_enqueue_scripts', 'enqueue_scripts');

/**
 * Добавляет страницу настройки темы в админку Вордпресса
 */
function mytheme_customize_register( $wp_customize ) {
/*
Добавляем секцию в настройки темы
*/
$wp_customize->add_section(
    // ID
    'data_site_section',
    // Arguments array
    array(
        'title' => 'Данные сайта',
        'capability' => 'edit_theme_options',
        'description' => "Здесь можно указать данные сайта"
    )
);
/*
Добавляем поле контактных данных
*/
$wp_customize->add_setting(
    // ID
    'work_modes',
    // Arguments array
    array(
        'default' => '',
        'type' => 'option'
    )
);
$wp_customize->add_control(
    // ID
    'work_modes_control',
    // Arguments array
    array(
        'type' => 'text',
        'label' => "Время работы",
        'section' => 'data_site_section',
        // This last one must match setting ID from above
        'settings' => 'work_modes'
    )
);
/*
Добавляем поле телефона site_telephone
*/
$wp_customize->add_setting(
    // ID
    'site_telephone',
    // Arguments array
    array(
        'default' => '',
        'type' => 'option'
    )
);
$wp_customize->add_control(
    // ID
    'site_telephone_control',
    // Arguments array
    array(
        'type' => 'text',
        'label' => "Основной телефон",
        'section' => 'data_site_section',
        // This last one must match setting ID from above
        'settings' => 'site_telephone'
    )
);
/*
Добавляем поле телефона site_telephone
*/
$wp_customize->add_setting(
    // ID
    'mobile_phone',
    // Arguments array
    array(
        'default' => '',
        'type' => 'option'
    )
);
$wp_customize->add_control(
    // ID
    'mobile_phone_control',
    // Arguments array
    array(
        'type' => 'text',
        'label' => "Мобильный телефон",
        'section' => 'data_site_section',
        // This last one must match setting ID from above
        'settings' => 'mobile_phone'
    )
);
}
add_action( 'customize_register', 'mytheme_customize_register' );

//подключаем миниатюры постов
add_theme_support( 'post-thumbnails' ); // для всех типов постов

// удаление полей комментариев
function remove_comment_fields($fields) {
unset($fields['url']);
unset($fields['email']);
return $fields;
}
add_filter('comment_form_default_fields', 'remove_comment_fields');

//изменение порядка полей комментариев
function sort_comment_fields( $fields ){
    $new_fields = array();
    $myorder = array('author','email','url','comment'); // порядок полей
 
    foreach( $myorder as $key ){
        $new_fields[ $key ] = $fields[ $key ];
        unset( $fields[ $key ] );
    }
 
    if( $fields )
        foreach( $fields as $key => $val )
            $new_fields[ $key ] = $val;
    return $new_fields;
}
add_filter('comment_form_fields', 'sort_comment_fields' );

// регистрируем меню
register_nav_menus(array(
    'top'    => 'Верхнее меню',    //Название месторасположения меню в шаблоне
    'top_sub'    => 'Верхнее надменю',    //Название месторасположения меню в шаблоне
    'bottom' => 'Нижнее меню',
));

add_filter('wp_nav_menu_objects', 'css_for_nav_parrent');
function css_for_nav_parrent( $items ){
    foreach( $items as $item ){
        if( __nav_hasSub( $item->ID, $items ) )
            $item->classes[] = 'menu-parent-item'; // все элементы поля "classes" меню, будут совмещены и выведены в атрибут class HTML тега <li>
    }

    return $items;
}
function __nav_hasSub( $item_id, $items ){
    foreach( $items as $item ){
        if( $item->menu_item_parent && $item->menu_item_parent == $item_id )
            return true;
    }

    return false;
}

add_filter( 'wp_nav_menu_items', 'your_custom_menu_item', 10, 2 );
function your_custom_menu_item ( $items, $args ) {
    if ($args->theme_location === 'top_sub') {
        $items = '<h5 class="top-menu__title">Получить займ на:</h5>' . $items;
    }
    return $items;
}

// Область виджетов внутри статьи
register_sidebar(array(
    'name' => __('Виджеты внутри записи Статьи'),
    'id' => 'postin-widget-area',
    'description' => __('Виджеты внутри записи поста справа'),
    'before_widget' => '',
    'after_widget' => '',
    'before_title' => '<h3><a href="#">',
    'after_title' => '</a></h3>',
));

// Область виджетов страница Blog
register_sidebar(array(
    'name' => __('Виджеты на странице Blog'),
    'id' => 'blog-widget-area',
    'description' => __('Виджеты на странице Blog справа'),
    'before_widget' => '<div class="post-nav">',
    'after_widget' => '</div>',
    'before_title' => '<h4 class="post-nav__title">',
    'after_title' => '</h4>',
));

// Область виджетов страница Единая заявка
register_sidebar(array(
    'name' => __('Виджеты на странице Единая заявка'),
    'id' => 'order-widget-area',
    'description' => __('Виджеты на странице Единая заявка справа'),
    'before_widget' => '<div class="post-nav">',
    'after_widget' => '</div>',
    'before_title' => '<h4 class="post-nav__title">',
    'after_title' => '</h4>',
));

// Область виджетов страница Калькулятор
register_sidebar(array(
    'name' => __('Виджеты на странице Калькулятор'),
    'id' => 'calc-widget-area',
    'description' => __('Виджеты на странице Калькулятор справа'),
    'before_widget' => '<div class="post-nav">',
    'after_widget' => '</div>',
    'before_title' => '<h4 class="post-nav__title">',
    'after_title' => '</h4>',
));

// Область виджетов страница Список компаний
register_sidebar(array(
    'name' => __('Виджеты на странице Список компаний'),
    'id' => 'company-list-widget-area',
    'description' => __('Виджеты на странице Список компаний справа'),
    'before_widget' => '<div class="post-nav">',
    'after_widget' => '</div>',
    'before_title' => '<h4 class="post-nav__title">',
    'after_title' => '</h4>',
));

// Область виджетов страница Компании
register_sidebar(array(
    'name' => __('Виджеты на странице Компании'),
    'id' => 'company-widget-area',
    'description' => __('Виджеты на странице Компании справа'),
    'before_widget' => '<div class="post-nav">',
    'after_widget' => '</div>',
    'before_title' => '<h4 class="post-nav__title">',
    'after_title' => '</h4>',
));

// Область виджетов страница Каталог
register_sidebar(array(
    'name' => __('Виджеты на страницах Каталог и Главная'),
    'id' => 'catalog-widget-area',
    'description' => __('Виджеты на страницах Каталог и Главная вверху'),
    'before_widget' => '<div class="post-nav">',
    'after_widget' => '</div>',
    'before_title' => '<h4 class="post-nav__title">',
    'after_title' => '</h4>',
));

// Область виджетов страница Каталог внизу
register_sidebar(array(
    'name' => __('Виджеты на странице Каталог'),
    'id' => 'catalog-bottom-widget-area',
    'description' => __('Виджеты на странице Каталог Seo текст внизу'),
    'before_widget' => '',
    'after_widget' => '',
    'before_title' => '',
    'after_title' => '',
));


// Область виджетов статичная страница
register_sidebar(array(
    'name' => __('Виджеты на статичной странице и записи'),
    'id' => 'static-widget-area',
    'description' => __('Виджеты на на статичной странице и записи справа'),
    'before_widget' => '<div class="post-nav">',
    'after_widget' => '</div>',
    'before_title' => '<h4 class="post-nav__title">',
    'after_title' => '</h4>',
));

/* Подсчет количества посещений страниц
---------------------------------------------------------- */
add_action('wp_head', 'kama_postviews');
function kama_postviews() {

/* ------------ Настройки -------------- */
$meta_key       = 'views';  // Ключ мета поля, куда будет записываться количество просмотров.
$who_count      = 0;            // Чьи посещения считать? 0 - Всех. 1 - Только гостей. 2 - Только зарегистрированных пользователей.
$exclude_bots   = 1;            // Исключить ботов, роботов, пауков и прочую нечесть :)? 0 - нет, пусть тоже считаются. 1 - да, исключить из подсчета.

global $user_ID, $post;
    if(is_singular()) {
        $id = (int)$post->ID;
        static $post_views = false;
        if($post_views) return true; // чтобы 1 раз за поток
        $post_views = (int)get_post_meta($id,$meta_key, true);
        $should_count = false;
        switch( (int)$who_count ) {
            case 0: $should_count = true;
                break;
            case 1:
                if( (int)$user_ID == 0 )
                    $should_count = true;
                break;
            case 2:
                if( (int)$user_ID > 0 )
                    $should_count = true;
                break;
        }
        if( (int)$exclude_bots==1 && $should_count ){
            $useragent = $_SERVER['HTTP_USER_AGENT'];
            $notbot = "Mozilla|Opera"; //Chrome|Safari|Firefox|Netscape - все равны Mozilla
            $bot = "Bot/|robot|Slurp/|yahoo"; //Яндекс иногда как Mozilla представляется
            if ( !preg_match("/$notbot/i", $useragent) || preg_match("!$bot!i", $useragent) )
                $should_count = false;
        }

        if($should_count)
            if( !update_post_meta($id, $meta_key, ($post_views+1)) ) add_post_meta($id, $meta_key, 1, true);
    }
    return true;
}

//фильтр в каталоге
function go_filter() {
    $sortkey = '';
    $sortvalue = 'meta_value_num';

    $args = array(); // подготовим массив 
    $argSort = array();
    $args['meta_query'] = array('relation' => 'AND'); // отношение между условиями, у нас это "И то И это", можно ИЛИ(OR)
    global $wp_query; // нужно заглобалить текущую выборку постов

    // if (!empty($_GET['payment'])) { // если передан массив с фильтром по комнатам
    //     $args['meta_query'][] = array( // пешем условия в meta_query
    //         'key' => 'company_cashout', // название произвольного поля
    //         'value' => (int) $_GET['payment'], // переданное значения, $_GET['rooms'] содержит массив со значениями отмеченных чекбоксов
    //         'compare' => 'LIKE'
    //     );
    // }

    if (!empty($_GET['s_summ'])) {
        $ressum = $_GET['s_summ'];
        $compare = '>=';
        $startField = 'company_summ_do';

        // if ($_GET['s_summ'] == '') {
        //     $ressum = 0;
        //     $compare = '>=';
        //     $startField = 'company_summ_ot';
        // }
        // if ($_GET['s_summ'] == 'bolshe') {
        //     $ressum = 100000;
        //     $compare = '>=';
        //     $startField = 'company_summ_do';
        // }

        $args['meta_query'][] = array( // пешем условия в meta_query
            'key' => $startField, // название произвольного поля
            'value' => (int) $ressum,
            'type' => 'numeric', // тип поля - число
            'compare' => $compare
        );
    }

    if (!empty($_GET['s_timeterm'])) { // если передан массив с фильтром по комнатам
        $args['meta_query'][] = array( // пешем условия в meta_query
            'key' => 'company_term_do', // название произвольного поля
            'value' => (int) $_GET['s_timeterm'], // переданное значения, $_GET['rooms'] содержит массив со значениями отмеченных чекбоксов
            'type' => 'numeric',
            'compare' => '>='
        );
    }

    if (!empty($_GET['s_percent'])) { // если передан массив с фильтром по комнатам
        echo (float) $_GET['s_percent'];
        $args['meta_query'][] = array( // пешем условия в meta_query
            'key' => 'company_interest_rate_num', // название произвольного поля
            'value' => (float) $_GET['s_percent'], // переданное значения, $_GET['rooms'] содержит массив со значениями отмеченных чекбоксов
            // 'type' => 'numeric',
            'compare' => '<='
        );
    }

    if ($_GET['recommended'] === 'true') {
        $args['meta_query'][] = array( // пешем условия в meta_query
            'key' => 'company_recommended', // название произвольного поля
            'value' => true, // переданное значения, $_GET['rooms'] содержит массив со значениями отмеченных чекбоксов
            'compare' => '='
        );
    }

    if ($_GET['bad_ki'] === 'true') {
        $args['meta_query'][] = array( // пешем условия в meta_query
            'key' => 'company_credit_history', // название произвольного поля
            'value' => 1, // переданное значения, $_GET['rooms'] содержит массив со значениями отмеченных чекбоксов
            'compare' => '='
        );
    }

    if ($_GET['allday'] === 'true') {
        $args['meta_query'][] = array( // пешем условия в meta_query
            'key' => 'company_workmode_allday', // название произвольного поля
            'value' => true, // переданное значения, $_GET['rooms'] содержит массив со значениями отмеченных чекбоксов
            'compare' => '='
        );
    }

    if ($_GET['prolongation'] === 'true') {
        $args['meta_query'][] = array( // пешем условия в meta_query
            'key' => 'company_renewal', // название произвольного поля
            'value' => 1, // переданное значения, $_GET['rooms'] содержит массив со значениями отмеченных чекбоксов
            'compare' => '='
        );
    }

    if (!empty($_GET['sort'])) {
        if ($_GET['sort'] === 'sr_percent') {
            $sortkey = 'company_interest_rate_num';
        }

        if ($_GET['sort'] === 'sr_timeterm') {
            $sortkey = 'company_term_do';
        }

        if ($_GET['sort'] === 'sr_summ') {
            $sortkey = 'company_summ_do';
        }
    }

    $argSort = array(
    'meta_key' => $sortkey,
    'orderby'  => $sortvalue,
    'order'    => 'DESC'
    );

    query_posts(array_merge($args,$argSort,$wp_query->query)); // сшиваем текущие условия выборки стандартного цикла wp с новым массивом переданным из формы и фильтруем
}