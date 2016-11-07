#ifndef BLACKBUCKAPP_H
#define BLACKBUCKAPP_H

#include "MooseApp.h"

class BlackbuckApp;

template<>
InputParameters validParams<BlackbuckApp>();

class BlackbuckApp : public MooseApp
{
public:
  BlackbuckApp(InputParameters parameters);
  virtual ~BlackbuckApp();

  static void registerApps();
  static void registerObjects(Factory & factory);
  static void associateSyntax(Syntax & syntax, ActionFactory & action_factory);
};

#endif /* BLACKBUCKAPP_H */
