  .text
  .globl _ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv
  .type _ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv, @function

#! file-offset 0x12a420
#! rip-offset  0xea420
#! capacity    128 bytes

# Text                                                                      #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv:  #        0xea420  0      OPC=0     
  pushq %rbx                                                                #  1     0xea420  1      OPC=1861  
  movl %edi, %ebx                                                           #  2     0xea421  2      OPC=1157  
  movl %ebx, %ebx                                                           #  3     0xea423  2      OPC=1157  
  cmpb $0x0, 0x60(%r15,%rbx,1)                                              #  4     0xea425  6      OPC=461   
  jne .L_ea440                                                              #  5     0xea42b  6      OPC=963   
  nop                                                                       #  6     0xea431  1      OPC=1343  
  nop                                                                       #  7     0xea432  1      OPC=1343  
  movl %ebx, %ebx                                                           #  8     0xea433  2      OPC=1157  
  movl 0x58(%r15,%rbx,1), %eax                                              #  9     0xea435  5      OPC=1156  
  testl %eax, %eax                                                          #  10    0xea43a  2      OPC=2436  
  je .L_ea460                                                               #  11    0xea43c  6      OPC=893   
  nop                                                                       #  12    0xea442  1      OPC=1343  
  nop                                                                       #  13    0xea443  1      OPC=1343  
  nop                                                                       #  14    0xea444  1      OPC=1343  
  nop                                                                       #  15    0xea445  1      OPC=1343  
  nop                                                                       #  16    0xea446  1      OPC=1343  
  nop                                                                       #  17    0xea447  1      OPC=1343  
  nop                                                                       #  18    0xea448  1      OPC=1343  
  nop                                                                       #  19    0xea449  1      OPC=1343  
  nop                                                                       #  20    0xea44a  1      OPC=1343  
  nop                                                                       #  21    0xea44b  1      OPC=1343  
.L_ea440:                                                                   #        0xea44c  0      OPC=0     
  popq %rbx                                                                 #  22    0xea44c  1      OPC=1694  
  popq %r11                                                                 #  23    0xea44d  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                   #  24    0xea44f  7      OPC=131   
  nop                                                                       #  25    0xea456  1      OPC=1343  
  nop                                                                       #  26    0xea457  1      OPC=1343  
  nop                                                                       #  27    0xea458  1      OPC=1343  
  nop                                                                       #  28    0xea459  1      OPC=1343  
  addq %r15, %r11                                                           #  29    0xea45a  3      OPC=72    
  jmpq %r11                                                                 #  30    0xea45d  3      OPC=928   
  nop                                                                       #  31    0xea460  1      OPC=1343  
  nop                                                                       #  32    0xea461  1      OPC=1343  
  nop                                                                       #  33    0xea462  1      OPC=1343  
  nop                                                                       #  34    0xea463  1      OPC=1343  
  nop                                                                       #  35    0xea464  1      OPC=1343  
  nop                                                                       #  36    0xea465  1      OPC=1343  
  nop                                                                       #  37    0xea466  1      OPC=1343  
  nop                                                                       #  38    0xea467  1      OPC=1343  
  nop                                                                       #  39    0xea468  1      OPC=1343  
  nop                                                                       #  40    0xea469  1      OPC=1343  
  nop                                                                       #  41    0xea46a  1      OPC=1343  
  nop                                                                       #  42    0xea46b  1      OPC=1343  
  nop                                                                       #  43    0xea46c  1      OPC=1343  
  nop                                                                       #  44    0xea46d  1      OPC=1343  
  nop                                                                       #  45    0xea46e  1      OPC=1343  
  nop                                                                       #  46    0xea46f  1      OPC=1343  
  nop                                                                       #  47    0xea470  1      OPC=1343  
  nop                                                                       #  48    0xea471  1      OPC=1343  
  nop                                                                       #  49    0xea472  1      OPC=1343  
.L_ea460:                                                                   #        0xea473  0      OPC=0     
  movl %ebx, %ebx                                                           #  50    0xea473  2      OPC=1157  
  movl 0x5c(%r15,%rbx,1), %edi                                              #  51    0xea475  5      OPC=1156  
  shll $0x2, %edi                                                           #  52    0xea47a  3      OPC=2269  
  xchgw %ax, %ax                                                            #  53    0xea47d  2      OPC=3700  
  nop                                                                       #  54    0xea47f  1      OPC=1343  
  nop                                                                       #  55    0xea480  1      OPC=1343  
  nop                                                                       #  56    0xea481  1      OPC=1343  
  nop                                                                       #  57    0xea482  1      OPC=1343  
  nop                                                                       #  58    0xea483  1      OPC=1343  
  nop                                                                       #  59    0xea484  1      OPC=1343  
  nop                                                                       #  60    0xea485  1      OPC=1343  
  nop                                                                       #  61    0xea486  1      OPC=1343  
  nop                                                                       #  62    0xea487  1      OPC=1343  
  nop                                                                       #  63    0xea488  1      OPC=1343  
  nop                                                                       #  64    0xea489  1      OPC=1343  
  nop                                                                       #  65    0xea48a  1      OPC=1343  
  nop                                                                       #  66    0xea48b  1      OPC=1343  
  nop                                                                       #  67    0xea48c  1      OPC=1343  
  nop                                                                       #  68    0xea48d  1      OPC=1343  
  callq ._Znaj                                                              #  69    0xea48e  5      OPC=260   
  movl %ebx, %ebx                                                           #  70    0xea493  2      OPC=1157  
  movb $0x1, 0x60(%r15,%rbx,1)                                              #  71    0xea495  6      OPC=1140  
  movl %ebx, %ebx                                                           #  72    0xea49b  2      OPC=1157  
  movl %eax, 0x58(%r15,%rbx,1)                                              #  73    0xea49d  5      OPC=1136  
  jmpq .L_ea440                                                             #  74    0xea4a2  5      OPC=930   
  nop                                                                       #  75    0xea4a7  1      OPC=1343  
  nop                                                                       #  76    0xea4a8  1      OPC=1343  
  nop                                                                       #  77    0xea4a9  1      OPC=1343  
  nop                                                                       #  78    0xea4aa  1      OPC=1343  
  nop                                                                       #  79    0xea4ab  1      OPC=1343  
  nop                                                                       #  80    0xea4ac  1      OPC=1343  
  nop                                                                       #  81    0xea4ad  1      OPC=1343  
  nop                                                                       #  82    0xea4ae  1      OPC=1343  
  nop                                                                       #  83    0xea4af  1      OPC=1343  
  nop                                                                       #  84    0xea4b0  1      OPC=1343  
  nop                                                                       #  85    0xea4b1  1      OPC=1343  
  nop                                                                       #  86    0xea4b2  1      OPC=1343  
  nop                                                                       #  87    0xea4b3  1      OPC=1343  
  nop                                                                       #  88    0xea4b4  1      OPC=1343  
  nop                                                                       #  89    0xea4b5  1      OPC=1343  
  nop                                                                       #  90    0xea4b6  1      OPC=1343  
  nop                                                                       #  91    0xea4b7  1      OPC=1343  
                                                                                                               
.size _ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv, .-_ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv

