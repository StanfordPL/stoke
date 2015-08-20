  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_refcopyEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_refcopyEv, @function

#! file-offset 0x115c40
#! rip-offset  0xd5c40
#! capacity    96 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_refcopyEv:  #        0xd5c40  0      OPC=<label>         
  movl %edi, %eax                                     #  1     0xd5c40  2      OPC=movl_r32_r32    
  cmpl $0x10073620, %eax                              #  2     0xd5c42  5      OPC=cmpl_eax_imm32  
  jne .L_d5c80                                        #  3     0xd5c47  2      OPC=jne_label       
  nop                                                 #  4     0xd5c49  1      OPC=nop             
  nop                                                 #  5     0xd5c4a  1      OPC=nop             
  nop                                                 #  6     0xd5c4b  1      OPC=nop             
  nop                                                 #  7     0xd5c4c  1      OPC=nop             
  nop                                                 #  8     0xd5c4d  1      OPC=nop             
  nop                                                 #  9     0xd5c4e  1      OPC=nop             
  nop                                                 #  10    0xd5c4f  1      OPC=nop             
  nop                                                 #  11    0xd5c50  1      OPC=nop             
  nop                                                 #  12    0xd5c51  1      OPC=nop             
  nop                                                 #  13    0xd5c52  1      OPC=nop             
  nop                                                 #  14    0xd5c53  1      OPC=nop             
  nop                                                 #  15    0xd5c54  1      OPC=nop             
  nop                                                 #  16    0xd5c55  1      OPC=nop             
  nop                                                 #  17    0xd5c56  1      OPC=nop             
  nop                                                 #  18    0xd5c57  1      OPC=nop             
  nop                                                 #  19    0xd5c58  1      OPC=nop             
  nop                                                 #  20    0xd5c59  1      OPC=nop             
  nop                                                 #  21    0xd5c5a  1      OPC=nop             
  nop                                                 #  22    0xd5c5b  1      OPC=nop             
  nop                                                 #  23    0xd5c5c  1      OPC=nop             
  nop                                                 #  24    0xd5c5d  1      OPC=nop             
  nop                                                 #  25    0xd5c5e  1      OPC=nop             
  nop                                                 #  26    0xd5c5f  1      OPC=nop             
.L_d5c60:                                             #        0xd5c60  0      OPC=<label>         
  popq %r11                                           #  27    0xd5c60  2      OPC=popq_r64_1      
  addl $0xc, %eax                                     #  28    0xd5c62  3      OPC=addl_r32_imm8   
  andl $0xffffffe0, %r11d                             #  29    0xd5c65  7      OPC=andl_r32_imm32  
  nop                                                 #  30    0xd5c6c  1      OPC=nop             
  nop                                                 #  31    0xd5c6d  1      OPC=nop             
  nop                                                 #  32    0xd5c6e  1      OPC=nop             
  nop                                                 #  33    0xd5c6f  1      OPC=nop             
  addq %r15, %r11                                     #  34    0xd5c70  3      OPC=addq_r64_r64    
  jmpq %r11                                           #  35    0xd5c73  3      OPC=jmpq_r64        
  xchgw %ax, %ax                                      #  36    0xd5c76  2      OPC=xchgw_ax_r16    
  nop                                                 #  37    0xd5c78  1      OPC=nop             
  nop                                                 #  38    0xd5c79  1      OPC=nop             
  nop                                                 #  39    0xd5c7a  1      OPC=nop             
  nop                                                 #  40    0xd5c7b  1      OPC=nop             
  nop                                                 #  41    0xd5c7c  1      OPC=nop             
  nop                                                 #  42    0xd5c7d  1      OPC=nop             
  nop                                                 #  43    0xd5c7e  1      OPC=nop             
  nop                                                 #  44    0xd5c7f  1      OPC=nop             
  nop                                                 #  45    0xd5c80  1      OPC=nop             
  nop                                                 #  46    0xd5c81  1      OPC=nop             
  nop                                                 #  47    0xd5c82  1      OPC=nop             
  nop                                                 #  48    0xd5c83  1      OPC=nop             
  nop                                                 #  49    0xd5c84  1      OPC=nop             
  nop                                                 #  50    0xd5c85  1      OPC=nop             
  nop                                                 #  51    0xd5c86  1      OPC=nop             
.L_d5c80:                                             #        0xd5c87  0      OPC=<label>         
  movl %eax, %eax                                     #  52    0xd5c87  2      OPC=movl_r32_r32    
  addl $0x1, 0x8(%r15,%rax,1)                         #  53    0xd5c89  6      OPC=addl_m32_imm8   
  jmpq .L_d5c60                                       #  54    0xd5c8f  2      OPC=jmpq_label      
  nop                                                 #  55    0xd5c91  1      OPC=nop             
  nop                                                 #  56    0xd5c92  1      OPC=nop             
  nop                                                 #  57    0xd5c93  1      OPC=nop             
  nop                                                 #  58    0xd5c94  1      OPC=nop             
  nop                                                 #  59    0xd5c95  1      OPC=nop             
  nop                                                 #  60    0xd5c96  1      OPC=nop             
  nop                                                 #  61    0xd5c97  1      OPC=nop             
  nop                                                 #  62    0xd5c98  1      OPC=nop             
  nop                                                 #  63    0xd5c99  1      OPC=nop             
  nop                                                 #  64    0xd5c9a  1      OPC=nop             
  nop                                                 #  65    0xd5c9b  1      OPC=nop             
  nop                                                 #  66    0xd5c9c  1      OPC=nop             
  nop                                                 #  67    0xd5c9d  1      OPC=nop             
  nop                                                 #  68    0xd5c9e  1      OPC=nop             
  nop                                                 #  69    0xd5c9f  1      OPC=nop             
  nop                                                 #  70    0xd5ca0  1      OPC=nop             
  nop                                                 #  71    0xd5ca1  1      OPC=nop             
  nop                                                 #  72    0xd5ca2  1      OPC=nop             
  nop                                                 #  73    0xd5ca3  1      OPC=nop             
  nop                                                 #  74    0xd5ca4  1      OPC=nop             
  nop                                                 #  75    0xd5ca5  1      OPC=nop             
  nop                                                 #  76    0xd5ca6  1      OPC=nop             
                                                                                                   
.size _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_refcopyEv, .-_ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_refcopyEv

