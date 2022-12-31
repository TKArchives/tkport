#include <tkport/tkport.hpp>

Tkport::Tkport(string message)
{
  this->message = message;
}

Tkport::~Tkport()
{
}

void Tkport::show()
{
  cout << message << endl;
}