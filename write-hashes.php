<?php
/**
 * Created by PhpStorm.
 * User: ershov-ilya
 * Website: ershov.pw
 * GitHub : https://github.com/ershov-ilya
 * Date: 24.01.2015
 * Time: 20:58
 */

header('Content-Type: text/plain; charset=utf-8');

function generateRandomString($length = 10) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}

$content=generateRandomString(256);

file_put_contents('../hashes/random-string-256.txt',$content);
file_put_contents('../hashes/random-string-128.txt',substr($content,0,128));

$name = substr($content,0,12);
print $name;

