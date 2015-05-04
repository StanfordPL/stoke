  .text
  .globl __cxa_get_globals
  .type __cxa_get_globals, @function

#! file-offset 0x4b080
#! rip-offset  0x4b080
#! capacity    320 bytes

# Text                            #  Line  RIP      Bytes  
.__cxa_get_globals:               #        0x4b080  0      
  cmpb $0x0, 0xffe6d2d(%rip)      #  1     0x4b080  7      
  pushq %rbx                      #  2     0x4b087  2      
  movl $0x10031db8, %eax          #  3     0x4b089  5      
  jne .L_4b0c0                    #  4     0x4b08e  6      
  xchgw %ax, %ax                  #  5     0x4b094  3      
  nop                             #  6     0x4b097  1      
.L_4b0a0:                         #        0x4b098  0      
  popq %rbx                       #  7     0x4b098  2      
  popq %r11                       #  8     0x4b09a  3      
  andl $0xffffffe0, %r11d         #  9     0x4b09d  7      
  addq %r15, %r11                 #  10    0x4b0a4  3      
  jmpq %r11                       #  11    0x4b0a7  3      
  nop                             #  12    0x4b0aa  1      
  nop                             #  13    0x4b0ab  1      
.L_4b0c0:                         #        0x4b0ac  0      
  movl 0xffe6cfe(%rip), %edi      #  14    0x4b0ac  6      
  nop                             #  15    0x4b0b2  1      
  nop                             #  16    0x4b0b3  1      
  callq .pthread_getspecific      #  17    0x4b0b4  5      
  movl %eax, %eax                 #  18    0x4b0b9  2      
  testq %rax, %rax                #  19    0x4b0bb  3      
  jne .L_4b0a0                    #  20    0x4b0be  6      
  movl $0x8, %edi                 #  21    0x4b0c4  5      
  nop                             #  22    0x4b0c9  1      
  callq .malloc                   #  23    0x4b0ca  5      
  movl %eax, %ebx                 #  24    0x4b0cf  2      
  testq %rbx, %rbx                #  25    0x4b0d1  3      
  je .L_4b140                     #  26    0x4b0d4  6      
  movl 0xffe6cd0(%rip), %edi      #  27    0x4b0da  6      
  movl %ebx, %esi                 #  28    0x4b0e0  2      
  nop                             #  29    0x4b0e2  1      
  callq .pthread_setspecific      #  30    0x4b0e3  5      
  testl %eax, %eax                #  31    0x4b0e8  2      
  je .L_4b160                     #  32    0x4b0ea  6      
  nop                             #  33    0x4b0f0  1      
  nop                             #  34    0x4b0f1  1      
.L_4b140:                         #        0x4b0f2  0      
  nop                             #  35    0x4b0f2  1      
  nop                             #  36    0x4b0f3  1      
  callq ._ZSt9terminatev          #  37    0x4b0f4  5      
.L_4b160:                         #        0x4b0f9  0      
  movq %rbx, %rax                 #  38    0x4b0f9  3      
  movl %ebx, %ebx                 #  39    0x4b0fc  2      
  movl $0x0, (%r15,%rbx,1)        #  40    0x4b0fe  8      
  movl %ebx, %ebx                 #  41    0x4b106  2      
  movl $0x0, 0x4(%r15,%rbx,1)     #  42    0x4b108  9      
  jmpq .L_4b0a0                   #  43    0x4b111  5      
  nop                             #  44    0x4b116  1      
  cmpq $0xffffffffffffffff, %rdx  #  45    0x4b117  4      
  movl %eax, %edi                 #  46    0x4b11b  2      
  je .L_4b1a0                     #  47    0x4b11d  6      
  nop                             #  48    0x4b123  1      
  nop                             #  49    0x4b124  1      
  callq ._Unwind_Resume           #  50    0x4b125  5      
.L_4b1a0:                         #        0x4b12a  0      
  nop                             #  51    0x4b12a  1      
  nop                             #  52    0x4b12b  1      
  callq .__cxa_call_unexpected    #  53    0x4b12c  5      
                                                           
.size __cxa_get_globals, .-__cxa_get_globals

