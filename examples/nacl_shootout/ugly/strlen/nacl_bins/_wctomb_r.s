  .text
  .globl _wctomb_r
  .type _wctomb_r, @function

#! file-offset 0x183460
#! rip-offset  0x143460
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
._wctomb_r:                   #        0x143460  0      OPC=0     
  movq %rbx, -0x20(%rsp)      #  1     0x143460  5      OPC=1138  
  movq %r12, -0x18(%rsp)      #  2     0x143465  5      OPC=1138  
  movl %ecx, %r8d             #  3     0x14346a  3      OPC=1157  
  movq %r13, -0x10(%rsp)      #  4     0x14346d  5      OPC=1138  
  movq %r14, -0x8(%rsp)       #  5     0x143472  5      OPC=1138  
  subl $0x38, %esp            #  6     0x143477  3      OPC=2384  
  addq %r15, %rsp             #  7     0x14347a  3      OPC=72    
  nop                         #  8     0x14347d  1      OPC=1343  
  nop                         #  9     0x14347e  1      OPC=1343  
  nop                         #  10    0x14347f  1      OPC=1343  
  movl 0xff2db86(%rip), %ebx  #  11    0x143480  6      OPC=1156  
  movl %edx, %r14d            #  12    0x143486  3      OPC=1157  
  movl %edi, %r12d            #  13    0x143489  3      OPC=1157  
  movl %esi, %r13d            #  14    0x14348c  3      OPC=1157  
  movq %r8, 0x8(%rsp)         #  15    0x14348f  5      OPC=1138  
  nop                         #  16    0x143494  1      OPC=1343  
  nop                         #  17    0x143495  1      OPC=1343  
  nop                         #  18    0x143496  1      OPC=1343  
  nop                         #  19    0x143497  1      OPC=1343  
  nop                         #  20    0x143498  1      OPC=1343  
  nop                         #  21    0x143499  1      OPC=1343  
  nop                         #  22    0x14349a  1      OPC=1343  
  callq .__locale_charset     #  23    0x14349b  5      OPC=260   
  movq 0x8(%rsp), %r8         #  24    0x1434a0  5      OPC=1161  
  movl %r14d, %edx            #  25    0x1434a5  3      OPC=1157  
  movl %r13d, %esi            #  26    0x1434a8  3      OPC=1157  
  movl %r12d, %edi            #  27    0x1434ab  3      OPC=1157  
  movq %rbx, %r9              #  28    0x1434ae  3      OPC=1162  
  movq 0x20(%rsp), %r12       #  29    0x1434b1  5      OPC=1161  
  movq 0x18(%rsp), %rbx       #  30    0x1434b6  5      OPC=1161  
  movq 0x28(%rsp), %r13       #  31    0x1434bb  5      OPC=1161  
  movl %eax, %ecx             #  32    0x1434c0  2      OPC=1157  
  movq 0x30(%rsp), %r14       #  33    0x1434c2  5      OPC=1161  
  addl $0x38, %esp            #  34    0x1434c7  3      OPC=65    
  addq %r15, %rsp             #  35    0x1434ca  3      OPC=72    
  andl $0xffffffe0, %r9d      #  36    0x1434cd  7      OPC=131   
  nop                         #  37    0x1434d4  1      OPC=1343  
  nop                         #  38    0x1434d5  1      OPC=1343  
  nop                         #  39    0x1434d6  1      OPC=1343  
  nop                         #  40    0x1434d7  1      OPC=1343  
  addq %r15, %r9              #  41    0x1434d8  3      OPC=72    
  jmpq %r9                    #  42    0x1434db  3      OPC=928   
  nop                         #  43    0x1434de  1      OPC=1343  
  nop                         #  44    0x1434df  1      OPC=1343  
  nop                         #  45    0x1434e0  1      OPC=1343  
  nop                         #  46    0x1434e1  1      OPC=1343  
  nop                         #  47    0x1434e2  1      OPC=1343  
  nop                         #  48    0x1434e3  1      OPC=1343  
  nop                         #  49    0x1434e4  1      OPC=1343  
  nop                         #  50    0x1434e5  1      OPC=1343  
  nop                         #  51    0x1434e6  1      OPC=1343  
                                                                  
.size _wctomb_r, .-_wctomb_r

