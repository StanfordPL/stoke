  .text
  .globl _ZL15eh_globals_dtorPv
  .type _ZL15eh_globals_dtorPv, @function

#! file-offset 0x4af20
#! rip-offset  0x4af20
#! capacity    192 bytes

# Text                            #  Line  RIP      Bytes  
._ZL15eh_globals_dtorPv:          #        0x4af20  0      
  pushq %r12                      #  1     0x4af20  3      
  movl %edi, %r12d                #  2     0x4af23  3      
  pushq %rbx                      #  3     0x4af26  2      
  subl $0x8, %esp                 #  4     0x4af28  3      
  addq %r15, %rsp                 #  5     0x4af2b  3      
  testq %r12, %r12                #  6     0x4af2e  3      
  je .L_4afc0                     #  7     0x4af31  6      
  movl %r12d, %r12d               #  8     0x4af37  3      
  movl (%r15,%r12,1), %edi        #  9     0x4af3a  4      
  testq %rdi, %rdi                #  10    0x4af3e  3      
  nop                             #  11    0x4af41  1      
  je .L_4afa0                     #  12    0x4af42  6      
  nop                             #  13    0x4af48  1      
  nop                             #  14    0x4af49  1      
.L_4af60:                         #        0x4af4a  0      
  movl %edi, %edi                 #  15    0x4af4a  2      
  movl 0x10(%r15,%rdi,1), %ebx    #  16    0x4af4c  5      
  addl $0x30, %edi                #  17    0x4af51  3      
  xchgw %ax, %ax                  #  18    0x4af54  3      
  nop                             #  19    0x4af57  1      
  callq ._Unwind_DeleteException  #  20    0x4af58  5      
  testq %rbx, %rbx                #  21    0x4af5d  3      
  movq %rbx, %rdi                 #  22    0x4af60  3      
  jne .L_4af60                    #  23    0x4af63  6      
  nop                             #  24    0x4af69  1      
  nop                             #  25    0x4af6a  1      
.L_4afa0:                         #        0x4af6b  0      
  addl $0x8, %esp                 #  26    0x4af6b  3      
  addq %r15, %rsp                 #  27    0x4af6e  3      
  movl %r12d, %edi                #  28    0x4af71  3      
  popq %rbx                       #  29    0x4af74  2      
  popq %r12                       #  30    0x4af76  3      
  jmpq .free                      #  31    0x4af79  5      
  nop                             #  32    0x4af7e  1      
.L_4afc0:                         #        0x4af7f  0      
  addl $0x8, %esp                 #  33    0x4af7f  3      
  addq %r15, %rsp                 #  34    0x4af82  3      
  popq %rbx                       #  35    0x4af85  2      
  popq %r12                       #  36    0x4af87  3      
  popq %r11                       #  37    0x4af8a  3      
  andl $0xffffffe0, %r11d         #  38    0x4af8d  7      
  addq %r15, %r11                 #  39    0x4af94  3      
  jmpq %r11                       #  40    0x4af97  3      
  nop                             #  41    0x4af9a  1      
  nop                             #  42    0x4af9b  1      
  nop                             #  43    0x4af9c  1      
  nop                             #  44    0x4af9d  1      
  nop                             #  45    0x4af9e  1      
  nop                             #  46    0x4af9f  1      
  nop                             #  47    0x4afa0  1      
  nop                             #  48    0x4afa1  1      
  nop                             #  49    0x4afa2  1      
  nop                             #  50    0x4afa3  1      
  nop                             #  51    0x4afa4  1      
                                                           
.size _ZL15eh_globals_dtorPv, .-_ZL15eh_globals_dtorPv

