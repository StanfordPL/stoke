  .text
  .globl _ZNSt13basic_filebufIcSt11char_traitsIcEE15_M_create_pbackEv
  .type _ZNSt13basic_filebufIcSt11char_traitsIcEE15_M_create_pbackEv, @function

#! file-offset 0x12a720
#! rip-offset  0xea720
#! capacity    128 bytes

# Text                                                          #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIcSt11char_traitsIcEE15_M_create_pbackEv:  #        0xea720  0      OPC=<label>         
  movl %edi, %edi                                               #  1     0xea720  2      OPC=movl_r32_r32    
  movl %edi, %edi                                               #  2     0xea722  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x6c(%r15,%rdi,1)                                  #  3     0xea724  6      OPC=cmpb_m8_imm8    
  jne .L_ea780                                                  #  4     0xea72a  2      OPC=jne_label       
  movl %edi, %edi                                               #  5     0xea72c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                   #  6     0xea72e  5      OPC=movl_r32_m32    
  movl %edi, %edi                                               #  7     0xea733  2      OPC=movl_r32_r32    
  movb $0x1, 0x6c(%r15,%rdi,1)                                  #  8     0xea735  6      OPC=movb_m8_imm8    
  nop                                                           #  9     0xea73b  1      OPC=nop             
  nop                                                           #  10    0xea73c  1      OPC=nop             
  nop                                                           #  11    0xea73d  1      OPC=nop             
  nop                                                           #  12    0xea73e  1      OPC=nop             
  nop                                                           #  13    0xea73f  1      OPC=nop             
  movl %edi, %edi                                               #  14    0xea740  2      OPC=movl_r32_r32    
  movl %eax, 0x64(%r15,%rdi,1)                                  #  15    0xea742  5      OPC=movl_m32_r32    
  movl %edi, %edi                                               #  16    0xea747  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rdi,1), %eax                                   #  17    0xea749  5      OPC=movl_r32_m32    
  movl %edi, %edi                                               #  18    0xea74e  2      OPC=movl_r32_r32    
  movl %eax, 0x68(%r15,%rdi,1)                                  #  19    0xea750  5      OPC=movl_m32_r32    
  leal 0x63(%rdi), %eax                                         #  20    0xea755  3      OPC=leal_r32_m16    
  movl %edi, %edi                                               #  21    0xea758  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rdi,1)                                   #  22    0xea75a  5      OPC=movl_m32_r32    
  nop                                                           #  23    0xea75f  1      OPC=nop             
  movl %edi, %edi                                               #  24    0xea760  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                                   #  25    0xea762  5      OPC=movl_m32_r32    
  addl $0x1, %eax                                               #  26    0xea767  3      OPC=addl_r32_imm8   
  movl %edi, %edi                                               #  27    0xea76a  2      OPC=movl_r32_r32    
  movl %eax, 0xc(%r15,%rdi,1)                                   #  28    0xea76c  5      OPC=movl_m32_r32    
  nop                                                           #  29    0xea771  1      OPC=nop             
  nop                                                           #  30    0xea772  1      OPC=nop             
  nop                                                           #  31    0xea773  1      OPC=nop             
  nop                                                           #  32    0xea774  1      OPC=nop             
  nop                                                           #  33    0xea775  1      OPC=nop             
  nop                                                           #  34    0xea776  1      OPC=nop             
  nop                                                           #  35    0xea777  1      OPC=nop             
  nop                                                           #  36    0xea778  1      OPC=nop             
  nop                                                           #  37    0xea779  1      OPC=nop             
  nop                                                           #  38    0xea77a  1      OPC=nop             
  nop                                                           #  39    0xea77b  1      OPC=nop             
  nop                                                           #  40    0xea77c  1      OPC=nop             
  nop                                                           #  41    0xea77d  1      OPC=nop             
  nop                                                           #  42    0xea77e  1      OPC=nop             
  nop                                                           #  43    0xea77f  1      OPC=nop             
.L_ea780:                                                       #        0xea780  0      OPC=<label>         
  popq %r11                                                     #  44    0xea780  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                       #  45    0xea782  7      OPC=andl_r32_imm32  
  nop                                                           #  46    0xea789  1      OPC=nop             
  nop                                                           #  47    0xea78a  1      OPC=nop             
  nop                                                           #  48    0xea78b  1      OPC=nop             
  nop                                                           #  49    0xea78c  1      OPC=nop             
  addq %r15, %r11                                               #  50    0xea78d  3      OPC=addq_r64_r64    
  jmpq %r11                                                     #  51    0xea790  3      OPC=jmpq_r64        
  nop                                                           #  52    0xea793  1      OPC=nop             
  nop                                                           #  53    0xea794  1      OPC=nop             
  nop                                                           #  54    0xea795  1      OPC=nop             
  nop                                                           #  55    0xea796  1      OPC=nop             
  nop                                                           #  56    0xea797  1      OPC=nop             
  nop                                                           #  57    0xea798  1      OPC=nop             
  nop                                                           #  58    0xea799  1      OPC=nop             
  nop                                                           #  59    0xea79a  1      OPC=nop             
  nop                                                           #  60    0xea79b  1      OPC=nop             
  nop                                                           #  61    0xea79c  1      OPC=nop             
  nop                                                           #  62    0xea79d  1      OPC=nop             
  nop                                                           #  63    0xea79e  1      OPC=nop             
  nop                                                           #  64    0xea79f  1      OPC=nop             
  nop                                                           #  65    0xea7a0  1      OPC=nop             
  nop                                                           #  66    0xea7a1  1      OPC=nop             
  nop                                                           #  67    0xea7a2  1      OPC=nop             
  nop                                                           #  68    0xea7a3  1      OPC=nop             
  nop                                                           #  69    0xea7a4  1      OPC=nop             
  nop                                                           #  70    0xea7a5  1      OPC=nop             
  nop                                                           #  71    0xea7a6  1      OPC=nop             
                                                                                                             
.size _ZNSt13basic_filebufIcSt11char_traitsIcEE15_M_create_pbackEv, .-_ZNSt13basic_filebufIcSt11char_traitsIcEE15_M_create_pbackEv

