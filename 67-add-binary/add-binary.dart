class Solution {
String addBinary(String a,String b){
  int i=a.length-1,j=b.length-1,carry=0;
  String res="";
  while(i>=0||j>=0||carry==1){
    int sum=carry;
    if(i>=0) sum+=int.parse(a[i--]);
    if(j>=0) sum+=int.parse(b[j--]);
    res="${sum%2}$res";
    carry=sum~/2;
  }
  return res;
}
}