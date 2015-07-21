  .text
  .globl _ZNSolsEs
  .type _ZNSolsEs, @function

#! file-offset 0xe34e0
#! rip-offset  0xa34e0
#! capacity    96 bytes

# Text                            #  Line  RIP      Bytes  Opcode    
._ZNSolsEs:                       #        0xa34e0  0      OPC=0     
  movl %edi, %edi                 #  1     0xa34e0  2      OPC=1157  
  movl %edi, %edi                 #  2     0xa34e2  2      OPC=1157  
  movl (%r15,%rdi,1), %eax        #  3     0xa34e4  4      OPC=1156  
  subl $0xc, %eax                 #  4     0xa34e8  3      OPC=2384  
  movl %eax, %eax                 #  5     0xa34eb  2      OPC=1157  
  movl (%r15,%rax,1), %eax        #  6     0xa34ed  4      OPC=1156  
  addl %edi, %eax                 #  7     0xa34f1  2      OPC=67    
  movl %eax, %eax                 #  8     0xa34f3  2      OPC=1157  
  movl 0xc(%r15,%rax,1), %eax     #  9     0xa34f5  5      OPC=1156  
  andl $0x4a, %eax                #  10    0xa34fa  3      OPC=132   
  cmpl $0x8, %eax                 #  11    0xa34fd  3      OPC=470   
  je .L_a3520                     #  12    0xa3500  6      OPC=893   
  nop                             #  13    0xa3506  1      OPC=1343  
  nop                             #  14    0xa3507  1      OPC=1343  
  cmpl $0x40, %eax                #  15    0xa3508  3      OPC=470   
  je .L_a3520                     #  16    0xa350b  6      OPC=893   
  nop                             #  17    0xa3511  1      OPC=1343  
  nop                             #  18    0xa3512  1      OPC=1343  
  movswl %si, %esi                #  19    0xa3513  3      OPC=1281  
  jmpq ._ZNSo9_M_insertIlEERSoT_  #  20    0xa3516  5      OPC=930   
  xchgw %ax, %ax                  #  21    0xa351b  2      OPC=3700  
  nop                             #  22    0xa351d  1      OPC=1343  
  nop                             #  23    0xa351e  1      OPC=1343  
  nop                             #  24    0xa351f  1      OPC=1343  
  nop                             #  25    0xa3520  1      OPC=1343  
  nop                             #  26    0xa3521  1      OPC=1343  
  nop                             #  27    0xa3522  1      OPC=1343  
  nop                             #  28    0xa3523  1      OPC=1343  
  nop                             #  29    0xa3524  1      OPC=1343  
  nop                             #  30    0xa3525  1      OPC=1343  
  nop                             #  31    0xa3526  1      OPC=1343  
  nop                             #  32    0xa3527  1      OPC=1343  
  nop                             #  33    0xa3528  1      OPC=1343  
  nop                             #  34    0xa3529  1      OPC=1343  
  nop                             #  35    0xa352a  1      OPC=1343  
  nop                             #  36    0xa352b  1      OPC=1343  
.L_a3520:                         #        0xa352c  0      OPC=0     
  movzwl %si, %esi                #  37    0xa352c  3      OPC=1303  
  jmpq ._ZNSo9_M_insertIlEERSoT_  #  38    0xa352f  5      OPC=930   
  nop                             #  39    0xa3534  1      OPC=1343  
  nop                             #  40    0xa3535  1      OPC=1343  
  nop                             #  41    0xa3536  1      OPC=1343  
  nop                             #  42    0xa3537  1      OPC=1343  
  nop                             #  43    0xa3538  1      OPC=1343  
  nop                             #  44    0xa3539  1      OPC=1343  
  nop                             #  45    0xa353a  1      OPC=1343  
  nop                             #  46    0xa353b  1      OPC=1343  
  nop                             #  47    0xa353c  1      OPC=1343  
  nop                             #  48    0xa353d  1      OPC=1343  
  nop                             #  49    0xa353e  1      OPC=1343  
  nop                             #  50    0xa353f  1      OPC=1343  
  nop                             #  51    0xa3540  1      OPC=1343  
  nop                             #  52    0xa3541  1      OPC=1343  
  nop                             #  53    0xa3542  1      OPC=1343  
  nop                             #  54    0xa3543  1      OPC=1343  
  nop                             #  55    0xa3544  1      OPC=1343  
  nop                             #  56    0xa3545  1      OPC=1343  
  nop                             #  57    0xa3546  1      OPC=1343  
  nop                             #  58    0xa3547  1      OPC=1343  
  nop                             #  59    0xa3548  1      OPC=1343  
  nop                             #  60    0xa3549  1      OPC=1343  
  nop                             #  61    0xa354a  1      OPC=1343  
  nop                             #  62    0xa354b  1      OPC=1343  
                                                                     
.size _ZNSolsEs, .-_ZNSolsEs

