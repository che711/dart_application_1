void main() {
  // // var person = getName;
  // Function person = getName;

  // person();
  // person = getLastName;
  // person();

  // getPerson(getName);
  // getPerson(getLastName);

  Function myPerson =  getNameOrLastName('Test');
  myPerson();
}

Function getNameOrLastName(String nameOrLastName) {
  if (nameOrLastName == 'Andrew') {
    return getName;
  } else {
    return getLastName;
  }
}

void getPerson(Function myFunction) {
  myFunction();
}

void getName() {
  print('Andrew');
}

void getLastName() {
  print('Che');
}
