<?hh

function f(stdClass $val = ((object)array(1=>2,3=>4))) {
  echo "val = ";
  var_dump($val);
}


<<__EntryPoint>>
function main_instance_default() {
f();
}
