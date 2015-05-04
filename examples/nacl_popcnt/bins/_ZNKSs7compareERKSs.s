  .text
  .globl _ZNKSs7compareERKSs
  .type _ZNKSs7compareERKSs, @function

#! file-offset 0x457a0
#! rip-offset  0x457a0
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs7compareERKSs:                #        0x457a0  0      
  movl %esi, %eax                    #  1     0x457a0  2      
  movl %edi, %edi                    #  2     0x457a2  2      
  movl %edi, %edi                    #  3     0x457a4  2      
  movl (%r15,%rdi,1), %esi           #  4     0x457a6  4      
  movl %eax, %eax                    #  5     0x457aa  2      
  movl (%r15,%rax,1), %edi           #  6     0x457ac  4      
  popq %r11                          #  7     0x457b0  3      
  leal -0xc(%rsi), %edx              #  8     0x457b3  3      
  leal -0xc(%rdi), %eax              #  9     0x457b6  3      
  movl %edx, %edx                    #  10    0x457b9  2      
  movl (%r15,%rdx,1), %r8d           #  11    0x457bb  4      
  xchgw %ax, %ax                     #  12    0x457bf  3      
  movl %eax, %eax                    #  13    0x457c2  2      
  movl (%r15,%rax,1), %edx           #  14    0x457c4  4      
  movl %r8d, %ecx                    #  15    0x457c8  3      
  cmpl %r8d, %edx                    #  16    0x457cb  3      
  cmovbel %edx, %ecx                 #  17    0x457ce  3      
  movl %ecx, %ecx                    #  18    0x457d1  2      
  cmpq %rcx, %rcx                    #  19    0x457d3  3      
  nop                                #  20    0x457d6  1      
  movl %esi, %esi                    #  21    0x457d7  2      
  leaq (%r15,%rsi,1), %rsi           #  22    0x457d9  4      
  movl %edi, %edi                    #  23    0x457dd  2      
  leaq (%r15,%rdi,1), %rdi           #  24    0x457df  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  25    0x457e3  3      
  movl %esi, %esi                    #  26    0x457e6  2      
  movl %edi, %edi                    #  27    0x457e8  2      
  seta %al                           #  28    0x457ea  3      
  setb %cl                           #  29    0x457ed  3      
  subl %edx, %r8d                    #  30    0x457f0  3      
  subb %cl, %al                      #  31    0x457f3  2      
  movsbl %al, %eax                   #  32    0x457f5  3      
  testl %eax, %eax                   #  33    0x457f8  2      
  cmovel %r8d, %eax                  #  34    0x457fa  4      
  andl $0xffffffe0, %r11d            #  35    0x457fe  7      
  addq %r15, %r11                    #  36    0x45805  3      
  jmpq %r11                          #  37    0x45808  3      
  nop                                #  38    0x4580b  1      
  nop                                #  39    0x4580c  1      
  nop                                #  40    0x4580d  1      
  nop                                #  41    0x4580e  1      
  nop                                #  42    0x4580f  1      
  nop                                #  43    0x45810  1      
  nop                                #  44    0x45811  1      
  nop                                #  45    0x45812  1      
  nop                                #  46    0x45813  1      
  nop                                #  47    0x45814  1      
  nop                                #  48    0x45815  1      
  nop                                #  49    0x45816  1      
  nop                                #  50    0x45817  1      
  nop                                #  51    0x45818  1      
  nop                                #  52    0x45819  1      
  nop                                #  53    0x4581a  1      
                                                              
.size _ZNKSs7compareERKSs, .-_ZNKSs7compareERKSs

