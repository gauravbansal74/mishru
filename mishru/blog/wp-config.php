<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'db_wordpress');

/** MySQL database username */
define('DB_USER', 'mishru');

/** MySQL database password */
define('DB_PASSWORD', '@dmin123');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'FZR8#IWxCxX|3I)BksD!s>M}c2;j;15*lu#G<=G-HCY 1>`OWfbZ>te8aZN3UR>s');
define('SECURE_AUTH_KEY',  ',S+RZRT,3/mcqib58BU{ApC~5Ixdyznin#UlfIJ <dUpwiU_8,2-=j.)/cBN25ed');
define('LOGGED_IN_KEY',    '=3T/x74-5/qcp,*mc*{DRIVI^Tuxvp +DJyjSyuw8|hWHK*oj/q<,;*aw!9!| =5');
define('NONCE_KEY',        '-]KLz?i~WXBMQvujGkr;KAZOFR| pD4Vlh%W0kdn_n8g+ZnnkW:&Hw+6/REICG,J');
define('AUTH_SALT',        'oYYUi6-9<$--j[bo%T#d+%_%{3)^O6V(2<CaBZ0}#C?u&72I<c!#W+pdf_C^I$Q5');
define('SECURE_AUTH_SALT', '.^3DPF $H=c3,o|98Ek| &?-RtLQr|^;=p2_)u^Tz;%1Pm{VZV;m>~0UU.e  Nl~');
define('LOGGED_IN_SALT',   'Qpw|IsGpI!&R7 &0RSLH|cW)bfYhD`AV1|d3>.qw}Wm-HyWWf4UdB4{-^=RK|<G`');
define('NONCE_SALT',       '>QI)]=1_0v7Y^Stli{Gi-OYjP[ [NQtscudWRWhP|Co.Co/ bp,w_444A`]vCm@1');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
