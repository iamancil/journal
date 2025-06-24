#include <bits/stdc++.h>
using namespace std;

int main(){

  pair<int,int> p1 = {13,14};
  cout << p1.first;

  pair<int, pair<int,int>> p2 = {13,{14,15}};
  cout << p2.second.first;

  pair<int,int> arr[] = {{13,14},{14,15},{16,17}};
  cout << arr[2].first;

}

