(module
  (func (export "eggCount") (param $number i32) (result i32)
    (local i32)             ;; Define a local variable to store the count of eggs
    (local.set 1 (i32.const 0)) ;; Initialize the local variable to 0

    ;; Convert the input to binary and count the eggs
    (loop
      (if
        (i32.eqz (local.get 0))  ;; Check if the input is zero
        (br 1)                  ;; If so, exit the loop

        ;; Check the least significant bit
        (if
          (i32.and (local.get 0) (i32.const 1)) ;; Check if the least significant bit is 1
          (i32.add (local.get 1) (i32.const 1)) ;; If so, increment the egg count
          (nop)                               ;; If not, do nothing
        )

        ;; Right shift the input by one bit
        (local.set 0 (i32.shr_u (local.get 0) (i32.const 1)))

        ;; Continue looping
        (br 0)
      )
    )

    (local.get 1)  ;; Return the count of eggs
  )
)
