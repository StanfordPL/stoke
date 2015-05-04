  .text
  .globl _ZL15eh_globals_dtorPv
  .type _ZL15eh_globals_dtorPv, @function

#! file-offset 0x4afc0
#! rip-offset  0x4afc0
#! capacity    192 bytes

# Text                            #  Line  RIP      Bytes  
._ZL15eh_globals_dtorPv:          #        0x4afc0  0      
  pushq %r12                      #  1     0x4afc0  3      
  movl %edi, %r12d                #  2     0x4afc3  3      
  pushq %rbx                      #  3     0x4afc6  2      
  subl $0x8, %esp                 #  4     0x4afc8  3      
  addq %r15, %rsp                 #  5     0x4afcb  3      
  testq %r12, %r12                #  6     0x4afce  3      
  je .L_4b060                     #  7     0x4afd1  6      
  movl %r12d, %r12d               #  8     0x4afd7  3      
  movl (%r15,%r12,1), %edi        #  9     0x4afda  4      
  testq %rdi, %rdi                #  10    0x4afde  3      
  nop                             #  11    0x4afe1  1      
  je .L_4b040                     #  12    0x4afe2  6      
  nop                             #  13    0x4afe8  1      
  nop                             #  14    0x4afe9  1      
.L_4b000:                         #        0x4afea  0      
  movl %edi, %edi                 #  15    0x4afea  2      
  movl 0x10(%r15,%rdi,1), %ebx    #  16    0x4afec  5      
  addl $0x30, %edi                #  17    0x4aff1  3      
  xchgw %ax, %ax                  #  18    0x4aff4  3      
  nop                             #  19    0x4aff7  1      
  callq ._Unwind_DeleteException  #  20    0x4aff8  5      
  testq %rbx, %rbx                #  21    0x4affd  3      
  movq %rbx, %rdi                 #  22    0x4b000  3      
  jne .L_4b000                    #  23    0x4b003  6      
  nop                             #  24    0x4b009  1      
  nop                             #  25    0x4b00a  1      
.L_4b040:                         #        0x4b00b  0      
  addl $0x8, %esp                 #  26    0x4b00b  3      
  addq %r15, %rsp                 #  27    0x4b00e  3      
  movl %r12d, %edi                #  28    0x4b011  3      
  popq %rbx                       #  29    0x4b014  2      
  popq %r12                       #  30    0x4b016  3      
  jmpq .free                      #  31    0x4b019  5      
  nop                             #  32    0x4b01e  1      
.L_4b060:                         #        0x4b01f  0      
  addl $0x8, %esp                 #  33    0x4b01f  3      
  addq %r15, %rsp                 #  34    0x4b022  3      
  popq %rbx                       #  35    0x4b025  2      
  popq %r12                       #  36    0x4b027  3      
  popq %r11                       #  37    0x4b02a  3      
  andl $0xffffffe0, %r11d         #  38    0x4b02d  7      
  addq %r15, %r11                 #  39    0x4b034  3      
  jmpq %r11                       #  40    0x4b037  3      
  nop                             #  41    0x4b03a  1      
  nop                             #  42    0x4b03b  1      
  nop                             #  43    0x4b03c  1      
  nop                             #  44    0x4b03d  1      
  nop                             #  45    0x4b03e  1      
  nop                             #  46    0x4b03f  1      
  nop                             #  47    0x4b040  1      
  nop                             #  48    0x4b041  1      
  nop                             #  49    0x4b042  1      
  nop                             #  50    0x4b043  1      
  nop                             #  51    0x4b044  1      
                                                           
.size _ZL15eh_globals_dtorPv, .-_ZL15eh_globals_dtorPv

