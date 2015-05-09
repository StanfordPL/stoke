  .text
  .globl _ZNSs4swapERSs
  .type _ZNSs4swapERSs, @function

#! file-offset 0x44560
#! rip-offset  0x44560
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  
._ZNSs4swapERSs:               #        0x44560  0      
  movl %edi, %edi              #  1     0x44560  2      
  movl %esi, %esi              #  2     0x44562  2      
  movl %edi, %edi              #  3     0x44564  2      
  movl (%r15,%rdi,1), %eax     #  4     0x44566  4      
  subl $0xc, %eax              #  5     0x4456a  3      
  movl %eax, %eax              #  6     0x4456d  2      
  movl 0x8(%r15,%rax,1), %r8d  #  7     0x4456f  5      
  testl %r8d, %r8d             #  8     0x44574  3      
  js .L_445c0                  #  9     0x44577  6      
  nop                          #  10    0x4457d  1      
.L_44580:                      #        0x4457e  0      
  movl %esi, %esi              #  11    0x4457e  2      
  movl (%r15,%rsi,1), %eax     #  12    0x44580  4      
  leal -0xc(%rax), %edx        #  13    0x44584  3      
  movl %edx, %edx              #  14    0x44587  2      
  movl 0x8(%r15,%rdx,1), %ecx  #  15    0x44589  5      
  testl %ecx, %ecx             #  16    0x4458e  2      
  jns .L_445a0                 #  17    0x44590  6      
  movl %edx, %edx              #  18    0x44596  2      
  movl $0x0, 0x8(%r15,%rdx,1)  #  19    0x44598  9      
  nop                          #  20    0x445a1  1      
.L_445a0:                      #        0x445a2  0      
  movl %edi, %edi              #  21    0x445a2  2      
  movl (%r15,%rdi,1), %edx     #  22    0x445a4  4      
  movl %edi, %edi              #  23    0x445a8  2      
  movl %eax, (%r15,%rdi,1)     #  24    0x445aa  4      
  popq %r11                    #  25    0x445ae  3      
  movl %esi, %esi              #  26    0x445b1  2      
  movl %edx, (%r15,%rsi,1)     #  27    0x445b3  4      
  andl $0xffffffe0, %r11d      #  28    0x445b7  7      
  addq %r15, %r11              #  29    0x445be  3      
  jmpq %r11                    #  30    0x445c1  3      
  xchgw %ax, %ax               #  31    0x445c4  3      
.L_445c0:                      #        0x445c7  0      
  movl %eax, %eax              #  32    0x445c7  2      
  movl $0x0, 0x8(%r15,%rax,1)  #  33    0x445c9  9      
  jmpq .L_44580                #  34    0x445d2  5      
  nop                          #  35    0x445d7  1      
  nop                          #  36    0x445d8  1      
  nop                          #  37    0x445d9  1      
  nop                          #  38    0x445da  1      
  nop                          #  39    0x445db  1      
  nop                          #  40    0x445dc  1      
  nop                          #  41    0x445dd  1      
  nop                          #  42    0x445de  1      
  nop                          #  43    0x445df  1      
  nop                          #  44    0x445e0  1      
  nop                          #  45    0x445e1  1      
  nop                          #  46    0x445e2  1      
  nop                          #  47    0x445e3  1      
  nop                          #  48    0x445e4  1      
  nop                          #  49    0x445e5  1      
  nop                          #  50    0x445e6  1      
  nop                          #  51    0x445e7  1      
  nop                          #  52    0x445e8  1      
  nop                          #  53    0x445e9  1      
                                                        
.size _ZNSs4swapERSs, .-_ZNSs4swapERSs

