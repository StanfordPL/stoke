  .text
  .global test_target
  .type test_target, @function
test_target:
  movq  $0x1,%rax
  retq
 
