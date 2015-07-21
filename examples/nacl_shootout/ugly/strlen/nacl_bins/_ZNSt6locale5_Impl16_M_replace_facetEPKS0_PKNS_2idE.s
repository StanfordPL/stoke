  .text
  .globl _ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE
  .type _ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE, @function

#! file-offset 0x9e080
#! rip-offset  0x5e080
#! capacity    160 bytes

# Text                                                              #  Line  RIP      Bytes  Opcode    
._ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE:               #        0x5e080  0      OPC=0     
  movl %esi, %ecx                                                   #  1     0x5e080  2      OPC=1157  
  movl %edx, %esi                                                   #  2     0x5e082  2      OPC=1157  
  subl $0x8, %esp                                                   #  3     0x5e084  3      OPC=2384  
  addq %r15, %rsp                                                   #  4     0x5e087  3      OPC=72    
  movl %esi, %esi                                                   #  5     0x5e08a  2      OPC=1157  
  movl (%r15,%rsi,1), %eax                                          #  6     0x5e08c  4      OPC=1156  
  movl %edi, %edi                                                   #  7     0x5e090  2      OPC=1157  
  testl %eax, %eax                                                  #  8     0x5e092  2      OPC=2436  
  jne .L_5e0c0                                                      #  9     0x5e094  6      OPC=963   
  nop                                                               #  10    0x5e09a  1      OPC=1343  
  nop                                                               #  11    0x5e09b  1      OPC=1343  
  movl 0x10014594(%rip), %eax                                       #  12    0x5e09c  6      OPC=1156  
  addl $0x1, %eax                                                   #  13    0x5e0a2  3      OPC=65    
  nop                                                               #  14    0x5e0a5  1      OPC=1343  
  movl %eax, 0x1001458a(%rip)                                       #  15    0x5e0a6  6      OPC=1136  
  movl %esi, %esi                                                   #  16    0x5e0ac  2      OPC=1157  
  movl %eax, (%r15,%rsi,1)                                          #  17    0x5e0ae  4      OPC=1136  
  nop                                                               #  18    0x5e0b2  1      OPC=1343  
  nop                                                               #  19    0x5e0b3  1      OPC=1343  
  nop                                                               #  20    0x5e0b4  1      OPC=1343  
  nop                                                               #  21    0x5e0b5  1      OPC=1343  
  nop                                                               #  22    0x5e0b6  1      OPC=1343  
  nop                                                               #  23    0x5e0b7  1      OPC=1343  
  nop                                                               #  24    0x5e0b8  1      OPC=1343  
  nop                                                               #  25    0x5e0b9  1      OPC=1343  
  nop                                                               #  26    0x5e0ba  1      OPC=1343  
  nop                                                               #  27    0x5e0bb  1      OPC=1343  
  nop                                                               #  28    0x5e0bc  1      OPC=1343  
  nop                                                               #  29    0x5e0bd  1      OPC=1343  
  nop                                                               #  30    0x5e0be  1      OPC=1343  
  nop                                                               #  31    0x5e0bf  1      OPC=1343  
  nop                                                               #  32    0x5e0c0  1      OPC=1343  
  nop                                                               #  33    0x5e0c1  1      OPC=1343  
  nop                                                               #  34    0x5e0c2  1      OPC=1343  
  nop                                                               #  35    0x5e0c3  1      OPC=1343  
  nop                                                               #  36    0x5e0c4  1      OPC=1343  
  nop                                                               #  37    0x5e0c5  1      OPC=1343  
.L_5e0c0:                                                           #        0x5e0c6  0      OPC=0     
  movl %ecx, %ecx                                                   #  38    0x5e0c6  2      OPC=1157  
  movl 0x8(%r15,%rcx,1), %edx                                       #  39    0x5e0c8  5      OPC=1156  
  subl $0x1, %eax                                                   #  40    0x5e0cd  3      OPC=2384  
  subl $0x1, %edx                                                   #  41    0x5e0d0  3      OPC=2384  
  cmpl %eax, %edx                                                   #  42    0x5e0d3  2      OPC=472   
  jb .L_5e100                                                       #  43    0x5e0d5  6      OPC=875   
  nop                                                               #  44    0x5e0db  1      OPC=1343  
  nop                                                               #  45    0x5e0dc  1      OPC=1343  
  shll $0x2, %eax                                                   #  46    0x5e0dd  3      OPC=2269  
  movl %ecx, %ecx                                                   #  47    0x5e0e0  2      OPC=1157  
  addl 0x4(%r15,%rcx,1), %eax                                       #  48    0x5e0e2  5      OPC=66    
  nop                                                               #  49    0x5e0e7  1      OPC=1343  
  nop                                                               #  50    0x5e0e8  1      OPC=1343  
  nop                                                               #  51    0x5e0e9  1      OPC=1343  
  nop                                                               #  52    0x5e0ea  1      OPC=1343  
  nop                                                               #  53    0x5e0eb  1      OPC=1343  
  movl %eax, %eax                                                   #  54    0x5e0ec  2      OPC=1157  
  movl (%r15,%rax,1), %edx                                          #  55    0x5e0ee  4      OPC=1156  
  testq %rdx, %rdx                                                  #  56    0x5e0f2  3      OPC=2438  
  je .L_5e100                                                       #  57    0x5e0f5  6      OPC=893   
  nop                                                               #  58    0x5e0fb  1      OPC=1343  
  nop                                                               #  59    0x5e0fc  1      OPC=1343  
  addl $0x8, %esp                                                   #  60    0x5e0fd  3      OPC=65    
  addq %r15, %rsp                                                   #  61    0x5e100  3      OPC=72    
  jmpq ._ZNSt6locale5_Impl16_M_install_facetEPKNS_2idEPKNS_5facetE  #  62    0x5e103  5      OPC=930   
  nop                                                               #  63    0x5e108  1      OPC=1343  
  nop                                                               #  64    0x5e109  1      OPC=1343  
  nop                                                               #  65    0x5e10a  1      OPC=1343  
  nop                                                               #  66    0x5e10b  1      OPC=1343  
  nop                                                               #  67    0x5e10c  1      OPC=1343  
  nop                                                               #  68    0x5e10d  1      OPC=1343  
  nop                                                               #  69    0x5e10e  1      OPC=1343  
  nop                                                               #  70    0x5e10f  1      OPC=1343  
  nop                                                               #  71    0x5e110  1      OPC=1343  
  nop                                                               #  72    0x5e111  1      OPC=1343  
.L_5e100:                                                           #        0x5e112  0      OPC=0     
  movl $0x1003a248, %edi                                            #  73    0x5e112  5      OPC=1154  
  nop                                                               #  74    0x5e117  1      OPC=1343  
  nop                                                               #  75    0x5e118  1      OPC=1343  
  nop                                                               #  76    0x5e119  1      OPC=1343  
  nop                                                               #  77    0x5e11a  1      OPC=1343  
  nop                                                               #  78    0x5e11b  1      OPC=1343  
  nop                                                               #  79    0x5e11c  1      OPC=1343  
  nop                                                               #  80    0x5e11d  1      OPC=1343  
  nop                                                               #  81    0x5e11e  1      OPC=1343  
  nop                                                               #  82    0x5e11f  1      OPC=1343  
  nop                                                               #  83    0x5e120  1      OPC=1343  
  nop                                                               #  84    0x5e121  1      OPC=1343  
  nop                                                               #  85    0x5e122  1      OPC=1343  
  nop                                                               #  86    0x5e123  1      OPC=1343  
  nop                                                               #  87    0x5e124  1      OPC=1343  
  nop                                                               #  88    0x5e125  1      OPC=1343  
  nop                                                               #  89    0x5e126  1      OPC=1343  
  nop                                                               #  90    0x5e127  1      OPC=1343  
  nop                                                               #  91    0x5e128  1      OPC=1343  
  nop                                                               #  92    0x5e129  1      OPC=1343  
  nop                                                               #  93    0x5e12a  1      OPC=1343  
  nop                                                               #  94    0x5e12b  1      OPC=1343  
  nop                                                               #  95    0x5e12c  1      OPC=1343  
  callq ._ZSt21__throw_runtime_errorPKc                             #  96    0x5e12d  5      OPC=260   
                                                                                                       
.size _ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE, .-_ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE

