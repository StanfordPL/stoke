  .text
  .globl _ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv
  .type _ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv, @function

#! file-offset 0x12a4a0
#! rip-offset  0xea4a0
#! capacity    128 bytes

# Text                                                                      #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv:  #        0xea4a0  0      OPC=0     
  pushq %rbx                                                                #  1     0xea4a0  1      OPC=1861  
  movl %edi, %ebx                                                           #  2     0xea4a1  2      OPC=1157  
  movl %ebx, %ebx                                                           #  3     0xea4a3  2      OPC=1157  
  cmpb $0x0, 0x60(%r15,%rbx,1)                                              #  4     0xea4a5  6      OPC=461   
  jne .L_ea4c0                                                              #  5     0xea4ab  6      OPC=963   
  nop                                                                       #  6     0xea4b1  1      OPC=1343  
  nop                                                                       #  7     0xea4b2  1      OPC=1343  
  movl %ebx, %ebx                                                           #  8     0xea4b3  2      OPC=1157  
  movl 0x58(%r15,%rbx,1), %edx                                              #  9     0xea4b5  5      OPC=1156  
  testl %edx, %edx                                                          #  10    0xea4ba  2      OPC=2436  
  je .L_ea4e0                                                               #  11    0xea4bc  6      OPC=893   
  nop                                                                       #  12    0xea4c2  1      OPC=1343  
  nop                                                                       #  13    0xea4c3  1      OPC=1343  
  nop                                                                       #  14    0xea4c4  1      OPC=1343  
  nop                                                                       #  15    0xea4c5  1      OPC=1343  
  nop                                                                       #  16    0xea4c6  1      OPC=1343  
  nop                                                                       #  17    0xea4c7  1      OPC=1343  
  nop                                                                       #  18    0xea4c8  1      OPC=1343  
  nop                                                                       #  19    0xea4c9  1      OPC=1343  
  nop                                                                       #  20    0xea4ca  1      OPC=1343  
  nop                                                                       #  21    0xea4cb  1      OPC=1343  
.L_ea4c0:                                                                   #        0xea4cc  0      OPC=0     
  popq %rbx                                                                 #  22    0xea4cc  1      OPC=1694  
  popq %r11                                                                 #  23    0xea4cd  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                   #  24    0xea4cf  7      OPC=131   
  nop                                                                       #  25    0xea4d6  1      OPC=1343  
  nop                                                                       #  26    0xea4d7  1      OPC=1343  
  nop                                                                       #  27    0xea4d8  1      OPC=1343  
  nop                                                                       #  28    0xea4d9  1      OPC=1343  
  addq %r15, %r11                                                           #  29    0xea4da  3      OPC=72    
  jmpq %r11                                                                 #  30    0xea4dd  3      OPC=928   
  nop                                                                       #  31    0xea4e0  1      OPC=1343  
  nop                                                                       #  32    0xea4e1  1      OPC=1343  
  nop                                                                       #  33    0xea4e2  1      OPC=1343  
  nop                                                                       #  34    0xea4e3  1      OPC=1343  
  nop                                                                       #  35    0xea4e4  1      OPC=1343  
  nop                                                                       #  36    0xea4e5  1      OPC=1343  
  nop                                                                       #  37    0xea4e6  1      OPC=1343  
  nop                                                                       #  38    0xea4e7  1      OPC=1343  
  nop                                                                       #  39    0xea4e8  1      OPC=1343  
  nop                                                                       #  40    0xea4e9  1      OPC=1343  
  nop                                                                       #  41    0xea4ea  1      OPC=1343  
  nop                                                                       #  42    0xea4eb  1      OPC=1343  
  nop                                                                       #  43    0xea4ec  1      OPC=1343  
  nop                                                                       #  44    0xea4ed  1      OPC=1343  
  nop                                                                       #  45    0xea4ee  1      OPC=1343  
  nop                                                                       #  46    0xea4ef  1      OPC=1343  
  nop                                                                       #  47    0xea4f0  1      OPC=1343  
  nop                                                                       #  48    0xea4f1  1      OPC=1343  
  nop                                                                       #  49    0xea4f2  1      OPC=1343  
.L_ea4e0:                                                                   #        0xea4f3  0      OPC=0     
  movl %ebx, %ebx                                                           #  50    0xea4f3  2      OPC=1157  
  movl 0x5c(%r15,%rbx,1), %edi                                              #  51    0xea4f5  5      OPC=1156  
  nop                                                                       #  52    0xea4fa  1      OPC=1343  
  nop                                                                       #  53    0xea4fb  1      OPC=1343  
  nop                                                                       #  54    0xea4fc  1      OPC=1343  
  nop                                                                       #  55    0xea4fd  1      OPC=1343  
  nop                                                                       #  56    0xea4fe  1      OPC=1343  
  nop                                                                       #  57    0xea4ff  1      OPC=1343  
  nop                                                                       #  58    0xea500  1      OPC=1343  
  nop                                                                       #  59    0xea501  1      OPC=1343  
  nop                                                                       #  60    0xea502  1      OPC=1343  
  nop                                                                       #  61    0xea503  1      OPC=1343  
  nop                                                                       #  62    0xea504  1      OPC=1343  
  nop                                                                       #  63    0xea505  1      OPC=1343  
  nop                                                                       #  64    0xea506  1      OPC=1343  
  nop                                                                       #  65    0xea507  1      OPC=1343  
  nop                                                                       #  66    0xea508  1      OPC=1343  
  nop                                                                       #  67    0xea509  1      OPC=1343  
  nop                                                                       #  68    0xea50a  1      OPC=1343  
  nop                                                                       #  69    0xea50b  1      OPC=1343  
  nop                                                                       #  70    0xea50c  1      OPC=1343  
  nop                                                                       #  71    0xea50d  1      OPC=1343  
  callq ._Znaj                                                              #  72    0xea50e  5      OPC=260   
  movl %ebx, %ebx                                                           #  73    0xea513  2      OPC=1157  
  movb $0x1, 0x60(%r15,%rbx,1)                                              #  74    0xea515  6      OPC=1140  
  movl %ebx, %ebx                                                           #  75    0xea51b  2      OPC=1157  
  movl %eax, 0x58(%r15,%rbx,1)                                              #  76    0xea51d  5      OPC=1136  
  jmpq .L_ea4c0                                                             #  77    0xea522  5      OPC=930   
  nop                                                                       #  78    0xea527  1      OPC=1343  
  nop                                                                       #  79    0xea528  1      OPC=1343  
  nop                                                                       #  80    0xea529  1      OPC=1343  
  nop                                                                       #  81    0xea52a  1      OPC=1343  
  nop                                                                       #  82    0xea52b  1      OPC=1343  
  nop                                                                       #  83    0xea52c  1      OPC=1343  
  nop                                                                       #  84    0xea52d  1      OPC=1343  
  nop                                                                       #  85    0xea52e  1      OPC=1343  
  nop                                                                       #  86    0xea52f  1      OPC=1343  
  nop                                                                       #  87    0xea530  1      OPC=1343  
  nop                                                                       #  88    0xea531  1      OPC=1343  
  nop                                                                       #  89    0xea532  1      OPC=1343  
  nop                                                                       #  90    0xea533  1      OPC=1343  
  nop                                                                       #  91    0xea534  1      OPC=1343  
  nop                                                                       #  92    0xea535  1      OPC=1343  
  nop                                                                       #  93    0xea536  1      OPC=1343  
  nop                                                                       #  94    0xea537  1      OPC=1343  
                                                                                                               
.size _ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv, .-_ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv

