  .text
  .globl __do_global_dtors_aux
  .type __do_global_dtors_aux, @function
__do_global_dtors_aux:
  cmpb   $0x0,0x208d61(%rip)        
  jne    .L_40258a
  pushq  %rbp
  movq   %rsp,%rbp
  callq  .L_402500
  popq   %rbp
  movb   $0x1,0x208d4e(%rip)        
.L_40258a:
  retq
  nop
  .size __do_global_dtors_aux, .-__do_global_dtors_aux
