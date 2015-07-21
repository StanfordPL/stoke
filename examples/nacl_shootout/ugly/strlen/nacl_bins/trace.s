  .text
  .globl trace
  .type trace, @function

#! file-offset 0x65640
#! rip-offset  0x25640
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.trace:                         #        0x25640  0      OPC=0     
  pushq %rbx                    #  1     0x25640  1      OPC=1861  
  movl %edi, %ebx               #  2     0x25641  2      OPC=1157  
  movl 0x1004baf3(%rip), %eax   #  3     0x25643  6      OPC=1156  
  subl $0x1, %eax               #  4     0x25649  3      OPC=2384  
  movl %eax, 0x1004baea(%rip)   #  5     0x2564c  6      OPC=1136  
  testl %eax, %eax              #  6     0x25652  2      OPC=2436  
  jle .L_25660                  #  7     0x25654  6      OPC=919   
  nop                           #  8     0x2565a  1      OPC=1343  
  nop                           #  9     0x2565b  1      OPC=1343  
  movsbl %bl, %edi              #  10    0x2565c  3      OPC=1282  
  popq %rbx                     #  11    0x2565f  1      OPC=1694  
  jmpq .putchar                 #  12    0x25660  5      OPC=930   
  nop                           #  13    0x25665  1      OPC=1343  
.L_25660:                       #        0x25666  0      OPC=0     
  movl $0xa, %edi               #  14    0x25666  5      OPC=1154  
  nop                           #  15    0x2566b  1      OPC=1343  
  nop                           #  16    0x2566c  1      OPC=1343  
  nop                           #  17    0x2566d  1      OPC=1343  
  nop                           #  18    0x2566e  1      OPC=1343  
  nop                           #  19    0x2566f  1      OPC=1343  
  nop                           #  20    0x25670  1      OPC=1343  
  nop                           #  21    0x25671  1      OPC=1343  
  nop                           #  22    0x25672  1      OPC=1343  
  nop                           #  23    0x25673  1      OPC=1343  
  nop                           #  24    0x25674  1      OPC=1343  
  nop                           #  25    0x25675  1      OPC=1343  
  nop                           #  26    0x25676  1      OPC=1343  
  nop                           #  27    0x25677  1      OPC=1343  
  nop                           #  28    0x25678  1      OPC=1343  
  nop                           #  29    0x25679  1      OPC=1343  
  nop                           #  30    0x2567a  1      OPC=1343  
  nop                           #  31    0x2567b  1      OPC=1343  
  nop                           #  32    0x2567c  1      OPC=1343  
  nop                           #  33    0x2567d  1      OPC=1343  
  nop                           #  34    0x2567e  1      OPC=1343  
  nop                           #  35    0x2567f  1      OPC=1343  
  nop                           #  36    0x25680  1      OPC=1343  
  callq .putchar                #  37    0x25681  5      OPC=260   
  movl $0x32, 0x1004bab2(%rip)  #  38    0x25686  10     OPC=1135  
  movsbl %bl, %edi              #  39    0x25690  3      OPC=1282  
  popq %rbx                     #  40    0x25693  1      OPC=1694  
  jmpq .putchar                 #  41    0x25694  5      OPC=930   
  nop                           #  42    0x25699  1      OPC=1343  
  nop                           #  43    0x2569a  1      OPC=1343  
  nop                           #  44    0x2569b  1      OPC=1343  
  nop                           #  45    0x2569c  1      OPC=1343  
  nop                           #  46    0x2569d  1      OPC=1343  
  nop                           #  47    0x2569e  1      OPC=1343  
  nop                           #  48    0x2569f  1      OPC=1343  
  nop                           #  49    0x256a0  1      OPC=1343  
  nop                           #  50    0x256a1  1      OPC=1343  
  nop                           #  51    0x256a2  1      OPC=1343  
  nop                           #  52    0x256a3  1      OPC=1343  
  nop                           #  53    0x256a4  1      OPC=1343  
  nop                           #  54    0x256a5  1      OPC=1343  
                                                                   
.size trace, .-trace

