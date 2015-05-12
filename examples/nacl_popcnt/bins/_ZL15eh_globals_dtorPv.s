  .text
  .globl _ZL15eh_globals_dtorPv
  .type _ZL15eh_globals_dtorPv, @function

#! file-offset 0x4af40
#! rip-offset  0x4af40
#! capacity    192 bytes

# Text                            #  Line  RIP      Bytes  
._ZL15eh_globals_dtorPv:          #        0x4af40  0      
  pushq %r12                      #  1     0x4af40  3      
  movl %edi, %r12d                #  2     0x4af43  3      
  pushq %rbx                      #  3     0x4af46  2      
  subl $0x8, %esp                 #  4     0x4af48  3      
  addq %r15, %rsp                 #  5     0x4af4b  3      
  testq %r12, %r12                #  6     0x4af4e  3      
  je .L_4afe0                     #  7     0x4af51  6      
  movl %r12d, %r12d               #  8     0x4af57  3      
  movl (%r15,%r12,1), %edi        #  9     0x4af5a  4      
  testq %rdi, %rdi                #  10    0x4af5e  3      
  nop                             #  11    0x4af61  1      
  je .L_4afc0                     #  12    0x4af62  6      
  nop                             #  13    0x4af68  1      
  nop                             #  14    0x4af69  1      
.L_4af80:                         #        0x4af6a  0      
  movl %edi, %edi                 #  15    0x4af6a  2      
  movl 0x10(%r15,%rdi,1), %ebx    #  16    0x4af6c  5      
  addl $0x30, %edi                #  17    0x4af71  3      
  xchgw %ax, %ax                  #  18    0x4af74  3      
  nop                             #  19    0x4af77  1      
  callq ._Unwind_DeleteException  #  20    0x4af78  5      
  testq %rbx, %rbx                #  21    0x4af7d  3      
  movq %rbx, %rdi                 #  22    0x4af80  3      
  jne .L_4af80                    #  23    0x4af83  6      
  nop                             #  24    0x4af89  1      
  nop                             #  25    0x4af8a  1      
.L_4afc0:                         #        0x4af8b  0      
  addl $0x8, %esp                 #  26    0x4af8b  3      
  addq %r15, %rsp                 #  27    0x4af8e  3      
  movl %r12d, %edi                #  28    0x4af91  3      
  popq %rbx                       #  29    0x4af94  2      
  popq %r12                       #  30    0x4af96  3      
  jmpq .free                      #  31    0x4af99  5      
  nop                             #  32    0x4af9e  1      
.L_4afe0:                         #        0x4af9f  0      
  addl $0x8, %esp                 #  33    0x4af9f  3      
  addq %r15, %rsp                 #  34    0x4afa2  3      
  popq %rbx                       #  35    0x4afa5  2      
  popq %r12                       #  36    0x4afa7  3      
  popq %r11                       #  37    0x4afaa  3      
  andl $0xffffffe0, %r11d         #  38    0x4afad  7      
  addq %r15, %r11                 #  39    0x4afb4  3      
  jmpq %r11                       #  40    0x4afb7  3      
  nop                             #  41    0x4afba  1      
  nop                             #  42    0x4afbb  1      
  nop                             #  43    0x4afbc  1      
  nop                             #  44    0x4afbd  1      
  nop                             #  45    0x4afbe  1      
  nop                             #  46    0x4afbf  1      
  nop                             #  47    0x4afc0  1      
  nop                             #  48    0x4afc1  1      
  nop                             #  49    0x4afc2  1      
  nop                             #  50    0x4afc3  1      
  nop                             #  51    0x4afc4  1      
                                                           
.size _ZL15eh_globals_dtorPv, .-_ZL15eh_globals_dtorPv

