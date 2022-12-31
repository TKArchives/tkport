#ifndef tkport_hpp
#define tkport_hpp

#include <iostream>

using namespace std;

class Tkport
{
private:
  string message;
public:
  Tkport(string message);
  ~Tkport();

  void show();
};

#endif /* tkport_hpp */
