  .text
  .globl _ZNKSt10error_code23default_error_conditionEv
  .type _ZNKSt10error_code23default_error_conditionEv, @function

#! file-offset 0x4efa0
#! rip-offset  0x4efa0
#! capacity    96 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNKSt10error_code23default_error_conditionEv:  #        0x4efa0  0      
  movl %edi, %edx                                #  1     0x4efa0  2      
  subl $0x8, %esp                                #  2     0x4efa2  3      
  addq %r15, %rsp                                #  3     0x4efa5  3      
  movl %edx, %edx                                #  4     0x4efa8  2      
  movl 0x4(%r15,%rdx,1), %edi                    #  5     0x4efaa  5      
  movl %edx, %edx                                #  6     0x4efaf  2      
  movl (%r15,%rdx,1), %esi                       #  7     0x4efb1  4      
  movl %edi, %edi                                #  8     0x4efb5  2      
  movl (%r15,%rdi,1), %eax                       #  9     0x4efb7  4      
  nop                                            #  10    0x4efbb  1      
  movl %eax, %eax                                #  11    0x4efbc  2      
  movl 0x10(%r15,%rax,1), %eax                   #  12    0x4efbe  5      
  xchgw %ax, %ax                                 #  13    0x4efc3  3      
  nop                                            #  14    0x4efc6  1      
  andl $0xffffffe0, %eax                         #  15    0x4efc7  5      
  addq %r15, %rax                                #  16    0x4efcc  3      
  callq %rax                                     #  17    0x4efcf  2      
  addl $0x8, %esp                                #  18    0x4efd1  3      
  addq %r15, %rsp                                #  19    0x4efd4  3      
  popq %r11                                      #  20    0x4efd7  3      
  andl $0xffffffe0, %r11d                        #  21    0x4efda  7      
  addq %r15, %r11                                #  22    0x4efe1  3      
  jmpq %r11                                      #  23    0x4efe4  3      
  nop                                            #  24    0x4efe7  1      
  nop                                            #  25    0x4efe8  1      
  nop                                            #  26    0x4efe9  1      
  nop                                            #  27    0x4efea  1      
  nop                                            #  28    0x4efeb  1      
  nop                                            #  29    0x4efec  1      
  nop                                            #  30    0x4efed  1      
  nop                                            #  31    0x4efee  1      
  nop                                            #  32    0x4efef  1      
  nop                                            #  33    0x4eff0  1      
  nop                                            #  34    0x4eff1  1      
  nop                                            #  35    0x4eff2  1      
  nop                                            #  36    0x4eff3  1      
  nop                                            #  37    0x4eff4  1      
                                                                          
.size _ZNKSt10error_code23default_error_conditionEv, .-_ZNKSt10error_code23default_error_conditionEv

