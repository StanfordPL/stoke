  .text
  .globl _ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv
  .type _ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv, @function

#! file-offset 0x12b400
#! rip-offset  0xeb400
#! capacity    128 bytes

# Text                                                                      #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv:  #        0xeb400  0      OPC=<label>         
  pushq %rbx                                                                #  1     0xeb400  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                           #  2     0xeb401  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                           #  3     0xeb403  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x60(%r15,%rbx,1)                                              #  4     0xeb405  6      OPC=cmpb_m8_imm8    
  jne .L_eb420                                                              #  5     0xeb40b  2      OPC=jne_label       
  movl %ebx, %ebx                                                           #  6     0xeb40d  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rbx,1), %edx                                              #  7     0xeb40f  5      OPC=movl_r32_m32    
  testl %edx, %edx                                                          #  8     0xeb414  2      OPC=testl_r32_r32   
  je .L_eb440                                                               #  9     0xeb416  2      OPC=je_label        
  nop                                                                       #  10    0xeb418  1      OPC=nop             
  nop                                                                       #  11    0xeb419  1      OPC=nop             
  nop                                                                       #  12    0xeb41a  1      OPC=nop             
  nop                                                                       #  13    0xeb41b  1      OPC=nop             
  nop                                                                       #  14    0xeb41c  1      OPC=nop             
  nop                                                                       #  15    0xeb41d  1      OPC=nop             
  nop                                                                       #  16    0xeb41e  1      OPC=nop             
  nop                                                                       #  17    0xeb41f  1      OPC=nop             
.L_eb420:                                                                   #        0xeb420  0      OPC=<label>         
  popq %rbx                                                                 #  18    0xeb420  1      OPC=popq_r64_1      
  popq %r11                                                                 #  19    0xeb421  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                   #  20    0xeb423  7      OPC=andl_r32_imm32  
  nop                                                                       #  21    0xeb42a  1      OPC=nop             
  nop                                                                       #  22    0xeb42b  1      OPC=nop             
  nop                                                                       #  23    0xeb42c  1      OPC=nop             
  nop                                                                       #  24    0xeb42d  1      OPC=nop             
  addq %r15, %r11                                                           #  25    0xeb42e  3      OPC=addq_r64_r64    
  jmpq %r11                                                                 #  26    0xeb431  3      OPC=jmpq_r64        
  nop                                                                       #  27    0xeb434  1      OPC=nop             
  nop                                                                       #  28    0xeb435  1      OPC=nop             
  nop                                                                       #  29    0xeb436  1      OPC=nop             
  nop                                                                       #  30    0xeb437  1      OPC=nop             
  nop                                                                       #  31    0xeb438  1      OPC=nop             
  nop                                                                       #  32    0xeb439  1      OPC=nop             
  nop                                                                       #  33    0xeb43a  1      OPC=nop             
  nop                                                                       #  34    0xeb43b  1      OPC=nop             
  nop                                                                       #  35    0xeb43c  1      OPC=nop             
  nop                                                                       #  36    0xeb43d  1      OPC=nop             
  nop                                                                       #  37    0xeb43e  1      OPC=nop             
  nop                                                                       #  38    0xeb43f  1      OPC=nop             
  nop                                                                       #  39    0xeb440  1      OPC=nop             
  nop                                                                       #  40    0xeb441  1      OPC=nop             
  nop                                                                       #  41    0xeb442  1      OPC=nop             
  nop                                                                       #  42    0xeb443  1      OPC=nop             
  nop                                                                       #  43    0xeb444  1      OPC=nop             
  nop                                                                       #  44    0xeb445  1      OPC=nop             
  nop                                                                       #  45    0xeb446  1      OPC=nop             
.L_eb440:                                                                   #        0xeb447  0      OPC=<label>         
  movl %ebx, %ebx                                                           #  46    0xeb447  2      OPC=movl_r32_r32    
  movl 0x5c(%r15,%rbx,1), %edi                                              #  47    0xeb449  5      OPC=movl_r32_m32    
  nop                                                                       #  48    0xeb44e  1      OPC=nop             
  nop                                                                       #  49    0xeb44f  1      OPC=nop             
  nop                                                                       #  50    0xeb450  1      OPC=nop             
  nop                                                                       #  51    0xeb451  1      OPC=nop             
  nop                                                                       #  52    0xeb452  1      OPC=nop             
  nop                                                                       #  53    0xeb453  1      OPC=nop             
  nop                                                                       #  54    0xeb454  1      OPC=nop             
  nop                                                                       #  55    0xeb455  1      OPC=nop             
  nop                                                                       #  56    0xeb456  1      OPC=nop             
  nop                                                                       #  57    0xeb457  1      OPC=nop             
  nop                                                                       #  58    0xeb458  1      OPC=nop             
  nop                                                                       #  59    0xeb459  1      OPC=nop             
  nop                                                                       #  60    0xeb45a  1      OPC=nop             
  nop                                                                       #  61    0xeb45b  1      OPC=nop             
  nop                                                                       #  62    0xeb45c  1      OPC=nop             
  nop                                                                       #  63    0xeb45d  1      OPC=nop             
  nop                                                                       #  64    0xeb45e  1      OPC=nop             
  nop                                                                       #  65    0xeb45f  1      OPC=nop             
  nop                                                                       #  66    0xeb460  1      OPC=nop             
  nop                                                                       #  67    0xeb461  1      OPC=nop             
  callq ._Znaj                                                              #  68    0xeb462  5      OPC=callq_label     
  movl %ebx, %ebx                                                           #  69    0xeb467  2      OPC=movl_r32_r32    
  movb $0x1, 0x60(%r15,%rbx,1)                                              #  70    0xeb469  6      OPC=movb_m8_imm8    
  movl %ebx, %ebx                                                           #  71    0xeb46f  2      OPC=movl_r32_r32    
  movl %eax, 0x58(%r15,%rbx,1)                                              #  72    0xeb471  5      OPC=movl_m32_r32    
  jmpq .L_eb420                                                             #  73    0xeb476  2      OPC=jmpq_label      
  nop                                                                       #  74    0xeb478  1      OPC=nop             
  nop                                                                       #  75    0xeb479  1      OPC=nop             
  nop                                                                       #  76    0xeb47a  1      OPC=nop             
  nop                                                                       #  77    0xeb47b  1      OPC=nop             
  nop                                                                       #  78    0xeb47c  1      OPC=nop             
  nop                                                                       #  79    0xeb47d  1      OPC=nop             
  nop                                                                       #  80    0xeb47e  1      OPC=nop             
  nop                                                                       #  81    0xeb47f  1      OPC=nop             
  nop                                                                       #  82    0xeb480  1      OPC=nop             
  nop                                                                       #  83    0xeb481  1      OPC=nop             
  nop                                                                       #  84    0xeb482  1      OPC=nop             
  nop                                                                       #  85    0xeb483  1      OPC=nop             
  nop                                                                       #  86    0xeb484  1      OPC=nop             
  nop                                                                       #  87    0xeb485  1      OPC=nop             
  nop                                                                       #  88    0xeb486  1      OPC=nop             
                                                                                                                         
.size _ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv, .-_ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv

