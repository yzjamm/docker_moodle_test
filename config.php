<?php  // Moodle configuration file

unset($CFG);
global $CFG;
$CFG = new stdClass();

$CFG->dbtype    = 'mariadb';
$CFG->dblibrary = 'native';
$CFG->dbhost    = 'dbhosthere';
$CFG->dbname    = 'dbnamehere';
$CFG->dbuser    = 'dbuserhere';
$CFG->dbpass    = 'dbpwdhere';
$CFG->prefix    = 'mdl_';
$CFG->dboptions = array (
  'dbpersist' => 0,
  'dbport' => '',
  'dbsocket' => '',
  'dbcollation' => 'utf8_unicode_ci',
);
$CFG->loginhttps=0;
$CFG->wwwroot   = 'http://wwwroothere';
$CFG->dataroot  = 'dataroothere';
$CFG->admin     = 'admin';

$CFG->directorypermissions = 0777;
$CFG->upgradekey = 'wuhan123';

require_once(__DIR__ . '/lib/setup.php');

// There is no php closing tag in this file,
// it is intentional because it prevents trailing whitespace problems!
