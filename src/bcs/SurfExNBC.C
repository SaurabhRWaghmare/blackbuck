/****************************************************************/
/* MOOSE - Multiphysics Object Oriented Simulation Environment  */
/*                                                              */
/*          All contents are licensed under LGPL V2.1           */
/*             See LICENSE for full restrictions                */
/****************************************************************/
#include "SurfExNBC.h"

#include "Function.h"

template<>
InputParameters validParams<SurfExNBC>()
{
  InputParameters params = validParams<IntegratedBC>();
  params.addRequiredParam<Real>("C_infinity", "Final equilibrium concentration");
  params.addRequiredParam<Real>("coefficient", "Exchange coefficient");

  return params;
}

SurfExNBC::SurfExNBC(const InputParameters & parameters) :
    IntegratedBC(parameters),
    _C_infinity(getParam<Real>("C_infinity")),
    _coefficient(getParam<Real>("coefficient"))
{}


Real
SurfExNBC::computeQpResidual()
{
  return _test[_i][_qp] * _coefficient * (_u[_qp] - _C_infinity);
}

Real
SurfExNBC::computeQpJacobian()
{
  return _test[_i][_qp] * _coefficient * _phi[_j][_qp];
}
