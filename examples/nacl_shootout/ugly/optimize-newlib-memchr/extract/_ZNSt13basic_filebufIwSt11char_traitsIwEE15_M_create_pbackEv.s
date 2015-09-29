  .text
  .globl _ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv
  .type _ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv, @function

#! file-offset 0x12ac40
#! rip-offset  0xeac40
#! capacity    128 bytes

# Text                                                          #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv:  #        0xeac40  0      OPC=<label>         
  movl %edi, %edi                                               #  1     0xeac40  2      OPC=movl_r32_r32    
  movl %edi, %edi                                               #  2     0xeac42  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x70(%r15,%rdi,1)                                  #  3     0xeac44  6      OPC=cmpb_m8_imm8    
  jne .L_eaca0                                                  #  4     0xeac4a  2      OPC=jne_label       
  movl %edi, %edi                                               #  5     0xeac4c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                   #  6     0xeac4e  5      OPC=movl_r32_m32    
  movl %edi, %edi                                               #  7     0xeac53  2      OPC=movl_r32_r32    
  movb $0x1, 0x70(%r15,%rdi,1)                                  #  8     0xeac55  6      OPC=movb_m8_imm8    
  nop                                                           #  9     0xeac5b  1      OPC=nop             
  nop                                                           #  10    0xeac5c  1      OPC=nop             
  nop                                                           #  11    0xeac5d  1      OPC=nop             
  nop                                                           #  12    0xeac5e  1      OPC=nop             
  nop                                                           #  13    0xeac5f  1      OPC=nop             
  movl %edi, %edi                                               #  14    0xeac60  2      OPC=movl_r32_r32    
  movl %eax, 0x68(%r15,%rdi,1)                                  #  15    0xeac62  5      OPC=movl_m32_r32    
  movl %edi, %edi                                               #  16    0xeac67  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rdi,1), %eax                                   #  17    0xeac69  5      OPC=movl_r32_m32    
  movl %edi, %edi                                               #  18    0xeac6e  2      OPC=movl_r32_r32    
  movl %eax, 0x6c(%r15,%rdi,1)                                  #  19    0xeac70  5      OPC=movl_m32_r32    
  leal 0x64(%rdi), %eax                                         #  20    0xeac75  3      OPC=leal_r32_m16    
  movl %edi, %edi                                               #  21    0xeac78  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rdi,1)                                   #  22    0xeac7a  5      OPC=movl_m32_r32    
  nop                                                           #  23    0xeac7f  1      OPC=nop             
  movl %edi, %edi                                               #  24    0xeac80  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                                   #  25    0xeac82  5      OPC=movl_m32_r32    
  addl $0x4, %eax                                               #  26    0xeac87  3      OPC=addl_r32_imm8   
  movl %edi, %edi                                               #  27    0xeac8a  2      OPC=movl_r32_r32    
  movl %eax, 0xc(%r15,%rdi,1)                                   #  28    0xeac8c  5      OPC=movl_m32_r32    
  nop                                                           #  29    0xeac91  1      OPC=nop             
  nop                                                           #  30    0xeac92  1      OPC=nop             
  nop                                                           #  31    0xeac93  1      OPC=nop             
  nop                                                           #  32    0xeac94  1      OPC=nop             
  nop                                                           #  33    0xeac95  1      OPC=nop             
  nop                                                           #  34    0xeac96  1      OPC=nop             
  nop                                                           #  35    0xeac97  1      OPC=nop             
  nop                                                           #  36    0xeac98  1      OPC=nop             
  nop                                                           #  37    0xeac99  1      OPC=nop             
  nop                                                           #  38    0xeac9a  1      OPC=nop             
  nop                                                           #  39    0xeac9b  1      OPC=nop             
  nop                                                           #  40    0xeac9c  1      OPC=nop             
  nop                                                           #  41    0xeac9d  1      OPC=nop             
  nop                                                           #  42    0xeac9e  1      OPC=nop             
  nop                                                           #  43    0xeac9f  1      OPC=nop             
.L_eaca0:                                                       #        0xeaca0  0      OPC=<label>         
  popq %r11                                                     #  44    0xeaca0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                       #  45    0xeaca2  7      OPC=andl_r32_imm32  
  nop                                                           #  46    0xeaca9  1      OPC=nop             
  nop                                                           #  47    0xeacaa  1      OPC=nop             
  nop                                                           #  48    0xeacab  1      OPC=nop             
  nop                                                           #  49    0xeacac  1      OPC=nop             
  addq %r15, %r11                                               #  50    0xeacad  3      OPC=addq_r64_r64    
  jmpq %r11                                                     #  51    0xeacb0  3      OPC=jmpq_r64        
  nop                                                           #  52    0xeacb3  1      OPC=nop             
  nop                                                           #  53    0xeacb4  1      OPC=nop             
  nop                                                           #  54    0xeacb5  1      OPC=nop             
  nop                                                           #  55    0xeacb6  1      OPC=nop             
  nop                                                           #  56    0xeacb7  1      OPC=nop             
  nop                                                           #  57    0xeacb8  1      OPC=nop             
  nop                                                           #  58    0xeacb9  1      OPC=nop             
  nop                                                           #  59    0xeacba  1      OPC=nop             
  nop                                                           #  60    0xeacbb  1      OPC=nop             
  nop                                                           #  61    0xeacbc  1      OPC=nop             
  nop                                                           #  62    0xeacbd  1      OPC=nop             
  nop                                                           #  63    0xeacbe  1      OPC=nop             
  nop                                                           #  64    0xeacbf  1      OPC=nop             
  nop                                                           #  65    0xeacc0  1      OPC=nop             
  nop                                                           #  66    0xeacc1  1      OPC=nop             
  nop                                                           #  67    0xeacc2  1      OPC=nop             
  nop                                                           #  68    0xeacc3  1      OPC=nop             
  nop                                                           #  69    0xeacc4  1      OPC=nop             
  nop                                                           #  70    0xeacc5  1      OPC=nop             
  nop                                                           #  71    0xeacc6  1      OPC=nop             
                                                                                                             
.size _ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv, .-_ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv

