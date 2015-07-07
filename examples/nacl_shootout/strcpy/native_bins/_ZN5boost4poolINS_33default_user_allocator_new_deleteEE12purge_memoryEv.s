  .text
  .globl _ZN5boost4poolINS_33default_user_allocator_new_deleteEE12purge_memoryEv
  .type _ZN5boost4poolINS_33default_user_allocator_new_deleteEE12purge_memoryEv, @function

#! file-offset 0x3f38
#! rip-offset  0x403f38
#! capacity    92 bytes

# Text                                                                     #  Line  RIP       Bytes  Opcode    
._ZN5boost4poolINS_33default_user_allocator_new_deleteEE12purge_memoryEv:  #        0x403f38  0      OPC=0     
  pushq %r12                                                               #  1     0x403f38  2      OPC=1861  
  pushq %rbp                                                               #  2     0x403f3a  1      OPC=1861  
  pushq %rbx                                                               #  3     0x403f3b  1      OPC=1861  
  movq %rdi, %r12                                                          #  4     0x403f3c  3      OPC=1162  
  movq 0x8(%rdi), %rdi                                                     #  5     0x403f3f  4      OPC=1161  
  movq 0x10(%r12), %rdx                                                    #  6     0x403f43  5      OPC=1161  
  testq %rdi, %rdi                                                         #  7     0x403f48  3      OPC=2438  
  je .L_403f8c                                                             #  8     0x403f4b  6      OPC=893   
  nop                                                                      #  9     0x403f51  1      OPC=1343  
  nop                                                                      #  10    0x403f52  1      OPC=1343  
.L_403f4d:                                                                 #        0x403f53  0      OPC=0     
  movq -0x8(%rdi,%rdx,1), %rbx                                             #  11    0x403f53  5      OPC=1161  
  movq -0x10(%rdi,%rdx,1), %rbp                                            #  12    0x403f58  5      OPC=1161  
  callq ._ZdaPv_plt                                                        #  13    0x403f5d  5      OPC=260   
  movq %rbp, %rdi                                                          #  14    0x403f62  3      OPC=1162  
  movq %rbx, %rdx                                                          #  15    0x403f65  3      OPC=1162  
  testq %rbp, %rbp                                                         #  16    0x403f68  3      OPC=2438  
  jne .L_403f4d                                                            #  17    0x403f6b  6      OPC=963   
  nop                                                                      #  18    0x403f71  1      OPC=1343  
  nop                                                                      #  19    0x403f72  1      OPC=1343  
  movq $0x0, 0x8(%r12)                                                     #  20    0x403f73  9      OPC=1137  
  movq $0x0, (%r12)                                                        #  21    0x403f7c  8      OPC=1137  
  movq 0x28(%r12), %rax                                                    #  22    0x403f84  5      OPC=1161  
  movq %rax, 0x20(%r12)                                                    #  23    0x403f89  5      OPC=1138  
  movl $0x1, %eax                                                          #  24    0x403f8e  5      OPC=1154  
  popq %rbx                                                                #  25    0x403f93  1      OPC=1694  
  popq %rbp                                                                #  26    0x403f94  1      OPC=1694  
  popq %r12                                                                #  27    0x403f95  2      OPC=1694  
  retq                                                                     #  28    0x403f97  1      OPC=1978  
.L_403f8c:                                                                 #        0x403f98  0      OPC=0     
  xorl %eax, %eax                                                          #  29    0x403f98  2      OPC=3758  
  popq %rbx                                                                #  30    0x403f9a  1      OPC=1694  
  popq %rbp                                                                #  31    0x403f9b  1      OPC=1694  
  popq %r12                                                                #  32    0x403f9c  2      OPC=1694  
  retq                                                                     #  33    0x403f9e  1      OPC=1978  
  nop                                                                      #  34    0x403f9f  1      OPC=1343  
                                                                                                               
.size _ZN5boost4poolINS_33default_user_allocator_new_deleteEE12purge_memoryEv, .-_ZN5boost4poolINS_33default_user_allocator_new_deleteEE12purge_memoryEv

