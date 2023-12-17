(module
  (func (export "min") (param $i f32) (param $j f32) (result f32)
    local.get $i
    local.get $j
    f32.min)
  (func (export "max") (param $i f32) (param $j f32) (result f32)
    local.get $i
    local.get $j
    f32.max)
  (func (export "nearest") (param $i f32) (result f32)
    local.get $i
    f32.nearest)
  (func (export "ceiling") (param $i f32) (result f32)
    local.get $i
    f32.ceil)
  (func (export "floor") (param $i f32) (result f32)
    local.get $i
    f32.floor)
  (func (export "truncate") (param $i f32) (result f32)
    local.get $i
    f32.trunc)
  (func (export "absolute") (param $i f32) (result f32)
    local.get $i
    f32.abs)
  (func (export "negate") (param $i f32) (result f32)
    local.get $i
    f32.neg)
  (func (export "square_root") (param $i f32) (result f32)
    local.get $i
    f32.sqrt)
  (func (export "copy_sign") (param $number f32) (param $sign f32) (result f32)
    local.get $number
    local.get $sign
    f32.copysign)
)
