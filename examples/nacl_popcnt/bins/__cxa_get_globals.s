  .text
  .globl __cxa_get_globals
  .type __cxa_get_globals, @function

#! file-offset 0x4b000
#! rip-offset  0x4b000
#! capacity    320 bytes

# Text                            #  Line  RIP      Bytes  
.__cxa_get_globals:               #        0x4b000  0      
  cmpb $0x0, 0xffe6dad(%rip)      #  1     0x4b000  7      
  pushq %rbx                      #  2     0x4b007  2      
  movl $0x10031db8, %eax          #  3     0x4b009  5      
  jne .L_4b040                    #  4     0x4b00e  6      
  xchgw %ax, %ax                  #  5     0x4b014  3      
  nop                             #  6     0x4b017  1      
.L_4b020:                         #        0x4b018  0      
  popq %rbx                       #  7     0x4b018  2      
  popq %r11                       #  8     0x4b01a  3      
  andl $0xffffffe0, %r11d         #  9     0x4b01d  7      
  addq %r15, %r11                 #  10    0x4b024  3      
  jmpq %r11                       #  11    0x4b027  3      
  nop                             #  12    0x4b02a  1      
  nop                             #  13    0x4b02b  1      
.L_4b040:                         #        0x4b02c  0      
  movl 0xffe6d7e(%rip), %edi      #  14    0x4b02c  6      
  nop                             #  15    0x4b032  1      
  nop                             #  16    0x4b033  1      
  callq .pthread_getspecific      #  17    0x4b034  5      
  movl %eax, %eax                 #  18    0x4b039  2      
  testq %rax, %rax                #  19    0x4b03b  3      
  jne .L_4b020                    #  20    0x4b03e  6      
  movl $0x8, %edi                 #  21    0x4b044  5      
  nop                             #  22    0x4b049  1      
  callq .malloc                   #  23    0x4b04a  5      
  movl %eax, %ebx                 #  24    0x4b04f  2      
  testq %rbx, %rbx                #  25    0x4b051  3      
  je .L_4b0c0                     #  26    0x4b054  6      
  movl 0xffe6d50(%rip), %edi      #  27    0x4b05a  6      
  movl %ebx, %esi                 #  28    0x4b060  2      
  nop                             #  29    0x4b062  1      
  callq .pthread_setspecific      #  30    0x4b063  5      
  testl %eax, %eax                #  31    0x4b068  2      
  je .L_4b0e0                     #  32    0x4b06a  6      
  nop                             #  33    0x4b070  1      
  nop                             #  34    0x4b071  1      
.L_4b0c0:                         #        0x4b072  0      
  nop                             #  35    0x4b072  1      
  nop                             #  36    0x4b073  1      
  callq ._ZSt9terminatev          #  37    0x4b074  5      
.L_4b0e0:                         #        0x4b079  0      
  movq %rbx, %rax                 #  38    0x4b079  3      
  movl %ebx, %ebx                 #  39    0x4b07c  2      
  movl $0x0, (%r15,%rbx,1)        #  40    0x4b07e  8      
  movl %ebx, %ebx                 #  41    0x4b086  2      
  movl $0x0, 0x4(%r15,%rbx,1)     #  42    0x4b088  9      
  jmpq .L_4b020                   #  43    0x4b091  5      
  nop                             #  44    0x4b096  1      
  cmpq $0xffffffffffffffff, %rdx  #  45    0x4b097  4      
  movl %eax, %edi                 #  46    0x4b09b  2      
  je .L_4b120                     #  47    0x4b09d  6      
  nop                             #  48    0x4b0a3  1      
  nop                             #  49    0x4b0a4  1      
  callq ._Unwind_Resume           #  50    0x4b0a5  5      
.L_4b120:                         #        0x4b0aa  0      
  nop                             #  51    0x4b0aa  1      
  nop                             #  52    0x4b0ab  1      
  callq .__cxa_call_unexpected    #  53    0x4b0ac  5      
                                                           
.size __cxa_get_globals, .-__cxa_get_globals

