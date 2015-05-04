  .text
  .globl _Znwj
  .type _Znwj, @function

#! file-offset 0x4c9a0
#! rip-offset  0x4c9a0
#! capacity    256 bytes

# Text                             #  Line  RIP      Bytes  
._Znwj:                            #        0x4c9a0  0      
  pushq %rbx                       #  1     0x4c9a0  2      
  testl %edi, %edi                 #  2     0x4c9a2  2      
  movl %edi, %ebx                  #  3     0x4c9a4  2      
  movl $0x1, %eax                  #  4     0x4c9a6  5      
  cmovel %eax, %ebx                #  5     0x4c9ab  3      
  jmpq .L_4c9e0                    #  6     0x4c9ae  5      
  xchgw %ax, %ax                   #  7     0x4c9b3  3      
  nop                              #  8     0x4c9b6  1      
.L_4c9c0:                          #        0x4c9b7  0      
  movl 0xffe9e6f(%rip), %eax       #  9     0x4c9b7  6      
  testq %rax, %rax                 #  10    0x4c9bd  3      
  je .L_4ca20                      #  11    0x4c9c0  6      
  nop                              #  12    0x4c9c6  1      
  andl $0xffffffe0, %eax           #  13    0x4c9c7  5      
  addq %r15, %rax                  #  14    0x4c9cc  3      
  callq %rax                       #  15    0x4c9cf  2      
.L_4c9e0:                          #        0x4c9d1  0      
  movl %ebx, %edi                  #  16    0x4c9d1  2      
  nop                              #  17    0x4c9d3  1      
  nop                              #  18    0x4c9d4  1      
  callq .malloc                    #  19    0x4c9d5  5      
  movl %eax, %eax                  #  20    0x4c9da  2      
  testq %rax, %rax                 #  21    0x4c9dc  3      
  je .L_4c9c0                      #  22    0x4c9df  6      
  popq %rbx                        #  23    0x4c9e5  2      
  popq %r11                        #  24    0x4c9e7  3      
  andl $0xffffffe0, %r11d          #  25    0x4c9ea  7      
  addq %r15, %r11                  #  26    0x4c9f1  3      
  jmpq %r11                        #  27    0x4c9f4  3      
  nop                              #  28    0x4c9f7  1      
.L_4ca20:                          #        0x4c9f8  0      
  movl $0x4, %edi                  #  29    0x4c9f8  5      
  nop                              #  30    0x4c9fd  1      
  nop                              #  31    0x4c9fe  1      
  callq .__cxa_allocate_exception  #  32    0x4c9ff  5      
  movl %eax, %edi                  #  33    0x4ca04  2      
  movl $0x4f420, %edx              #  34    0x4ca06  5      
  movl $0x10021434, %esi           #  35    0x4ca0b  5      
  movl %edi, %edi                  #  36    0x4ca10  2      
  movl $0x10021418, (%r15,%rdi,1)  #  37    0x4ca12  8      
  nop                              #  38    0x4ca1a  1      
  callq .__cxa_throw               #  39    0x4ca1b  5      
  cmpq $0xffffffffffffffff, %rdx   #  40    0x4ca20  4      
  movl %eax, %edi                  #  41    0x4ca24  2      
  je .L_4ca80                      #  42    0x4ca26  6      
  nop                              #  43    0x4ca2c  1      
  nop                              #  44    0x4ca2d  1      
  callq ._Unwind_Resume            #  45    0x4ca2e  5      
.L_4ca80:                          #        0x4ca33  0      
  nop                              #  46    0x4ca33  1      
  nop                              #  47    0x4ca34  1      
  callq .__cxa_call_unexpected     #  48    0x4ca35  5      
                                                            
.size _Znwj, .-_Znwj

