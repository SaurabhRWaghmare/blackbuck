[Mesh]
    file  = mesh/bulk_gb.msh
[]


[Variables]
  [./conc]
      initial_condition = 0
  [../]
[]


[Kernels]

  [./diffm1]
    type = DiffMKernel
    variable = conc
    mat_prop = 'diff1'
    block = 'film surface'
  [../]

  [./diffm2]
    type = DiffMKernel
    variable = conc
    mat_prop = diff2
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
    coefficient =1
    C_infinity =1
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
    block = 'film surface'
    prop_names  = 'diff1'
    prop_values = '10'
  [../]

  [./dm2]
    type = GenericConstantMaterial
    block = 'gb'
    prop_names  = 'diff2'
    prop_values = '10'
  [../]
[]

[Executioner]
  #type = Steady
  type = Transient
  num_steps = 500
  ss_check_tol = 1e-07
  dt = 0.01
  solve_type = 'PJFNK'
[]

[Outputs]
  exodus = true
  file_base = 'Test_diffD_500_k'
[]
