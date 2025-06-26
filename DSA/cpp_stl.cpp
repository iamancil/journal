#include <bits/stdc++.h>
#include <utility>
#include <vector>
using namespace std;

void learnPair() {

  pair<int, int> p1 = {13, 14};
  cout << p1.first;

  pair<int, pair<int, int>> p2 = {13, {14, 15}};
  cout << p2.second.first;

  pair<int, int> arr[] = {{13, 14}, {14, 15}, {16, 17}};
  cout << arr[2].first;
}

void expainVectors() {
  vector<int> v;
  v.push_back(5);
  v.emplace_back(6);

  vector<pair<int, int>> p;
  p.push_back({8,9});
  p.emplace_back(5,6);
}
