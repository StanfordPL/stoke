  .text
  .globl _ZNSt13basic_filebufIcSt11char_traitsIcEE15_M_create_pbackEv
  .type _ZNSt13basic_filebufIcSt11char_traitsIcEE15_M_create_pbackEv, @function

#! file-offset 0x129d00
#! rip-offset  0xe9d00
#! capacity    128 bytes

# Text                                                          #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIcSt11char_traitsIcEE15_M_create_pbackEv:  #        0xe9d00  0      OPC=<label>         
  movl %edi, %edi                                               #  1     0xe9d00  2      OPC=movl_r32_r32    
  movl %edi, %edi                                               #  2     0xe9d02  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x6c(%r15,%rdi,1)                                  #  3     0xe9d04  6      OPC=cmpb_m8_imm8    
  jne .L_e9d60                                                  #  4     0xe9d0a  2      OPC=jne_label       
  movl %edi, %edi                                               #  5     0xe9d0c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                   #  6     0xe9d0e  5      OPC=movl_r32_m32    
  movl %edi, %edi                                               #  7     0xe9d13  2      OPC=movl_r32_r32    
  movb $0x1, 0x6c(%r15,%rdi,1)                                  #  8     0xe9d15  6      OPC=movb_m8_imm8    
  nop                                                           #  9     0xe9d1b  1      OPC=nop             
  nop                                                           #  10    0xe9d1c  1      OPC=nop             
  nop                                                           #  11    0xe9d1d  1      OPC=nop             
  nop                                                           #  12    0xe9d1e  1      OPC=nop             
  nop                                                           #  13    0xe9d1f  1      OPC=nop             
  movl %edi, %edi                                               #  14    0xe9d20  2      OPC=movl_r32_r32    
  movl %eax, 0x64(%r15,%rdi,1)                                  #  15    0xe9d22  5      OPC=movl_m32_r32    
  movl %edi, %edi                                               #  16    0xe9d27  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rdi,1), %eax                                   #  17    0xe9d29  5      OPC=movl_r32_m32    
  movl %edi, %edi                                               #  18    0xe9d2e  2      OPC=movl_r32_r32    
  movl %eax, 0x68(%r15,%rdi,1)                                  #  19    0xe9d30  5      OPC=movl_m32_r32    
  leal 0x63(%rdi), %eax                                         #  20    0xe9d35  3      OPC=leal_r32_m16    
  movl %edi, %edi                                               #  21    0xe9d38  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rdi,1)                                   #  22    0xe9d3a  5      OPC=movl_m32_r32    
  nop                                                           #  23    0xe9d3f  1      OPC=nop             
  movl %edi, %edi                                               #  24    0xe9d40  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                                   #  25    0xe9d42  5      OPC=movl_m32_r32    
  addl $0x1, %eax                                               #  26    0xe9d47  3      OPC=addl_r32_imm8   
  movl %edi, %edi                                               #  27    0xe9d4a  2      OPC=movl_r32_r32    
  movl %eax, 0xc(%r15,%rdi,1)                                   #  28    0xe9d4c  5      OPC=movl_m32_r32    
  nop                                                           #  29    0xe9d51  1      OPC=nop             
  nop                                                           #  30    0xe9d52  1      OPC=nop             
  nop                                                           #  31    0xe9d53  1      OPC=nop             
  nop                                                           #  32    0xe9d54  1      OPC=nop             
  nop                                                           #  33    0xe9d55  1      OPC=nop             
  nop                                                           #  34    0xe9d56  1      OPC=nop             
  nop                                                           #  35    0xe9d57  1      OPC=nop             
  nop                                                           #  36    0xe9d58  1      OPC=nop             
  nop                                                           #  37    0xe9d59  1      OPC=nop             
  nop                                                           #  38    0xe9d5a  1      OPC=nop             
  nop                                                           #  39    0xe9d5b  1      OPC=nop             
  nop                                                           #  40    0xe9d5c  1      OPC=nop             
  nop                                                           #  41    0xe9d5d  1      OPC=nop             
  nop                                                           #  42    0xe9d5e  1      OPC=nop             
  nop                                                           #  43    0xe9d5f  1      OPC=nop             
.L_e9d60:                                                       #        0xe9d60  0      OPC=<label>         
  popq %r11                                                     #  44    0xe9d60  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                       #  45    0xe9d62  7      OPC=andl_r32_imm32  
  nop                                                           #  46    0xe9d69  1      OPC=nop             
  nop                                                           #  47    0xe9d6a  1      OPC=nop             
  nop                                                           #  48    0xe9d6b  1      OPC=nop             
  nop                                                           #  49    0xe9d6c  1      OPC=nop             
  addq %r15, %r11                                               #  50    0xe9d6d  3      OPC=addq_r64_r64    
  jmpq %r11                                                     #  51    0xe9d70  3      OPC=jmpq_r64        
  nop                                                           #  52    0xe9d73  1      OPC=nop             
  nop                                                           #  53    0xe9d74  1      OPC=nop             
  nop                                                           #  54    0xe9d75  1      OPC=nop             
  nop                                                           #  55    0xe9d76  1      OPC=nop             
  nop                                                           #  56    0xe9d77  1      OPC=nop             
  nop                                                           #  57    0xe9d78  1      OPC=nop             
  nop                                                           #  58    0xe9d79  1      OPC=nop             
  nop                                                           #  59    0xe9d7a  1      OPC=nop             
  nop                                                           #  60    0xe9d7b  1      OPC=nop             
  nop                                                           #  61    0xe9d7c  1      OPC=nop             
  nop                                                           #  62    0xe9d7d  1      OPC=nop             
  nop                                                           #  63    0xe9d7e  1      OPC=nop             
  nop                                                           #  64    0xe9d7f  1      OPC=nop             
  nop                                                           #  65    0xe9d80  1      OPC=nop             
  nop                                                           #  66    0xe9d81  1      OPC=nop             
  nop                                                           #  67    0xe9d82  1      OPC=nop             
  nop                                                           #  68    0xe9d83  1      OPC=nop             
  nop                                                           #  69    0xe9d84  1      OPC=nop             
  nop                                                           #  70    0xe9d85  1      OPC=nop             
  nop                                                           #  71    0xe9d86  1      OPC=nop             
                                                                                                             
.size _ZNSt13basic_filebufIcSt11char_traitsIcEE15_M_create_pbackEv, .-_ZNSt13basic_filebufIcSt11char_traitsIcEE15_M_create_pbackEv

