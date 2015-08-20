  .text
  .globl _ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv
  .type _ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv, @function

#! file-offset 0x12a520
#! rip-offset  0xea520
#! capacity    128 bytes

# Text                                                          #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv:  #        0xea520  0      OPC=<label>         
  movl %edi, %edi                                               #  1     0xea520  2      OPC=movl_r32_r32    
  movl %edi, %edi                                               #  2     0xea522  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x70(%r15,%rdi,1)                                  #  3     0xea524  6      OPC=cmpb_m8_imm8    
  jne .L_ea580                                                  #  4     0xea52a  2      OPC=jne_label       
  movl %edi, %edi                                               #  5     0xea52c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                   #  6     0xea52e  5      OPC=movl_r32_m32    
  movl %edi, %edi                                               #  7     0xea533  2      OPC=movl_r32_r32    
  movb $0x1, 0x70(%r15,%rdi,1)                                  #  8     0xea535  6      OPC=movb_m8_imm8    
  nop                                                           #  9     0xea53b  1      OPC=nop             
  nop                                                           #  10    0xea53c  1      OPC=nop             
  nop                                                           #  11    0xea53d  1      OPC=nop             
  nop                                                           #  12    0xea53e  1      OPC=nop             
  nop                                                           #  13    0xea53f  1      OPC=nop             
  movl %edi, %edi                                               #  14    0xea540  2      OPC=movl_r32_r32    
  movl %eax, 0x68(%r15,%rdi,1)                                  #  15    0xea542  5      OPC=movl_m32_r32    
  movl %edi, %edi                                               #  16    0xea547  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rdi,1), %eax                                   #  17    0xea549  5      OPC=movl_r32_m32    
  movl %edi, %edi                                               #  18    0xea54e  2      OPC=movl_r32_r32    
  movl %eax, 0x6c(%r15,%rdi,1)                                  #  19    0xea550  5      OPC=movl_m32_r32    
  leal 0x64(%rdi), %eax                                         #  20    0xea555  3      OPC=leal_r32_m16    
  movl %edi, %edi                                               #  21    0xea558  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rdi,1)                                   #  22    0xea55a  5      OPC=movl_m32_r32    
  nop                                                           #  23    0xea55f  1      OPC=nop             
  movl %edi, %edi                                               #  24    0xea560  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                                   #  25    0xea562  5      OPC=movl_m32_r32    
  addl $0x4, %eax                                               #  26    0xea567  3      OPC=addl_r32_imm8   
  movl %edi, %edi                                               #  27    0xea56a  2      OPC=movl_r32_r32    
  movl %eax, 0xc(%r15,%rdi,1)                                   #  28    0xea56c  5      OPC=movl_m32_r32    
  nop                                                           #  29    0xea571  1      OPC=nop             
  nop                                                           #  30    0xea572  1      OPC=nop             
  nop                                                           #  31    0xea573  1      OPC=nop             
  nop                                                           #  32    0xea574  1      OPC=nop             
  nop                                                           #  33    0xea575  1      OPC=nop             
  nop                                                           #  34    0xea576  1      OPC=nop             
  nop                                                           #  35    0xea577  1      OPC=nop             
  nop                                                           #  36    0xea578  1      OPC=nop             
  nop                                                           #  37    0xea579  1      OPC=nop             
  nop                                                           #  38    0xea57a  1      OPC=nop             
  nop                                                           #  39    0xea57b  1      OPC=nop             
  nop                                                           #  40    0xea57c  1      OPC=nop             
  nop                                                           #  41    0xea57d  1      OPC=nop             
  nop                                                           #  42    0xea57e  1      OPC=nop             
  nop                                                           #  43    0xea57f  1      OPC=nop             
.L_ea580:                                                       #        0xea580  0      OPC=<label>         
  popq %r11                                                     #  44    0xea580  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                       #  45    0xea582  7      OPC=andl_r32_imm32  
  nop                                                           #  46    0xea589  1      OPC=nop             
  nop                                                           #  47    0xea58a  1      OPC=nop             
  nop                                                           #  48    0xea58b  1      OPC=nop             
  nop                                                           #  49    0xea58c  1      OPC=nop             
  addq %r15, %r11                                               #  50    0xea58d  3      OPC=addq_r64_r64    
  jmpq %r11                                                     #  51    0xea590  3      OPC=jmpq_r64        
  nop                                                           #  52    0xea593  1      OPC=nop             
  nop                                                           #  53    0xea594  1      OPC=nop             
  nop                                                           #  54    0xea595  1      OPC=nop             
  nop                                                           #  55    0xea596  1      OPC=nop             
  nop                                                           #  56    0xea597  1      OPC=nop             
  nop                                                           #  57    0xea598  1      OPC=nop             
  nop                                                           #  58    0xea599  1      OPC=nop             
  nop                                                           #  59    0xea59a  1      OPC=nop             
  nop                                                           #  60    0xea59b  1      OPC=nop             
  nop                                                           #  61    0xea59c  1      OPC=nop             
  nop                                                           #  62    0xea59d  1      OPC=nop             
  nop                                                           #  63    0xea59e  1      OPC=nop             
  nop                                                           #  64    0xea59f  1      OPC=nop             
  nop                                                           #  65    0xea5a0  1      OPC=nop             
  nop                                                           #  66    0xea5a1  1      OPC=nop             
  nop                                                           #  67    0xea5a2  1      OPC=nop             
  nop                                                           #  68    0xea5a3  1      OPC=nop             
  nop                                                           #  69    0xea5a4  1      OPC=nop             
  nop                                                           #  70    0xea5a5  1      OPC=nop             
  nop                                                           #  71    0xea5a6  1      OPC=nop             
                                                                                                             
.size _ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv, .-_ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv

