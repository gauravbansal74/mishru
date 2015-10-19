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
define('DB_NAME', 'db_blog');

/** MySQL database username */
define('DB_USER', 'root');

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
define('AUTH_KEY',         'OA/FG%T-#u!9`|NE1XKx<@8P1ldJ6jKt+*t94}+)BrTa} S[HNMl1K;+Bq(HX%et');
define('SECURE_AUTH_KEY',  '|euEpj~N^md8Mz%-iK?=n}lb2H(JB|_xiJvTFCBjku57H8sk0>tq0e;(kPYjrt,.');
define('LOGGED_IN_KEY',    '4iq!]ZLI<vT+tq&i=+kcmXd/mO4T|Z,z#lf^c3kRLjggQ|:|!Wo2ynC5HILNM?-?');
define('NONCE_KEY',        'E*CSW3]wN|&2|+0i:-!%YM%KNRfEI>B%5eR%En-aTQY>*UTlOLPXVv/P=z6 S!J4');
define('AUTH_SALT',        'Kt9Zq+((=xf~7=j(_)Kc?6pQ_%G6;ZPjkxJECq0!FzV-QciCP<[`NuI{%wR{D-++');
define('SECURE_AUTH_SALT', 'cz)UJM(&gC#NM!Mu7d8K13TMKLO|R-[nhR# CH<<L-Bb5bKRc(x=Lw8Jh,=C-x)A');
define('LOGGED_IN_SALT',   'O7QW53N_!jPqvA{o90{1i#NDHKa7rZ70&-2BU2c+;C$0czl#-f448S^-=8|9-X5.');
define('NONCE_SALT',       'G+L_/Wz4qH?QFV%@6.!,N1OFL~pxZkLO* 93L[q<^v+Y2+0+FF 6vYqU=+%ffpJZ');

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
