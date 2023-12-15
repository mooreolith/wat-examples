(module
  (func <signature> <locals> <body>)
  (func (param i32) (param i32) (result f64) ...)
  
  (func (param i32) (param f32) (local f64)
    local.get 0
    local.get 1
    local.get 2)

  (func (param $p1 i32) (param $p2 f32) (local $loc f64) ...)

  
)
