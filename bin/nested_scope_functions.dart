void main(){
    void myFunction(){
        print('Inside myFunction');
        void nestedFunction(){
            print('Inside nestedFunction');
        }
        nestedFunction();
    }
    myFunction();
}