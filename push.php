<?php
/**
 * Created by PhpStorm.
 * User: ershov-ilya
 * Website: ershov.pw
 * GitHub : https://github.com/ershov-ilya
 * Date: 25.01.2015
 * Time: 10:52
 */

header('Content-Type: text/plain; charset=utf-8');
error_reporting(E_ALL);
ini_set("display_errors", 1);

require('../Git.php/Git.php');

$repo = Git::open('../hashes/');

$repo->add('.');
$repo->commit('Some commit message');
$repo->push('origin', 'master');