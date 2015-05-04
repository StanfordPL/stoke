  .text
  .globl _ZNSs4swapERSs
  .type _ZNSs4swapERSs, @function

#! file-offset 0x44600
#! rip-offset  0x44600
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  
._ZNSs4swapERSs:               #        0x44600  0      
  movl %edi, %edi              #  1     0x44600  2      
  movl %esi, %esi              #  2     0x44602  2      
  movl %edi, %edi              #  3     0x44604  2      
  movl (%r15,%rdi,1), %eax     #  4     0x44606  4      
  subl $0xc, %eax              #  5     0x4460a  3      
  movl %eax, %eax              #  6     0x4460d  2      
  movl 0x8(%r15,%rax,1), %r8d  #  7     0x4460f  5      
  testl %r8d, %r8d             #  8     0x44614  3      
  js .L_44660                  #  9     0x44617  6      
  nop                          #  10    0x4461d  1      
.L_44620:                      #        0x4461e  0      
  movl %esi, %esi              #  11    0x4461e  2      
  movl (%r15,%rsi,1), %eax     #  12    0x44620  4      
  leal -0xc(%rax), %edx        #  13    0x44624  3      
  movl %edx, %edx              #  14    0x44627  2      
  movl 0x8(%r15,%rdx,1), %ecx  #  15    0x44629  5      
  testl %ecx, %ecx             #  16    0x4462e  2      
  jns .L_44640                 #  17    0x44630  6      
  movl %edx, %edx              #  18    0x44636  2      
  movl $0x0, 0x8(%r15,%rdx,1)  #  19    0x44638  9      
  nop                          #  20    0x44641  1      
.L_44640:                      #        0x44642  0      
  movl %edi, %edi              #  21    0x44642  2      
  movl (%r15,%rdi,1), %edx     #  22    0x44644  4      
  movl %edi, %edi              #  23    0x44648  2      
  movl %eax, (%r15,%rdi,1)     #  24    0x4464a  4      
  popq %r11                    #  25    0x4464e  3      
  movl %esi, %esi              #  26    0x44651  2      
  movl %edx, (%r15,%rsi,1)     #  27    0x44653  4      
  andl $0xffffffe0, %r11d      #  28    0x44657  7      
  addq %r15, %r11              #  29    0x4465e  3      
  jmpq %r11                    #  30    0x44661  3      
  xchgw %ax, %ax               #  31    0x44664  3      
.L_44660:                      #        0x44667  0      
  movl %eax, %eax              #  32    0x44667  2      
  movl $0x0, 0x8(%r15,%rax,1)  #  33    0x44669  9      
  jmpq .L_44620                #  34    0x44672  5      
  nop                          #  35    0x44677  1      
  nop                          #  36    0x44678  1      
  nop                          #  37    0x44679  1      
  nop                          #  38    0x4467a  1      
  nop                          #  39    0x4467b  1      
  nop                          #  40    0x4467c  1      
  nop                          #  41    0x4467d  1      
  nop                          #  42    0x4467e  1      
  nop                          #  43    0x4467f  1      
  nop                          #  44    0x44680  1      
  nop                          #  45    0x44681  1      
  nop                          #  46    0x44682  1      
  nop                          #  47    0x44683  1      
  nop                          #  48    0x44684  1      
  nop                          #  49    0x44685  1      
  nop                          #  50    0x44686  1      
  nop                          #  51    0x44687  1      
  nop                          #  52    0x44688  1      
  nop                          #  53    0x44689  1      
                                                        
.size _ZNSs4swapERSs, .-_ZNSs4swapERSs

