[Mesh]
    file  = mesh/bulk_gb_2.msh
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
  [./surf_ex_NBC]
    type = SurfExNBC
    variable = conc
    boundary = 'gb_top surface_top'
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
    block = 'surface bulk'
    prop_names  = 'diff1'
    prop_values = '0.021'
  [../]

  [./dm2]
    type = GenericConstantMaterial
    block = 'gb'
    prop_names  = 'diff1'
    prop_values = '39'
  [../]
[]

[Executioner]
  #type = Steady
  type = Transient
  num_steps = 10
  #ss_check_tol = 1e-05
  dt = 0.025
  solve_type = 'PJFNK'
[]

[Outputs]
  exodus = true
  file_base = 'Test_bulkgb_2i'
[]
