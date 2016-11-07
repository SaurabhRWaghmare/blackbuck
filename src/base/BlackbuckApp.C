#include "BlackbuckApp.h"
#include "Moose.h"
#include "AppFactory.h"
#include "ModulesApp.h"
#include "MooseSyntax.h"

template<>
InputParameters validParams<BlackbuckApp>()
{
  InputParameters params = validParams<MooseApp>();

  params.set<bool>("use_legacy_uo_initialization") = false;
  params.set<bool>("use_legacy_uo_aux_computation") = false;
  params.set<bool>("use_legacy_output_syntax") = false;

  return params;
}

BlackbuckApp::BlackbuckApp(InputParameters parameters) :
    MooseApp(parameters)
{
  Moose::registerObjects(_factory);
  ModulesApp::registerObjects(_factory);
  BlackbuckApp::registerObjects(_factory);

  Moose::associateSyntax(_syntax, _action_factory);
  ModulesApp::associateSyntax(_syntax, _action_factory);
  BlackbuckApp::associateSyntax(_syntax, _action_factory);
}

BlackbuckApp::~BlackbuckApp()
{
}

// External entry point for dynamic application loading
extern "C" void BlackbuckApp__registerApps() { BlackbuckApp::registerApps(); }
void
BlackbuckApp::registerApps()
{
  registerApp(BlackbuckApp);
}

// External entry point for dynamic object registration
extern "C" void BlackbuckApp__registerObjects(Factory & factory) { BlackbuckApp::registerObjects(factory); }
void
BlackbuckApp::registerObjects(Factory & factory)
{
}

// External entry point for dynamic syntax association
extern "C" void BlackbuckApp__associateSyntax(Syntax & syntax, ActionFactory & action_factory) { BlackbuckApp::associateSyntax(syntax, action_factory); }
void
BlackbuckApp::associateSyntax(Syntax & /*syntax*/, ActionFactory & /*action_factory*/)
{
}
