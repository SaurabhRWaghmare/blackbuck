[Mesh]
    file  = mesh/quadmesh3.msh
[]


[Variables]
  [./conc]
      initial_condition = 0.033
  [../]
[]


[Kernels]

  [./diff]
    type = DiffMKernel
    variable = conc
    mat_prop = 'diff1'
  [../]

  [./time_conc]
    type = TimeDerivative
    variable = conc
  [../]
[]

[BCs]
  [./surf_ex_NBC1]
    type = SurfExNBC
    variable = conc
    boundary = ' surface_top'
    coefficient = 0.0033
    C_infinity = 0.33
  [../]

    [./surf_ex_NBC2]
    type = SurfExNBC
    variable = conc
    boundary = 'gb_top '
    coefficient = 0.18
    C_infinity = 0.33
  [../]

  #[./bottom]
  #  type = NeumannBC
  #  variable = conc
  #  boundary = 'right'
  #  value = -1
  #[../]
[]


[Materials]
  [./dm1]
    type = GenericConstantMaterial
    block = 'gb_surface'
    prop_names  = 'diff1'
    prop_values = '39'
    [../]

    [./dm2]
    type = GenericConstantMaterial
    block = 'surface'
    prop_names  = 'diff1'
    prop_values = '0.021'
  [../]

  [./dm3]
    type = GenericConstantMaterial
    block = 'bulk'
    prop_names  = 'diff1'
    prop_values = '0.021'
  [../]

  [./dm4]
    type = GenericConstantMaterial
    block = 'gb'
    prop_names  = 'diff1'
    prop_values = '39'
  [../]

[]


[Executioner]
  #type = Steady
  type = Transient
  num_steps = 15000
  ss_check_tol = 1e-05
  dt = 0.5
  solve_type = 'PJFNK'
[]

[Outputs]
  exodus = true
  file_base = 'Test_bulkgb_4i_9'
  
[]
