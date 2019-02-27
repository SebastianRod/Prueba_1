function valida(f) {
  var ok = true;
  var msg = "Debes escribir algo en los campos:\n";
  if(f.elements[0].value == "")
  {
    msg += "- Usuario\n";
    ok = false;
  }

  if(f.elements["pwd"].value == "")
  {
    msg += "- Contraseña \n";
    ok = false;
  }

  if(ok == false)
    alert(msg);
  return ok;
}