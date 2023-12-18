(module
  (memory 1 2)
  (func (export "grow") (result i32)
    (i32.const 1)
    memory.grow)
  (func (export "size") (result i32)
    memory.size)
  (func (export "load") (result i32)
    (i32.const 0)
    i32.load)
  (func (export "store")
    i32.const 0
    i32.const 42
    i32.store)
)