(module
  (func (export "and") (param $i i32) (param $j i32) (result i32)
    local.get $i
    local.get $j
    i32.and)
  (func (export "or") (param $i i32) (param $j i32) (result i32)
    local.get $i
    local.get $j
    i32.or)
  (func (export "xor") (param $i i32) (param $j i32) (result i32)
    local.get $i
    local.get $j
    i32.xor)
  (func (export "shift_left") (param $num i32) (param $by i32) (result i32)
    local.get $num
    local.get $by
    i32.shl)
  (func (export "shift_right") (param $num i32) (param $by i32) (result i32)
    local.get $num
    local.get $by
    i32.shr_u)
  (func (export "rotate_left") (param $num i32) (param $by i32) (result i32)
    local.get $num
    local.get $by
    i32.rotl)
  (func (export "rotate_right") (param $num i32) (param $by i32) (result i32)
    local.get $num
    local.get $by
    i32.rotr)
  (func (export "count_leading_zeros") (param $i i32) (result i32)
    local.get $i
    i32.clz)
  (func (export "count_trailing_zeros") (param $i i32) (result i32)
    local.get $i
    i32.ctz)
  (func (export "population_count") (param $i i32) (result i32)
    local.get $i
    i32.popcnt)
)
