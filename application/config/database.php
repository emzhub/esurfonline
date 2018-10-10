<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------
| DATABASE CONNECTIVITY SETTINGS
| -------------------------------------------------------------------
| This file will contain the settings needed to access your database.
|
| For complete instructions please consult the 'Database Connection'
| page of the User Guide.
|
| -------------------------------------------------------------------
| EXPLANATION OF VARIABLES
| -------------------------------------------------------------------
|
|	['dsn']      The full DSN string describe a connection to the database.
|	['hostname'] The hostname of your database server.
|	['username'] The username used to connect to the database
|	['password'] The password used to connect to the database
|	['database'] The name of the database you want to connect to
|	['dbdriver'] The database driver. e.g.: mysqli.
|			Currently supported:
|				 cubrid, ibase, mssql, mysql, mysqli, oci8,
|				 odbc, pdo, postgre, sqlite, sqlite3, sqlsrv
|	['dbprefix'] You can add an optional prefix, which will be added
|				 to the table name when using the  Query Builder class
|	['pconnect'] TRUE/FALSE - Whether to use a persistent connection
|	['db_debug'] TRUE/FALSE - Whether database errors should be displayed.
|	['cache_on'] TRUE/FALSE - Enables/disables query caching
|	['cachedir'] The path to the folder where cache files should be stored
|	['char_set'] The character set used in communicating with the database
|	['dbcollat'] The character collation used in communicating with the database
|				 NOTE: For MySQL and MySQLi databases, this setting is only used
| 				 as a backup if your server is running PHP < 5.2.3 or MySQL < 5.0.7
|				 (and in table creation queries made with DB Forge).
| 				 There is an incompatibility in PHP with mysql_real_escape_string() which
| 				 can make your site vulnerable to SQL injection if you are using a
| 				 multi-byte character set and are running versions lower than these.
| 				 Sites using Latin-1 or UTF-8 database character set and collation are unaffected.
|	['swap_pre'] A default table prefix that should be swapped with the dbprefix
|	['encrypt']  Whether or not to use an encrypted connection.
|
|			'mysql' (deprecated), 'sqlsrv' and 'pdo/sqlsrv' drivers accept TRUE/FALSE
|			'mysqli' and 'pdo/mysql' drivers accept an array with the following options:
|
|				'ssl_key'    - Path to the private key file
|				'ssl_cert'   - Path to the public key certificate file
|				'ssl_ca'     - Path to the certificate authority file
|				'ssl_capath' - Path to a directory containing trusted CA certificats in PEM format
|				'ssl_cipher' - List of *allowed* ciphers to be used for the encryption, separated by colons (':')
|				'ssl_verify' - TRUE/FALSE; Whether verify the server certificate or not ('mysqli' only)
|
|	['compress'] Whether or not to use client compression (MySQL only)
|	['stricton'] TRUE/FALSE - forces 'Strict Mode' connections
|							- good for ensuring strict SQL while developing
|	['ssl_options']	Used to set various SSL options that can be used when making SSL connections.
|	['failover'] array - A array with 0 or more data for connections if the main should fail.
|	['save_queries'] TRUE/FALSE - Whether to "save" all executed queries.
| 				NOTE: Disabling this will also effectively disable both
| 				$this->db->last_query() and profiling of DB queries.
| 				When you run a query, with this setting set to TRUE (default),
| 				CodeIgniter will store the SQL statement for debugging purposes.
| 				However, this may cause high memory usage, especially if you run
| 				a lot of SQL queries ... disable this to avoid that problem.
|
| The $active_group variable lets you choose which connection group to
| make active.  By default there is only one group (the 'default' group).
|
| The $query_builder variables lets you determine whether or not to load
| the query builder class.
*/
$active_group = 'default';
$query_builder = TRUE;

$db['default'] = array(
	'dsn'	=> '',
	'hostname' => 'localhost',
	'username' => 'root',
	'password' => 'k',
	'database' => 'elrojavy_esurfblog',
	'dbdriver' => 'mysqli',
	'dbprefix' => '',
	'pconnect' => FALSE,
	'db_debug' => (ENVIRONMENT !== 'development'),
	'cache_on' => FALSE,
	'cachedir' => '',
	'char_set' => 'utf8',
	'dbcollat' => 'utf8_general_ci',
	'swap_pre' => '',
	'encrypt' => FALSE,
	'compress' => TRUE,
	'stricton' => FALSE,
	'failover' => array(),
	'save_queries' => TRUE
);

$db['db'] = array(
	'dsn'	=> '',
	'hostname' => 'localhost',
	'username' => 'root',
	'password' => 'k',
	'database' => 'elrojavy_esurfmkc',
	'dbdriver' => 'mysqli',
	'dbprefix' => '',
	'pconnect' => FALSE,
	'db_debug' => (ENVIRONMENT !== 'development'),
	'cache_on' => FALSE,
	'cachedir' => '',
	'char_set' => 'utf8',
	'dbcollat' => 'utf8_general_ci',
	'swap_pre' => '',
	'encrypt' => FALSE,
	'compress' => TRUE,
	'stricton' => FALSE,
	'failover' => array(),
	'save_queries' => TRUE
);









// $db['default'] = array(
//     'dsn'      => '',
//     'hostname' => '',
//     'username' => '',
//     'password' => '',
//     'database' => './application/database/data.db',
//     'dbdriver' => 'sqlite3',
//     'dbprefix' => '',
//     'pconnect' => FALSE,
//     'db_debug' => (ENVIRONMENT !== 'production'),
//     'cache_on' => FALSE,
//     'cachedir' => '',
//     'char_set' => 'utf8',
//     'dbcollat' => 'utf8_general_ci',
//     'swap_pre' => '',
//     'encrypt'  => FALSE,
//     'compress' => FALSE,
//     'stricton' => FALSE,
//     'failover' => array(),
//     'save_queries' => TRUE
// );
// Or you can use this (with PDO database driver which requires dsn string, otherwise CI will try to build it)

// $db['default'] = array(
//     'dsn'      => 'sqlite:application/database/data.db',// path/to/database
//     'hostname' => '',
//     'username' => '',
//     'password' => '',
//     'database' => '',
//     'dbdriver' => 'pdo',
//     'dbprefix' => '',
//     'pconnect' => FALSE,
//     'db_debug' => (ENVIRONMENT !== 'production'),
//     'cache_on' => FALSE,
//     'cachedir' => '',
//     'char_set' => 'utf8',
//     'dbcollat' => 'utf8_general_ci',
//     'swap_pre' => '',
//     'encrypt'  => FALSE,
//     'compress' => FALSE,
//     'stricton' => FALSE,
//     'failover' => array(),
//     'save_queries' => TRUE
// );


// Now, to actually use the second database, you have to send the connection to another variabel that you can use in your model:

// function my_model_method()
// {
//   $otherdb = $this->load->database('otherdb', TRUE); // the TRUE paramater tells CI that you'd like to return the database object.

//   $query = $otherdb->select('first_name, last_name')->get('person');
//   var_dump($query);
// }


// In autoload.php config file
// $autoload['libraries'] = array('database', 'email', 'session');


// The default database is worked fine by autoload the database library but second database load and connect by using constructor in model and controller...
// <?php
//     class Seconddb_model extends CI_Model {
//         function __construct(){
//             parent::__construct();
//             //load our second db and put in $db2
//             $this->db2 = $this->load->database('second', TRUE);
//         }

//         public function getsecondUsers(){
//             $query = $this->db2->get('members');
//             return $query->result(); 
//         }

//     }
//Default database query
// $this->db->select('first_name, last_name');
// $this->db->from('users');
// $this->db->where('id', 99);
// $query = $this->db->get();


// //Another database query
// $DB2->select('image');
// $DB2->from('cdn_images');
// $DB2->where('id', 25);
// $query = $DB2->get();