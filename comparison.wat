(module
  (func (export "equal") (param $l i32 ) (param $r i32) (result i32)
    local.get $l
    local.get $r
    i32.eq)
  (func (export "not_equal") (param $l i32) (param $r i32) (result i32)
    local.get $l
    local.get $r
    i32.ne)
  (func (export "greater_than") (param $lhs i32) (param $rhs i32) (result i32)
    local.get $lhs
    local.get $rhs
    i32.gt_u)
  (func (export "less_than") (param $lhs i32) (param $rhs i32) (result i32)
    local.get $lhs
    local.get $rhs
    i32.lt_u)
  (func (export "greater_than_or_equal") (param $lhs i32) (param $rhs i32) (result i32)
    local.get $lhs
    local.get $rhs
    i32.ge_u)   
  (func (export "less_than_or_equal") (param $lhs i32) (param $rhs i32) (result i32)
    local.get $lhs
    local.get $rhs
    i32.le_u)
)
