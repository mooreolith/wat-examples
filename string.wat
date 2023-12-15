(module
  (import "console" "log" (func $log (param i32 i32)))
  (import "js" "mem" (memory 1))
  (data (i32.const 0) "Hi")
  (func (export "writeHi")
    i32.const 0 ;; pass 0 offset to log
    i32.const 2 ;; pass length 2 to log
    call $log))
