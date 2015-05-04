  .text
  .globl strlen
  .type strlen, @function

#! file-offset 0x6b7e0
#! rip-offset  0x6b7e0
#! capacity    320 bytes

# Text                         #  Line  RIP      Bytes  
.strlen:                       #        0x6b7e0  0      
  movl %edi, %edi              #  1     0x6b7e0  2      
  testb $0x3, %dil             #  2     0x6b7e2  4      
  movq %rdi, %rdx              #  3     0x6b7e6  3      
  je .L_6b860                  #  4     0x6b7e9  6      
  xorl %eax, %eax              #  5     0x6b7ef  2      
  movl %edi, %edi              #  6     0x6b7f1  2      
  cmpb $0x0, (%r15,%rdi,1)     #  7     0x6b7f3  5      
  jne .L_6b820                 #  8     0x6b7f8  6      
  jmpq .L_6b8e0                #  9     0x6b7fe  5      
  nop                          #  10    0x6b803  1      
.L_6b800:                      #        0x6b804  0      
  movl %edx, %edx              #  11    0x6b804  2      
  cmpb $0x0, (%r15,%rdx,1)     #  12    0x6b806  5      
  je .L_6b900                  #  13    0x6b80b  6      
  nop                          #  14    0x6b811  1      
  nop                          #  15    0x6b812  1      
.L_6b820:                      #        0x6b813  0      
  addl $0x1, %edx              #  16    0x6b813  3      
  testb $0x3, %dl              #  17    0x6b816  3      
  jne .L_6b800                 #  18    0x6b819  6      
  jmpq .L_6b860                #  19    0x6b81f  5      
  nop                          #  20    0x6b824  1      
  nop                          #  21    0x6b825  1      
.L_6b840:                      #        0x6b826  0      
  addl $0x4, %edx              #  22    0x6b826  3      
  nop                          #  23    0x6b829  1      
  nop                          #  24    0x6b82a  1      
.L_6b860:                      #        0x6b82b  0      
  movl %edx, %edx              #  25    0x6b82b  2      
  movl (%r15,%rdx,1), %ecx     #  26    0x6b82d  4      
  leal -0x1010101(%rcx), %eax  #  27    0x6b831  6      
  notl %ecx                    #  28    0x6b837  2      
  andl %ecx, %eax              #  29    0x6b839  2      
  testl $0x80808080, %eax      #  30    0x6b83b  5      
  je .L_6b840                  #  31    0x6b840  6      
  movl %edx, %edx              #  32    0x6b846  2      
  cmpb $0x0, (%r15,%rdx,1)     #  33    0x6b848  5      
  xchgw %ax, %ax               #  34    0x6b84d  3      
  je .L_6b8c0                  #  35    0x6b850  6      
  nop                          #  36    0x6b856  1      
  nop                          #  37    0x6b857  1      
.L_6b8a0:                      #        0x6b858  0      
  addl $0x1, %edx              #  38    0x6b858  3      
  movl %edx, %edx              #  39    0x6b85b  2      
  cmpb $0x0, (%r15,%rdx,1)     #  40    0x6b85d  5      
  jne .L_6b8a0                 #  41    0x6b862  6      
  nop                          #  42    0x6b868  1      
  nop                          #  43    0x6b869  1      
.L_6b8c0:                      #        0x6b86a  0      
  movl %edx, %eax              #  44    0x6b86a  2      
  subl %edi, %eax              #  45    0x6b86c  2      
  nop                          #  46    0x6b86e  1      
  nop                          #  47    0x6b86f  1      
.L_6b8e0:                      #        0x6b870  0      
  popq %r11                    #  48    0x6b870  3      
  andl $0xffffffe0, %r11d      #  49    0x6b873  7      
  addq %r15, %r11              #  50    0x6b87a  3      
  jmpq %r11                    #  51    0x6b87d  3      
  nop                          #  52    0x6b880  1      
  nop                          #  53    0x6b881  1      
.L_6b900:                      #        0x6b882  0      
  movl %edx, %eax              #  54    0x6b882  2      
  subl %edi, %eax              #  55    0x6b884  2      
  popq %r11                    #  56    0x6b886  3      
  andl $0xffffffe0, %r11d      #  57    0x6b889  7      
  addq %r15, %r11              #  58    0x6b890  3      
  jmpq %r11                    #  59    0x6b893  3      
  nop                          #  60    0x6b896  1      
  nop                          #  61    0x6b897  1      
  nop                          #  62    0x6b898  1      
  nop                          #  63    0x6b899  1      
  nop                          #  64    0x6b89a  1      
  nop                          #  65    0x6b89b  1      
  nop                          #  66    0x6b89c  1      
  nop                          #  67    0x6b89d  1      
  nop                          #  68    0x6b89e  1      
  nop                          #  69    0x6b89f  1      
  nop                          #  70    0x6b8a0  1      
  nop                          #  71    0x6b8a1  1      
  nop                          #  72    0x6b8a2  1      
  nop                          #  73    0x6b8a3  1      
  nop                          #  74    0x6b8a4  1      
  nop                          #  75    0x6b8a5  1      
                                                        
.size strlen, .-strlen

