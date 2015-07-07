  .text
  .globl tp_destroy
  .type tp_destroy, @function

#! file-offset 0x42ed
#! rip-offset  0x4042ed
#! capacity    30 bytes

# Text                              #  Line  RIP       Bytes  Opcode    
.tp_destroy:                        #        0x4042ed  0      OPC=0     
  pushq %rbx                        #  1     0x4042ed  1      OPC=1861  
  movq %rdi, %rbx                   #  2     0x4042ee  3      OPC=1162  
  movq (%rdi), %rdi                 #  3     0x4042f1  3      OPC=1161  
  callq .free_plt                   #  4     0x4042f4  5      OPC=260   
  leaq 0x10(%rbx), %rdi             #  5     0x4042f9  4      OPC=1069  
  callq .pthread_mutex_destroy_plt  #  6     0x4042fd  5      OPC=260   
  movq %rbx, %rdi                   #  7     0x404302  3      OPC=1162  
  popq %rbx                         #  8     0x404305  1      OPC=1694  
  jmpq .free_plt                    #  9     0x404306  5      OPC=930   
                                                                        
.size tp_destroy, .-tp_destroy

