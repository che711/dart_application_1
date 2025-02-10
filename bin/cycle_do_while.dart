void main(){
  int counter = 0;
  do{
    counter++;
    if(counter == 4){
      break;
    }
    print("Hello, Dart: $counter");

  }while(counter < 10);
}