  .text
  .globl __do_global_dtors_aux
  .type __do_global_dtors_aux, @function
__do_global_dtors_aux:
  cmpb   $0x0,0x200969(%rip)        
  jne    .L_40070a
  pushq  %rbp
  movq   %rsp,%rbp
  callq  .L_400680
  popq   %rbp
  movb   $0x1,0x200956(%rip)        
.L_40070a:
  retq
  nop
  .size __do_global_dtors_aux, .-__do_global_dtors_aux
