  .text
  .globl _ZNKSs5rfindEPKcj
  .type _ZNKSs5rfindEPKcj, @function

#! file-offset 0xeb2e0
#! rip-offset  0xab2e0
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
._ZNKSs5rfindEPKcj:         #        0xab2e0  0      OPC=0     
  movq %r12, -0x10(%rsp)    #  1     0xab2e0  5      OPC=1138  
  movl %esi, %r12d          #  2     0xab2e5  3      OPC=1157  
  movq %rbx, -0x18(%rsp)    #  3     0xab2e8  5      OPC=1138  
  movq %r13, -0x8(%rsp)     #  4     0xab2ed  5      OPC=1138  
  movl %edi, %ebx           #  5     0xab2f2  2      OPC=1157  
  subl $0x18, %esp          #  6     0xab2f4  3      OPC=2384  
  addq %r15, %rsp           #  7     0xab2f7  3      OPC=72    
  movl %edx, %r13d          #  8     0xab2fa  3      OPC=1157  
  movl %r12d, %edi          #  9     0xab2fd  3      OPC=1157  
  nop                       #  10    0xab300  1      OPC=1343  
  nop                       #  11    0xab301  1      OPC=1343  
  nop                       #  12    0xab302  1      OPC=1343  
  nop                       #  13    0xab303  1      OPC=1343  
  nop                       #  14    0xab304  1      OPC=1343  
  nop                       #  15    0xab305  1      OPC=1343  
  nop                       #  16    0xab306  1      OPC=1343  
  nop                       #  17    0xab307  1      OPC=1343  
  nop                       #  18    0xab308  1      OPC=1343  
  nop                       #  19    0xab309  1      OPC=1343  
  nop                       #  20    0xab30a  1      OPC=1343  
  nop                       #  21    0xab30b  1      OPC=1343  
  nop                       #  22    0xab30c  1      OPC=1343  
  nop                       #  23    0xab30d  1      OPC=1343  
  nop                       #  24    0xab30e  1      OPC=1343  
  nop                       #  25    0xab30f  1      OPC=1343  
  nop                       #  26    0xab310  1      OPC=1343  
  nop                       #  27    0xab311  1      OPC=1343  
  nop                       #  28    0xab312  1      OPC=1343  
  nop                       #  29    0xab313  1      OPC=1343  
  nop                       #  30    0xab314  1      OPC=1343  
  nop                       #  31    0xab315  1      OPC=1343  
  nop                       #  32    0xab316  1      OPC=1343  
  nop                       #  33    0xab317  1      OPC=1343  
  nop                       #  34    0xab318  1      OPC=1343  
  nop                       #  35    0xab319  1      OPC=1343  
  nop                       #  36    0xab31a  1      OPC=1343  
  callq .strlen             #  37    0xab31b  5      OPC=260   
  movl %r13d, %edx          #  38    0xab320  3      OPC=1157  
  movl %r12d, %esi          #  39    0xab323  3      OPC=1157  
  movl %ebx, %edi           #  40    0xab326  2      OPC=1157  
  movq 0x8(%rsp), %r12      #  41    0xab328  5      OPC=1161  
  movq (%rsp), %rbx         #  42    0xab32d  4      OPC=1161  
  movl %eax, %ecx           #  43    0xab331  2      OPC=1157  
  movq 0x10(%rsp), %r13     #  44    0xab333  5      OPC=1161  
  addl $0x18, %esp          #  45    0xab338  3      OPC=65    
  addq %r15, %rsp           #  46    0xab33b  3      OPC=72    
  xchgw %ax, %ax            #  47    0xab33e  2      OPC=3700  
  jmpq ._ZNKSs5rfindEPKcjj  #  48    0xab340  5      OPC=930   
  nop                       #  49    0xab345  1      OPC=1343  
  nop                       #  50    0xab346  1      OPC=1343  
  nop                       #  51    0xab347  1      OPC=1343  
  nop                       #  52    0xab348  1      OPC=1343  
  nop                       #  53    0xab349  1      OPC=1343  
  nop                       #  54    0xab34a  1      OPC=1343  
  nop                       #  55    0xab34b  1      OPC=1343  
  nop                       #  56    0xab34c  1      OPC=1343  
  nop                       #  57    0xab34d  1      OPC=1343  
  nop                       #  58    0xab34e  1      OPC=1343  
  nop                       #  59    0xab34f  1      OPC=1343  
  nop                       #  60    0xab350  1      OPC=1343  
  nop                       #  61    0xab351  1      OPC=1343  
  nop                       #  62    0xab352  1      OPC=1343  
  nop                       #  63    0xab353  1      OPC=1343  
  nop                       #  64    0xab354  1      OPC=1343  
  nop                       #  65    0xab355  1      OPC=1343  
  nop                       #  66    0xab356  1      OPC=1343  
  nop                       #  67    0xab357  1      OPC=1343  
  nop                       #  68    0xab358  1      OPC=1343  
  nop                       #  69    0xab359  1      OPC=1343  
  nop                       #  70    0xab35a  1      OPC=1343  
  nop                       #  71    0xab35b  1      OPC=1343  
  nop                       #  72    0xab35c  1      OPC=1343  
  nop                       #  73    0xab35d  1      OPC=1343  
  nop                       #  74    0xab35e  1      OPC=1343  
  nop                       #  75    0xab35f  1      OPC=1343  
                                                               
.size _ZNKSs5rfindEPKcj, .-_ZNKSs5rfindEPKcj

