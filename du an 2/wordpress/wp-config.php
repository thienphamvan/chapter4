<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

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
define('AUTH_KEY',         'uZ/0=$n[d;_O{^uBOl9~S62<44NdhiPE!$.)GLeX4?|%+@3!@7~tT1v%*eWF=9I+');
define('SECURE_AUTH_KEY',  'h7F^a0$w=j1*jA:gaX01D0bE_RN!{PM=us_]u2^rYy)]UgVq}Kfegy6y1pcuN5,?');
define('LOGGED_IN_KEY',    'l1~r5c_%)IWU3TlSTa0^}$nceCMr4^As*q^P)7PUa8i:h=es$%N)W_Wf+{!?sS8/');
define('NONCE_KEY',        '0!d8#a0Q!Qs0?Ui$p^{0|.O+-MvL|3l4j<3~R/,9PY5!sz>ufMKmcso4MaX.N-kO');
define('AUTH_SALT',        'a+OV#lbAnE.0-Fn~I1h,2vI>S|!ysoO<7%EVT@nk.e6*6=# C(uci3;k<Pq[[LF4');
define('SECURE_AUTH_SALT', 'NTBJ0/0I3-V1[v:tQdf 6r/ik?nfdJe>u/?S0tJ*U@</uEygxD.ur^EfTurF[7[.');
define('LOGGED_IN_SALT',   '(:Zt|L`so8N3r-[sN{G9Y Pu.&k@Ucl1(VM{x`<BLLAtwf:Puj:lc:)!a~Hxp],K');
define('NONCE_SALT',       'Mf4[~z_9`E@wJjuw*;_$L4G_Bds`yXmtlLLb}c[UMxuFpB0/I*ze=v[Kx)G=V@sT');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
