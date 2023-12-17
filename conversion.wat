(module
  (func (export "extend") (param $i i32) (result i64)
    local.get $i
    i64.extend_i32_s)
  (func (export "wrap") (param $i i64) (result i32)
    local.get $i
    i32.wrap_i64)
  (func (export "promote") (param $f f32) (result f64)
    local.get $f
    f64.promote_f32)
  (func (export "demote") (param $f f64) (result f32)
    local.get $f
    f32.demote_f64)
  (func (export "convert") (param $i i32) (result f32)
    local.get $i
    f32.convert_i32_s)
  (func (export "truncate") (param $f f32) (result i32)
    local.get $f
    i32.trunc_f32_s)
  (func (export "reinterpret") (param $f f32) (result i32)
    local.get $f
    i32.reinterpret_f32)
)