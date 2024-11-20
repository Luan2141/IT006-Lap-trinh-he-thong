#include <iostream>
using namespace std;
int main() {
   string user="661825110";
   string test ="7`ZK_";
   char v4[9];
   for(int i=0; i<9;i++){
        if ( i > 1 )
    {
      if ( i > 3 )
        v4[i] = test[i - 4];
      else
        v4[i] = user[i + 5];
    }
    else
    {
      v4[i] = user[i + 2];
    }
   }
   for(int i=0;i<9;i++){
    cout<<v4[i];
   }
   cout<<"\n";
   
   for(int i=0;i<9;i++){
       char a = (user[i] + v4[i]) / 2;
       cout<<a;
   }
   
}