<?php
/**
 * Created by PhpStorm.
 * User: ershov-ilya
 * Website: ershov.pw
 * GitHub : https://github.com/ershov-ilya
 * Date: 25.01.2015
 * Time: 11:36
 */

define('ABSPATH', '/var/www/ershov.ilya/data/www/ershov.pw/api/cron-git/hashes');
$res = shell_exec ( 'cd '.ABSPATH.'; git push ;' );
print $res;