  .text
  .globl _ZNKSs7compareEPKc
  .type _ZNKSs7compareEPKc, @function

#! file-offset 0x457a0
#! rip-offset  0x457a0
#! capacity    160 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs7compareEPKc:                 #        0x457a0  0      
  movl %edi, %edi                    #  1     0x457a0  2      
  movq %r12, -0x10(%rsp)             #  2     0x457a2  5      
  movq %rbx, -0x18(%rsp)             #  3     0x457a7  5      
  movq %r13, -0x8(%rsp)              #  4     0x457ac  5      
  subl $0x18, %esp                   #  5     0x457b1  3      
  addq %r15, %rsp                    #  6     0x457b4  3      
  movl %edi, %edi                    #  7     0x457b7  2      
  movl (%r15,%rdi,1), %r13d          #  8     0x457b9  4      
  movl %esi, %r12d                   #  9     0x457bd  3      
  movl %r12d, %edi                   #  10    0x457c0  3      
  leal -0xc(%r13), %eax              #  11    0x457c3  4      
  movl %eax, %eax                    #  12    0x457c7  2      
  movl (%r15,%rax,1), %ebx           #  13    0x457c9  4      
  nop                                #  14    0x457cd  1      
  callq .strlen                      #  15    0x457ce  5      
  movq %r13, %rsi                    #  16    0x457d3  3      
  movq %r12, %rdi                    #  17    0x457d6  3      
  movq 0x10(%rsp), %r13              #  18    0x457d9  5      
  cmpl %ebx, %eax                    #  19    0x457de  2      
  movl %ebx, %ecx                    #  20    0x457e0  2      
  movq 0x8(%rsp), %r12               #  21    0x457e2  5      
  cmovbel %eax, %ecx                 #  22    0x457e7  3      
  movl %ecx, %ecx                    #  23    0x457ea  2      
  cmpq %rcx, %rcx                    #  24    0x457ec  3      
  nop                                #  25    0x457ef  1      
  movl %esi, %esi                    #  26    0x457f0  2      
  leaq (%r15,%rsi,1), %rsi           #  27    0x457f2  4      
  movl %edi, %edi                    #  28    0x457f6  2      
  leaq (%r15,%rdi,1), %rdi           #  29    0x457f8  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  30    0x457fc  3      
  movl %esi, %esi                    #  31    0x457ff  2      
  movl %edi, %edi                    #  32    0x45801  2      
  seta %dl                           #  33    0x45803  3      
  setb %cl                           #  34    0x45806  3      
  subl %eax, %ebx                    #  35    0x45809  2      
  subb %cl, %dl                      #  36    0x4580b  2      
  movsbl %dl, %edx                   #  37    0x4580d  3      
  nop                                #  38    0x45810  1      
  testl %edx, %edx                   #  39    0x45811  2      
  cmovel %ebx, %edx                  #  40    0x45813  3      
  movq (%rsp), %rbx                  #  41    0x45816  4      
  addl $0x18, %esp                   #  42    0x4581a  3      
  addq %r15, %rsp                    #  43    0x4581d  3      
  popq %r11                          #  44    0x45820  3      
  movl %edx, %eax                    #  45    0x45823  2      
  andl $0xffffffe0, %r11d            #  46    0x45825  7      
  addq %r15, %r11                    #  47    0x4582c  3      
  jmpq %r11                          #  48    0x4582f  3      
  nop                                #  49    0x45832  1      
  nop                                #  50    0x45833  1      
  nop                                #  51    0x45834  1      
                                                              
.size _ZNKSs7compareEPKc, .-_ZNKSs7compareEPKc

