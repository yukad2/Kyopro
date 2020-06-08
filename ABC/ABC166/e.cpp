#include <bits/stdc++.h>
using namespace std;

int main() {
  int N;
  cin >> N;

  vector<int> A(N);
  for (int i = 0; i < N; i++) {
    cin >> A.at(i);
  }
  long int ans=0;
  for(int i=0;i<N;i++){
      for(int k=0;k<N-i-1;k++){
            if ((A.at(i+k+1)+A.at(i)) == (k+1)) 
                ans += 1;
      }
  }
  cout << ans << endl;
}

