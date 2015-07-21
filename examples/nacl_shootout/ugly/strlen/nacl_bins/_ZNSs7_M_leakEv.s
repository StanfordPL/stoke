  .text
  .globl _ZNSs7_M_leakEv
  .type _ZNSs7_M_leakEv, @function

#! file-offset 0xee540
#! rip-offset  0xae540
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
._ZNSs7_M_leakEv:              #        0xae540  0      OPC=0     
  movl %edi, %edi              #  1     0xae540  2      OPC=1157  
  movl %edi, %edi              #  2     0xae542  2      OPC=1157  
  movl (%r15,%rdi,1), %eax     #  3     0xae544  4      OPC=1156  
  subl $0xc, %eax              #  4     0xae548  3      OPC=2384  
  movl %eax, %eax              #  5     0xae54b  2      OPC=1157  
  movl 0x8(%r15,%rax,1), %r8d  #  6     0xae54d  5      OPC=1156  
  testl %r8d, %r8d             #  7     0xae552  3      OPC=2436  
  js .L_ae560                  #  8     0xae555  6      OPC=1043  
  nop                          #  9     0xae55b  1      OPC=1343  
  nop                          #  10    0xae55c  1      OPC=1343  
  jmpq ._ZNSs12_M_leak_hardEv  #  11    0xae55d  5      OPC=930   
  nop                          #  12    0xae562  1      OPC=1343  
  nop                          #  13    0xae563  1      OPC=1343  
  nop                          #  14    0xae564  1      OPC=1343  
  nop                          #  15    0xae565  1      OPC=1343  
.L_ae560:                      #        0xae566  0      OPC=0     
  popq %r11                    #  16    0xae566  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  17    0xae568  7      OPC=131   
  nop                          #  18    0xae56f  1      OPC=1343  
  nop                          #  19    0xae570  1      OPC=1343  
  nop                          #  20    0xae571  1      OPC=1343  
  nop                          #  21    0xae572  1      OPC=1343  
  addq %r15, %r11              #  22    0xae573  3      OPC=72    
  jmpq %r11                    #  23    0xae576  3      OPC=928   
  nop                          #  24    0xae579  1      OPC=1343  
  nop                          #  25    0xae57a  1      OPC=1343  
  nop                          #  26    0xae57b  1      OPC=1343  
  nop                          #  27    0xae57c  1      OPC=1343  
  nop                          #  28    0xae57d  1      OPC=1343  
  nop                          #  29    0xae57e  1      OPC=1343  
  nop                          #  30    0xae57f  1      OPC=1343  
  nop                          #  31    0xae580  1      OPC=1343  
  nop                          #  32    0xae581  1      OPC=1343  
  nop                          #  33    0xae582  1      OPC=1343  
  nop                          #  34    0xae583  1      OPC=1343  
  nop                          #  35    0xae584  1      OPC=1343  
  nop                          #  36    0xae585  1      OPC=1343  
  nop                          #  37    0xae586  1      OPC=1343  
  nop                          #  38    0xae587  1      OPC=1343  
  nop                          #  39    0xae588  1      OPC=1343  
  nop                          #  40    0xae589  1      OPC=1343  
  nop                          #  41    0xae58a  1      OPC=1343  
  nop                          #  42    0xae58b  1      OPC=1343  
  nop                          #  43    0xae58c  1      OPC=1343  
                                                                  
.size _ZNSs7_M_leakEv, .-_ZNSs7_M_leakEv

