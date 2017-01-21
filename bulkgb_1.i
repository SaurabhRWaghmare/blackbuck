[Mesh]
    file  = mesh/bulk_gb_1.msh
[]


[Variables]
  [./conc]
      initial_condition = 0.033
  [../]
[]


[Kernels]

  [./diffm1]
    type = DiffMKernel
    variable = conc
    mat_prop = 'diff1'
    block = ' surface'
  [../]

  [./diffm2]
    type = DiffMKernel
    variable = conc
    mat_prop = 'diff2'
    block = 'bulk '
  [../]

  [./diffm3]
    type = DiffMKernel
    variable = conc
    mat_prop = 'diff3'
    block = 'gb'
  [../]

  [./time_conc]
    type = TimeDerivative
    variable = conc
  [../]
[]

[BCs]
  [./surf_ex_NBC]
    type = SurfExNBC
    variable = conc
    boundary = 'gb_top surface_top'
    coefficient =0.18
    C_infinity =0.33
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
    block = 'surface'
    prop_names  = 'diff1'
    prop_values = '1'
  [../]

  [./dm2]
    type = GenericConstantMaterial
    block = 'bulk '
    prop_names  = 'diff2'
    prop_values = '1'
  [../]

  [./dm3]
    type = GenericConstantMaterial
    block = 'gb'
    prop_names  = 'diff3'
    prop_values = '39'
  [../]
[]

[Executioner]
  #type = Steady
  
  type = Transient
  num_steps = 500
  ss_check_tol = 1e-05
  dt = 0.05
  solve_type = 'PJFNK'
[]

[Outputs]
  exodus = true
  file_base = 'Test_bulkgb_1'
[]
