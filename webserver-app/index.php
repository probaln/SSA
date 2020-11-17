<html>
 <head>
  <title>PHP Test</title>
 </head>
 <body>
<?php

echo "Version 1.13";
echo "<br />\n";
	 
echo 'PHP Started, Attempting to connect';
echo "<br />\n";
	 
ob_flush();
	 
$db = pg_connect("host=ec2-18-191-89-146.us-east-2.compute.amazonaws.com port=5432 dbname=ssa user=postgres password=ss@");
$rs = pg_get_result($db);
	 
echo "Current table schema:";
echo "<br />\n";

$meta = pg_meta_data($db, 'ssa_table');
if (is_array($meta)) {
    echo '<pre>';
      var_dump($meta);
    echo '</pre>';
}
	 
echo 'Attempting to execute query';
echo "<br />\n";
$pgr = pg_query($db, "SELECT ssa_id, name FROM ssa_table");
echo 'Query Result:';

while ($row = pg_fetch_row($pgr)) {
	echo "SSA ID: $row[0]  Name: $row[1]";
	echo "<br />\n";
}
 ?> 
 </body>
</html>

