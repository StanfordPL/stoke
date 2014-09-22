  .text
  .globl __do_global_dtors_aux
  .type __do_global_dtors_aux, @function
__do_global_dtors_aux:
  cmpb   $0x0,0x200b59(%rip)        
  jne    .L_4004fa
  pushq  %rbp
  movq   %rsp,%rbp
  callq  .L_400470
  popq   %rbp
  movb   $0x1,0x200b46(%rip)        
.L_4004fa:
  retq
  nop
  .size __do_global_dtors_aux, .-__do_global_dtors_aux
