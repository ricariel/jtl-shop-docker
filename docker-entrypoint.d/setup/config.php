<?php
define("PFAD_ROOT", "/var/www/html/");
define("URL_SHOP", getenv('DOMAIN'));
define("DB_HOST",'db');
define("DB_NAME",getenv('MARIADB_DATABASE'));
define("DB_USER",getenv('MARIADB_USER'));
define("DB_PASS",getenv('MARIADB_PASSWORD'));

define("BLOWFISH_KEY", getenv('BLOWFISH_KEY'));

if(getenv('PROD')==true) {
	define('SHOP_LOG_LEVEL', 0);
	define('SYNC_LOG_LEVEL', 0);
	define('ADMIN_LOG_LEVEL', 0);
	define('SMARTY_LOG_LEVEL', 0);
	define('TEMPLATE_COMPATIBILITY', false);
	define('IMAGE_COMPATIBILITY_LEVEL', false);
	define('KEEP_SYNC_FILES', false);
	define('PROFILE_PLUGINS', false);
	define('PROFILE_SHOP', false);
	define('PROFILE_QUERIES', false);
	define('PROFILE_QUERIES_ECHO', false);
	define('SHOW_PAGE_CACHE', true);
	define('ES_LOGGING', 0);
	define('ES_DB_LOGGING', 0);
	define('SMARTY_FORCE_COMPILE', false);
	define('SOCKET_TIMEOUT', 30);
	define('ARTICLES_PER_PAGE_HARD_LIMIT', 200);
	define('PFAD_ADMIN', 'admin/');
	define('CONSISTENT_GROSS_PRICES', true);
	ini_set('display_errors', 0);
	ini_set('log_errors', 0);
} else {
	define('SHOP_LOG_LEVEL', E_ALL);
	define('SYNC_LOG_LEVEL', E_ALL);
	define('ADMIN_LOG_LEVEL', E_ALL);
	define('SMARTY_LOG_LEVEL', E_ALL);
	define('TEMPLATE_COMPATIBILITY', false);
	define('IMAGE_COMPATIBILITY_LEVEL', false);
	define('KEEP_SYNC_FILES', true);
	define('PROFILE_PLUGINS', true);
	define('PROFILE_SHOP', true);
	define('PROFILE_QUERIES', true);
	define('PROFILE_QUERIES_ECHO', false);
	define('SHOW_PAGE_CACHE', false);
	define('ES_LOGGING', 1);
	define('ES_DB_LOGGING', 1);
	define('SMARTY_FORCE_COMPILE', true);
	//define('JTL_INCLUDE_ONLY_DB', 0);
	define('SOCKET_TIMEOUT', 30);
	define('ARTICLES_PER_PAGE_HARD_LIMIT', 200);
	define('PFAD_ADMIN', 'admin/');
	define('CONSISTENT_GROSS_PRICES', true);
	#define('PFAD_SMARTY', '/usr/share/php/smarty3/');
	#define('SMARTY_DIR', PFAD_SMARTY);
	ini_set('display_errors', 1);
	ini_set('log_errors', 1);
}
