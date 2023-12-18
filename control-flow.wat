(module
  (import "console" "log" (func $log (param i32)))
  (import "env" "greet" (func $greet))
  
  (global $i (mut i32) (i32.const 0))

  (func (export "block") (param $num i32) (result i32)
    (block $block_name
      local.get $num
      i32.const 0
      i32.eq
      (if
        (then
          br $block_name
        )
      )

      local.get $num
      i32.const 10
      i32.mul
      local.set $num
    )

    local.get $num
  )

  (func (export "branch") (param $i i32)
    (loop $my_loop
      
      ;; add one to $i
      global.get $i
      i32.const 1
      i32.add
      global.set $i

      ;; log the current value of $i
      global.get $i
      call $log

      ;; if $i is less than 10 branch to loop
      global.get $i
      i32.const 10
      i32.lt_s
      br_if $my_loop
    )
  )

  (func (export "call")
    call $greet)

  (func (export "drop")
    ;; load two values onto the stack
    i32.const 10
    i32.const 20

    ;; drop the top item from the stack (20)
    drop

    ;; log the top value on the stack (10)
    call $log
  )

  (func (export "end") (param $in i32)
    local.get $in
    if
      i32.const 1000
      call $log
    end ;; can end "block", "loop", "if", or "else".
  )

  (func (export "ifelse") (param $in i32) (result i32)
    (local $out i32)
    local.get $in
    i32.const 1
    i32.eq
    (if
      (then
        i32.const 10
        local.set $out
      )
      (else
        i32.const 0
        local.set $out
      )
    )

    local.get $out
  )

  (func (export "loop") (param $count i32)
    (local $i i32)
    (local.set $i (i32.const 0))
    (loop $didoop
      ;; add one to $i
      local.get $i
      i32.const 1
      i32.add
      local.set $i

      ;; log the current value of $i
      local.get $i
      call $log

      ;; if $i is less than 10 branch to loop
      local.get $i
      local.get $count
      i32.lt_s
      br_if $didoop
    )
  )

  (func (export "nothing")
    nop)

  (func (export "return") (result i32)
    i32.const 10
    i32.const 90
    return
  )

  (func (export "select") (param $in i32) (result i32)
    i32.const 100
    i32.const 0
    local.get $in
    select
  )

  (func (export "unreachable") 
    unreachable)
)