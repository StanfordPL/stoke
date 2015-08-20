  .text
  .globl _ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv
  .type _ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv, @function

#! file-offset 0x12ace0
#! rip-offset  0xeace0
#! capacity    128 bytes

# Text                                                                      #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv:  #        0xeace0  0      OPC=<label>         
  pushq %rbx                                                                #  1     0xeace0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                           #  2     0xeace1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                           #  3     0xeace3  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x60(%r15,%rbx,1)                                              #  4     0xeace5  6      OPC=cmpb_m8_imm8    
  jne .L_ead00                                                              #  5     0xeaceb  2      OPC=jne_label       
  movl %ebx, %ebx                                                           #  6     0xeaced  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rbx,1), %edx                                              #  7     0xeacef  5      OPC=movl_r32_m32    
  testl %edx, %edx                                                          #  8     0xeacf4  2      OPC=testl_r32_r32   
  je .L_ead20                                                               #  9     0xeacf6  2      OPC=je_label        
  nop                                                                       #  10    0xeacf8  1      OPC=nop             
  nop                                                                       #  11    0xeacf9  1      OPC=nop             
  nop                                                                       #  12    0xeacfa  1      OPC=nop             
  nop                                                                       #  13    0xeacfb  1      OPC=nop             
  nop                                                                       #  14    0xeacfc  1      OPC=nop             
  nop                                                                       #  15    0xeacfd  1      OPC=nop             
  nop                                                                       #  16    0xeacfe  1      OPC=nop             
  nop                                                                       #  17    0xeacff  1      OPC=nop             
.L_ead00:                                                                   #        0xead00  0      OPC=<label>         
  popq %rbx                                                                 #  18    0xead00  1      OPC=popq_r64_1      
  popq %r11                                                                 #  19    0xead01  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                   #  20    0xead03  7      OPC=andl_r32_imm32  
  nop                                                                       #  21    0xead0a  1      OPC=nop             
  nop                                                                       #  22    0xead0b  1      OPC=nop             
  nop                                                                       #  23    0xead0c  1      OPC=nop             
  nop                                                                       #  24    0xead0d  1      OPC=nop             
  addq %r15, %r11                                                           #  25    0xead0e  3      OPC=addq_r64_r64    
  jmpq %r11                                                                 #  26    0xead11  3      OPC=jmpq_r64        
  nop                                                                       #  27    0xead14  1      OPC=nop             
  nop                                                                       #  28    0xead15  1      OPC=nop             
  nop                                                                       #  29    0xead16  1      OPC=nop             
  nop                                                                       #  30    0xead17  1      OPC=nop             
  nop                                                                       #  31    0xead18  1      OPC=nop             
  nop                                                                       #  32    0xead19  1      OPC=nop             
  nop                                                                       #  33    0xead1a  1      OPC=nop             
  nop                                                                       #  34    0xead1b  1      OPC=nop             
  nop                                                                       #  35    0xead1c  1      OPC=nop             
  nop                                                                       #  36    0xead1d  1      OPC=nop             
  nop                                                                       #  37    0xead1e  1      OPC=nop             
  nop                                                                       #  38    0xead1f  1      OPC=nop             
  nop                                                                       #  39    0xead20  1      OPC=nop             
  nop                                                                       #  40    0xead21  1      OPC=nop             
  nop                                                                       #  41    0xead22  1      OPC=nop             
  nop                                                                       #  42    0xead23  1      OPC=nop             
  nop                                                                       #  43    0xead24  1      OPC=nop             
  nop                                                                       #  44    0xead25  1      OPC=nop             
  nop                                                                       #  45    0xead26  1      OPC=nop             
.L_ead20:                                                                   #        0xead27  0      OPC=<label>         
  movl %ebx, %ebx                                                           #  46    0xead27  2      OPC=movl_r32_r32    
  movl 0x5c(%r15,%rbx,1), %edi                                              #  47    0xead29  5      OPC=movl_r32_m32    
  nop                                                                       #  48    0xead2e  1      OPC=nop             
  nop                                                                       #  49    0xead2f  1      OPC=nop             
  nop                                                                       #  50    0xead30  1      OPC=nop             
  nop                                                                       #  51    0xead31  1      OPC=nop             
  nop                                                                       #  52    0xead32  1      OPC=nop             
  nop                                                                       #  53    0xead33  1      OPC=nop             
  nop                                                                       #  54    0xead34  1      OPC=nop             
  nop                                                                       #  55    0xead35  1      OPC=nop             
  nop                                                                       #  56    0xead36  1      OPC=nop             
  nop                                                                       #  57    0xead37  1      OPC=nop             
  nop                                                                       #  58    0xead38  1      OPC=nop             
  nop                                                                       #  59    0xead39  1      OPC=nop             
  nop                                                                       #  60    0xead3a  1      OPC=nop             
  nop                                                                       #  61    0xead3b  1      OPC=nop             
  nop                                                                       #  62    0xead3c  1      OPC=nop             
  nop                                                                       #  63    0xead3d  1      OPC=nop             
  nop                                                                       #  64    0xead3e  1      OPC=nop             
  nop                                                                       #  65    0xead3f  1      OPC=nop             
  nop                                                                       #  66    0xead40  1      OPC=nop             
  nop                                                                       #  67    0xead41  1      OPC=nop             
  callq ._Znaj                                                              #  68    0xead42  5      OPC=callq_label     
  movl %ebx, %ebx                                                           #  69    0xead47  2      OPC=movl_r32_r32    
  movb $0x1, 0x60(%r15,%rbx,1)                                              #  70    0xead49  6      OPC=movb_m8_imm8    
  movl %ebx, %ebx                                                           #  71    0xead4f  2      OPC=movl_r32_r32    
  movl %eax, 0x58(%r15,%rbx,1)                                              #  72    0xead51  5      OPC=movl_m32_r32    
  jmpq .L_ead00                                                             #  73    0xead56  2      OPC=jmpq_label      
  nop                                                                       #  74    0xead58  1      OPC=nop             
  nop                                                                       #  75    0xead59  1      OPC=nop             
  nop                                                                       #  76    0xead5a  1      OPC=nop             
  nop                                                                       #  77    0xead5b  1      OPC=nop             
  nop                                                                       #  78    0xead5c  1      OPC=nop             
  nop                                                                       #  79    0xead5d  1      OPC=nop             
  nop                                                                       #  80    0xead5e  1      OPC=nop             
  nop                                                                       #  81    0xead5f  1      OPC=nop             
  nop                                                                       #  82    0xead60  1      OPC=nop             
  nop                                                                       #  83    0xead61  1      OPC=nop             
  nop                                                                       #  84    0xead62  1      OPC=nop             
  nop                                                                       #  85    0xead63  1      OPC=nop             
  nop                                                                       #  86    0xead64  1      OPC=nop             
  nop                                                                       #  87    0xead65  1      OPC=nop             
  nop                                                                       #  88    0xead66  1      OPC=nop             
                                                                                                                         
.size _ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv, .-_ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv

