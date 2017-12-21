<?php 

function enqueue_styles() {
    wp_enqueue_style( 'whitesquare-style', get_stylesheet_uri());
    wp_enqueue_style( 'style', get_template_directory_uri() . '/css/style.css');
    wp_enqueue_style( 'style');
    wp_register_style('fonts', get_template_directory_uri() . '/css/fonts.css');
    wp_enqueue_style( 'fonts');
    wp_register_style('adaptive', get_template_directory_uri() . '/css/adaptive.css');
    wp_enqueue_style( 'adaptive');
    wp_register_style('font-awesome', get_template_directory_uri() . '/css/font-awesome.css');
    wp_enqueue_style( 'font-awesome');
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

// Область виджетов внутри статьи
register_sidebar(array(
    'name' => __('Виджеты внутри записи Статьи'),
    'id' => 'postin-widget-area',
    'description' => __('Виджеты внутри записи поста'),
    'before_widget' => '',
    'after_widget' => '',
    'before_title' => '<h3><a href="#">',
    'after_title' => '</a></h3>',
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