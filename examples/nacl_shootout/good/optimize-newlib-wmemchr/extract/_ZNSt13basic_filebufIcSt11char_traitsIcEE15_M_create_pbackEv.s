  .text
  .globl _ZNSt13basic_filebufIcSt11char_traitsIcEE15_M_create_pbackEv
  .type _ZNSt13basic_filebufIcSt11char_traitsIcEE15_M_create_pbackEv, @function

#! file-offset 0x12a000
#! rip-offset  0xea000
#! capacity    128 bytes

# Text                                                          #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIcSt11char_traitsIcEE15_M_create_pbackEv:  #        0xea000  0      OPC=<label>         
  movl %edi, %edi                                               #  1     0xea000  2      OPC=movl_r32_r32    
  movl %edi, %edi                                               #  2     0xea002  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x6c(%r15,%rdi,1)                                  #  3     0xea004  6      OPC=cmpb_m8_imm8    
  jne .L_ea060                                                  #  4     0xea00a  2      OPC=jne_label       
  movl %edi, %edi                                               #  5     0xea00c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                   #  6     0xea00e  5      OPC=movl_r32_m32    
  movl %edi, %edi                                               #  7     0xea013  2      OPC=movl_r32_r32    
  movb $0x1, 0x6c(%r15,%rdi,1)                                  #  8     0xea015  6      OPC=movb_m8_imm8    
  nop                                                           #  9     0xea01b  1      OPC=nop             
  nop                                                           #  10    0xea01c  1      OPC=nop             
  nop                                                           #  11    0xea01d  1      OPC=nop             
  nop                                                           #  12    0xea01e  1      OPC=nop             
  nop                                                           #  13    0xea01f  1      OPC=nop             
  movl %edi, %edi                                               #  14    0xea020  2      OPC=movl_r32_r32    
  movl %eax, 0x64(%r15,%rdi,1)                                  #  15    0xea022  5      OPC=movl_m32_r32    
  movl %edi, %edi                                               #  16    0xea027  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rdi,1), %eax                                   #  17    0xea029  5      OPC=movl_r32_m32    
  movl %edi, %edi                                               #  18    0xea02e  2      OPC=movl_r32_r32    
  movl %eax, 0x68(%r15,%rdi,1)                                  #  19    0xea030  5      OPC=movl_m32_r32    
  leal 0x63(%rdi), %eax                                         #  20    0xea035  3      OPC=leal_r32_m16    
  movl %edi, %edi                                               #  21    0xea038  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rdi,1)                                   #  22    0xea03a  5      OPC=movl_m32_r32    
  nop                                                           #  23    0xea03f  1      OPC=nop             
  movl %edi, %edi                                               #  24    0xea040  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                                   #  25    0xea042  5      OPC=movl_m32_r32    
  addl $0x1, %eax                                               #  26    0xea047  3      OPC=addl_r32_imm8   
  movl %edi, %edi                                               #  27    0xea04a  2      OPC=movl_r32_r32    
  movl %eax, 0xc(%r15,%rdi,1)                                   #  28    0xea04c  5      OPC=movl_m32_r32    
  nop                                                           #  29    0xea051  1      OPC=nop             
  nop                                                           #  30    0xea052  1      OPC=nop             
  nop                                                           #  31    0xea053  1      OPC=nop             
  nop                                                           #  32    0xea054  1      OPC=nop             
  nop                                                           #  33    0xea055  1      OPC=nop             
  nop                                                           #  34    0xea056  1      OPC=nop             
  nop                                                           #  35    0xea057  1      OPC=nop             
  nop                                                           #  36    0xea058  1      OPC=nop             
  nop                                                           #  37    0xea059  1      OPC=nop             
  nop                                                           #  38    0xea05a  1      OPC=nop             
  nop                                                           #  39    0xea05b  1      OPC=nop             
  nop                                                           #  40    0xea05c  1      OPC=nop             
  nop                                                           #  41    0xea05d  1      OPC=nop             
  nop                                                           #  42    0xea05e  1      OPC=nop             
  nop                                                           #  43    0xea05f  1      OPC=nop             
.L_ea060:                                                       #        0xea060  0      OPC=<label>         
  popq %r11                                                     #  44    0xea060  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                       #  45    0xea062  7      OPC=andl_r32_imm32  
  nop                                                           #  46    0xea069  1      OPC=nop             
  nop                                                           #  47    0xea06a  1      OPC=nop             
  nop                                                           #  48    0xea06b  1      OPC=nop             
  nop                                                           #  49    0xea06c  1      OPC=nop             
  addq %r15, %r11                                               #  50    0xea06d  3      OPC=addq_r64_r64    
  jmpq %r11                                                     #  51    0xea070  3      OPC=jmpq_r64        
  nop                                                           #  52    0xea073  1      OPC=nop             
  nop                                                           #  53    0xea074  1      OPC=nop             
  nop                                                           #  54    0xea075  1      OPC=nop             
  nop                                                           #  55    0xea076  1      OPC=nop             
  nop                                                           #  56    0xea077  1      OPC=nop             
  nop                                                           #  57    0xea078  1      OPC=nop             
  nop                                                           #  58    0xea079  1      OPC=nop             
  nop                                                           #  59    0xea07a  1      OPC=nop             
  nop                                                           #  60    0xea07b  1      OPC=nop             
  nop                                                           #  61    0xea07c  1      OPC=nop             
  nop                                                           #  62    0xea07d  1      OPC=nop             
  nop                                                           #  63    0xea07e  1      OPC=nop             
  nop                                                           #  64    0xea07f  1      OPC=nop             
  nop                                                           #  65    0xea080  1      OPC=nop             
  nop                                                           #  66    0xea081  1      OPC=nop             
  nop                                                           #  67    0xea082  1      OPC=nop             
  nop                                                           #  68    0xea083  1      OPC=nop             
  nop                                                           #  69    0xea084  1      OPC=nop             
  nop                                                           #  70    0xea085  1      OPC=nop             
  nop                                                           #  71    0xea086  1      OPC=nop             
                                                                                                             
.size _ZNSt13basic_filebufIcSt11char_traitsIcEE15_M_create_pbackEv, .-_ZNSt13basic_filebufIcSt11char_traitsIcEE15_M_create_pbackEv

