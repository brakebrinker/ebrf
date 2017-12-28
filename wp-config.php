<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('WP_CACHE', true);
define( 'WPCACHEHOME', 'D:\projects\www\ebrf\wp-content\plugins\wp-super-cache/' );
define('DB_NAME', 'ebrf');

/** Имя пользователя MySQL */
define('DB_USER', 'ebrf');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', 'THV8nwBZN6sVDtuH');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '|QuPp|_-N#bXXDE*V0ZDx<*K:8]q:GGH`o1fnR(}XVZYVY2<GCjcn@G~s^Pn6?H>');
define('SECURE_AUTH_KEY',  's=QT|0 t?{T[g(-(w8[Pohh$2oN><v!fX _mxC;k!tJ60@:owT/uxq:SwPJeOa^v');
define('LOGGED_IN_KEY',    'y-)}n:A[aZjbqRzJB~-/C0#V;GxZ*;?55uEbjAM6xw0ZXG)!G8*j2G2Pf(%NY=Gh');
define('NONCE_KEY',        '&TkJt$y96o6pL9e5~7IGpc`+^#+*mbL<S$-@2p*2{Z@r1nYeE}vrKI$b&RV%3;0g');
define('AUTH_SALT',        'YVO9P<iGv)+Tln|$k6QP.=WZdIJ&Z0t|572^Fav(/+dDY$5/3w!~BbkfCaDh(88F');
define('SECURE_AUTH_SALT', 'NcLuF=}gCMj5]+Ymx1@j`E>SY&:Jj3x]*w5*jp$ [V/h}.*8Ut=^9G6ViH(H$4+7');
define('LOGGED_IN_SALT',   '{/$XF(K9*oH*:lQ>+w:`KsrrZ7#H~,w4zBbN?8W`7i%|0r$g7$YJ;I7Ni;_$z#u_');
define('NONCE_SALT',       '0[*UsP_Nee9T$+9yu[skezH-<)u2FZqz%d1)bR1={k=@^]h!) zbh$|!Zj7/m&e8');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
