void main(List<String> args)
    {
        try {
            List<int> empid = [101,102,103,104,105] ;
            print(empid[6]);
        } 
        catch(ArrayIndexOutOfBound){
          print('Given ID is out of bound');
        }
    }