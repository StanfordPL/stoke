  .text
  .globl __cxa_get_globals
  .type __cxa_get_globals, @function

#! file-offset 0x4afe0
#! rip-offset  0x4afe0
#! capacity    320 bytes

# Text                            #  Line  RIP      Bytes  
.__cxa_get_globals:               #        0x4afe0  0      
  cmpb $0x0, 0xffe6dcd(%rip)      #  1     0x4afe0  7      
  pushq %rbx                      #  2     0x4afe7  2      
  movl $0x10031db8, %eax          #  3     0x4afe9  5      
  jne .L_4b020                    #  4     0x4afee  6      
  xchgw %ax, %ax                  #  5     0x4aff4  3      
  nop                             #  6     0x4aff7  1      
.L_4b000:                         #        0x4aff8  0      
  popq %rbx                       #  7     0x4aff8  2      
  popq %r11                       #  8     0x4affa  3      
  andl $0xffffffe0, %r11d         #  9     0x4affd  7      
  addq %r15, %r11                 #  10    0x4b004  3      
  jmpq %r11                       #  11    0x4b007  3      
  nop                             #  12    0x4b00a  1      
  nop                             #  13    0x4b00b  1      
.L_4b020:                         #        0x4b00c  0      
  movl 0xffe6d9e(%rip), %edi      #  14    0x4b00c  6      
  nop                             #  15    0x4b012  1      
  nop                             #  16    0x4b013  1      
  callq .pthread_getspecific      #  17    0x4b014  5      
  movl %eax, %eax                 #  18    0x4b019  2      
  testq %rax, %rax                #  19    0x4b01b  3      
  jne .L_4b000                    #  20    0x4b01e  6      
  movl $0x8, %edi                 #  21    0x4b024  5      
  nop                             #  22    0x4b029  1      
  callq .malloc                   #  23    0x4b02a  5      
  movl %eax, %ebx                 #  24    0x4b02f  2      
  testq %rbx, %rbx                #  25    0x4b031  3      
  je .L_4b0a0                     #  26    0x4b034  6      
  movl 0xffe6d70(%rip), %edi      #  27    0x4b03a  6      
  movl %ebx, %esi                 #  28    0x4b040  2      
  nop                             #  29    0x4b042  1      
  callq .pthread_setspecific      #  30    0x4b043  5      
  testl %eax, %eax                #  31    0x4b048  2      
  je .L_4b0c0                     #  32    0x4b04a  6      
  nop                             #  33    0x4b050  1      
  nop                             #  34    0x4b051  1      
.L_4b0a0:                         #        0x4b052  0      
  nop                             #  35    0x4b052  1      
  nop                             #  36    0x4b053  1      
  callq ._ZSt9terminatev          #  37    0x4b054  5      
.L_4b0c0:                         #        0x4b059  0      
  movq %rbx, %rax                 #  38    0x4b059  3      
  movl %ebx, %ebx                 #  39    0x4b05c  2      
  movl $0x0, (%r15,%rbx,1)        #  40    0x4b05e  8      
  movl %ebx, %ebx                 #  41    0x4b066  2      
  movl $0x0, 0x4(%r15,%rbx,1)     #  42    0x4b068  9      
  jmpq .L_4b000                   #  43    0x4b071  5      
  nop                             #  44    0x4b076  1      
  cmpq $0xffffffffffffffff, %rdx  #  45    0x4b077  4      
  movl %eax, %edi                 #  46    0x4b07b  2      
  je .L_4b100                     #  47    0x4b07d  6      
  nop                             #  48    0x4b083  1      
  nop                             #  49    0x4b084  1      
  callq ._Unwind_Resume           #  50    0x4b085  5      
.L_4b100:                         #        0x4b08a  0      
  nop                             #  51    0x4b08a  1      
  nop                             #  52    0x4b08b  1      
  callq .__cxa_call_unexpected    #  53    0x4b08c  5      
                                                           
.size __cxa_get_globals, .-__cxa_get_globals

