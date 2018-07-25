<?php
// $ php php_summary.php

// comment

/*
comment 
*/

echo "\n## Hello world sample\n";
echo "Hello world\n";

echo "\n\n## string type sample\n";
$str = "string_value";
echo $str;
echo "\n";
var_dump($str);

echo "\n\n## integer type sample\n";
$int = 1;
echo $int;
echo "\n";
var_dump($int);

echo "\n\n## float type sample\n";
$float = 1.23;
echo $float;
echo "\n";
var_dump($float);

echo "\n\n## boolean true type sample\n";
$bool_true = true;
echo $bool_true;
echo "\n";
var_dump($bool_true);

echo "\n\n## boolean false type sample\n";
$bool_false = false;
echo $bool_false;
echo "\n";
var_dump($bool_false);

echo "\n\n## constant definition\n";
const CONSTANT = "constant";
echo CONSTANT;
echo "\n";

define("HEIGHT", 1);
echo HEIGHT;
echo "\n";

echo "\n\n## embeded define\n";
var_dump(__LINE__);
var_dump(__FILE__);
var_dump(__DIR__);
