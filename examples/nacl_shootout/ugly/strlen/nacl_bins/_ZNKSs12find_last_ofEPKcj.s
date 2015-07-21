  .text
  .globl _ZNKSs12find_last_ofEPKcj
  .type _ZNKSs12find_last_ofEPKcj, @function

#! file-offset 0xeb4e0
#! rip-offset  0xab4e0
#! capacity    128 bytes

# Text                              #  Line  RIP      Bytes  Opcode    
._ZNKSs12find_last_ofEPKcj:         #        0xab4e0  0      OPC=0     
  movq %r12, -0x10(%rsp)            #  1     0xab4e0  5      OPC=1138  
  movl %esi, %r12d                  #  2     0xab4e5  3      OPC=1157  
  movq %rbx, -0x18(%rsp)            #  3     0xab4e8  5      OPC=1138  
  movq %r13, -0x8(%rsp)             #  4     0xab4ed  5      OPC=1138  
  movl %edi, %ebx                   #  5     0xab4f2  2      OPC=1157  
  subl $0x18, %esp                  #  6     0xab4f4  3      OPC=2384  
  addq %r15, %rsp                   #  7     0xab4f7  3      OPC=72    
  movl %edx, %r13d                  #  8     0xab4fa  3      OPC=1157  
  movl %r12d, %edi                  #  9     0xab4fd  3      OPC=1157  
  nop                               #  10    0xab500  1      OPC=1343  
  nop                               #  11    0xab501  1      OPC=1343  
  nop                               #  12    0xab502  1      OPC=1343  
  nop                               #  13    0xab503  1      OPC=1343  
  nop                               #  14    0xab504  1      OPC=1343  
  nop                               #  15    0xab505  1      OPC=1343  
  nop                               #  16    0xab506  1      OPC=1343  
  nop                               #  17    0xab507  1      OPC=1343  
  nop                               #  18    0xab508  1      OPC=1343  
  nop                               #  19    0xab509  1      OPC=1343  
  nop                               #  20    0xab50a  1      OPC=1343  
  nop                               #  21    0xab50b  1      OPC=1343  
  nop                               #  22    0xab50c  1      OPC=1343  
  nop                               #  23    0xab50d  1      OPC=1343  
  nop                               #  24    0xab50e  1      OPC=1343  
  nop                               #  25    0xab50f  1      OPC=1343  
  nop                               #  26    0xab510  1      OPC=1343  
  nop                               #  27    0xab511  1      OPC=1343  
  nop                               #  28    0xab512  1      OPC=1343  
  nop                               #  29    0xab513  1      OPC=1343  
  nop                               #  30    0xab514  1      OPC=1343  
  nop                               #  31    0xab515  1      OPC=1343  
  nop                               #  32    0xab516  1      OPC=1343  
  nop                               #  33    0xab517  1      OPC=1343  
  nop                               #  34    0xab518  1      OPC=1343  
  nop                               #  35    0xab519  1      OPC=1343  
  nop                               #  36    0xab51a  1      OPC=1343  
  callq .strlen                     #  37    0xab51b  5      OPC=260   
  movl %r13d, %edx                  #  38    0xab520  3      OPC=1157  
  movl %r12d, %esi                  #  39    0xab523  3      OPC=1157  
  movl %ebx, %edi                   #  40    0xab526  2      OPC=1157  
  movq 0x8(%rsp), %r12              #  41    0xab528  5      OPC=1161  
  movq (%rsp), %rbx                 #  42    0xab52d  4      OPC=1161  
  movl %eax, %ecx                   #  43    0xab531  2      OPC=1157  
  movq 0x10(%rsp), %r13             #  44    0xab533  5      OPC=1161  
  addl $0x18, %esp                  #  45    0xab538  3      OPC=65    
  addq %r15, %rsp                   #  46    0xab53b  3      OPC=72    
  xchgw %ax, %ax                    #  47    0xab53e  2      OPC=3700  
  jmpq ._ZNKSs12find_last_ofEPKcjj  #  48    0xab540  5      OPC=930   
  nop                               #  49    0xab545  1      OPC=1343  
  nop                               #  50    0xab546  1      OPC=1343  
  nop                               #  51    0xab547  1      OPC=1343  
  nop                               #  52    0xab548  1      OPC=1343  
  nop                               #  53    0xab549  1      OPC=1343  
  nop                               #  54    0xab54a  1      OPC=1343  
  nop                               #  55    0xab54b  1      OPC=1343  
  nop                               #  56    0xab54c  1      OPC=1343  
  nop                               #  57    0xab54d  1      OPC=1343  
  nop                               #  58    0xab54e  1      OPC=1343  
  nop                               #  59    0xab54f  1      OPC=1343  
  nop                               #  60    0xab550  1      OPC=1343  
  nop                               #  61    0xab551  1      OPC=1343  
  nop                               #  62    0xab552  1      OPC=1343  
  nop                               #  63    0xab553  1      OPC=1343  
  nop                               #  64    0xab554  1      OPC=1343  
  nop                               #  65    0xab555  1      OPC=1343  
  nop                               #  66    0xab556  1      OPC=1343  
  nop                               #  67    0xab557  1      OPC=1343  
  nop                               #  68    0xab558  1      OPC=1343  
  nop                               #  69    0xab559  1      OPC=1343  
  nop                               #  70    0xab55a  1      OPC=1343  
  nop                               #  71    0xab55b  1      OPC=1343  
  nop                               #  72    0xab55c  1      OPC=1343  
  nop                               #  73    0xab55d  1      OPC=1343  
  nop                               #  74    0xab55e  1      OPC=1343  
  nop                               #  75    0xab55f  1      OPC=1343  
                                                                       
.size _ZNKSs12find_last_ofEPKcj, .-_ZNKSs12find_last_ofEPKcj

