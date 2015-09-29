  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_refcopyEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_refcopyEv, @function

#! file-offset 0x116360
#! rip-offset  0xd6360
#! capacity    96 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_refcopyEv:  #        0xd6360  0      OPC=<label>         
  movl %edi, %eax                                     #  1     0xd6360  2      OPC=movl_r32_r32    
  cmpl $0x10073620, %eax                              #  2     0xd6362  5      OPC=cmpl_eax_imm32  
  jne .L_d63a0                                        #  3     0xd6367  2      OPC=jne_label       
  nop                                                 #  4     0xd6369  1      OPC=nop             
  nop                                                 #  5     0xd636a  1      OPC=nop             
  nop                                                 #  6     0xd636b  1      OPC=nop             
  nop                                                 #  7     0xd636c  1      OPC=nop             
  nop                                                 #  8     0xd636d  1      OPC=nop             
  nop                                                 #  9     0xd636e  1      OPC=nop             
  nop                                                 #  10    0xd636f  1      OPC=nop             
  nop                                                 #  11    0xd6370  1      OPC=nop             
  nop                                                 #  12    0xd6371  1      OPC=nop             
  nop                                                 #  13    0xd6372  1      OPC=nop             
  nop                                                 #  14    0xd6373  1      OPC=nop             
  nop                                                 #  15    0xd6374  1      OPC=nop             
  nop                                                 #  16    0xd6375  1      OPC=nop             
  nop                                                 #  17    0xd6376  1      OPC=nop             
  nop                                                 #  18    0xd6377  1      OPC=nop             
  nop                                                 #  19    0xd6378  1      OPC=nop             
  nop                                                 #  20    0xd6379  1      OPC=nop             
  nop                                                 #  21    0xd637a  1      OPC=nop             
  nop                                                 #  22    0xd637b  1      OPC=nop             
  nop                                                 #  23    0xd637c  1      OPC=nop             
  nop                                                 #  24    0xd637d  1      OPC=nop             
  nop                                                 #  25    0xd637e  1      OPC=nop             
  nop                                                 #  26    0xd637f  1      OPC=nop             
.L_d6380:                                             #        0xd6380  0      OPC=<label>         
  popq %r11                                           #  27    0xd6380  2      OPC=popq_r64_1      
  addl $0xc, %eax                                     #  28    0xd6382  3      OPC=addl_r32_imm8   
  andl $0xffffffe0, %r11d                             #  29    0xd6385  7      OPC=andl_r32_imm32  
  nop                                                 #  30    0xd638c  1      OPC=nop             
  nop                                                 #  31    0xd638d  1      OPC=nop             
  nop                                                 #  32    0xd638e  1      OPC=nop             
  nop                                                 #  33    0xd638f  1      OPC=nop             
  addq %r15, %r11                                     #  34    0xd6390  3      OPC=addq_r64_r64    
  jmpq %r11                                           #  35    0xd6393  3      OPC=jmpq_r64        
  xchgw %ax, %ax                                      #  36    0xd6396  2      OPC=xchgw_ax_r16    
  nop                                                 #  37    0xd6398  1      OPC=nop             
  nop                                                 #  38    0xd6399  1      OPC=nop             
  nop                                                 #  39    0xd639a  1      OPC=nop             
  nop                                                 #  40    0xd639b  1      OPC=nop             
  nop                                                 #  41    0xd639c  1      OPC=nop             
  nop                                                 #  42    0xd639d  1      OPC=nop             
  nop                                                 #  43    0xd639e  1      OPC=nop             
  nop                                                 #  44    0xd639f  1      OPC=nop             
  nop                                                 #  45    0xd63a0  1      OPC=nop             
  nop                                                 #  46    0xd63a1  1      OPC=nop             
  nop                                                 #  47    0xd63a2  1      OPC=nop             
  nop                                                 #  48    0xd63a3  1      OPC=nop             
  nop                                                 #  49    0xd63a4  1      OPC=nop             
  nop                                                 #  50    0xd63a5  1      OPC=nop             
  nop                                                 #  51    0xd63a6  1      OPC=nop             
.L_d63a0:                                             #        0xd63a7  0      OPC=<label>         
  movl %eax, %eax                                     #  52    0xd63a7  2      OPC=movl_r32_r32    
  addl $0x1, 0x8(%r15,%rax,1)                         #  53    0xd63a9  6      OPC=addl_m32_imm8   
  jmpq .L_d6380                                       #  54    0xd63af  2      OPC=jmpq_label      
  nop                                                 #  55    0xd63b1  1      OPC=nop             
  nop                                                 #  56    0xd63b2  1      OPC=nop             
  nop                                                 #  57    0xd63b3  1      OPC=nop             
  nop                                                 #  58    0xd63b4  1      OPC=nop             
  nop                                                 #  59    0xd63b5  1      OPC=nop             
  nop                                                 #  60    0xd63b6  1      OPC=nop             
  nop                                                 #  61    0xd63b7  1      OPC=nop             
  nop                                                 #  62    0xd63b8  1      OPC=nop             
  nop                                                 #  63    0xd63b9  1      OPC=nop             
  nop                                                 #  64    0xd63ba  1      OPC=nop             
  nop                                                 #  65    0xd63bb  1      OPC=nop             
  nop                                                 #  66    0xd63bc  1      OPC=nop             
  nop                                                 #  67    0xd63bd  1      OPC=nop             
  nop                                                 #  68    0xd63be  1      OPC=nop             
  nop                                                 #  69    0xd63bf  1      OPC=nop             
  nop                                                 #  70    0xd63c0  1      OPC=nop             
  nop                                                 #  71    0xd63c1  1      OPC=nop             
  nop                                                 #  72    0xd63c2  1      OPC=nop             
  nop                                                 #  73    0xd63c3  1      OPC=nop             
  nop                                                 #  74    0xd63c4  1      OPC=nop             
  nop                                                 #  75    0xd63c5  1      OPC=nop             
  nop                                                 #  76    0xd63c6  1      OPC=nop             
                                                                                                   
.size _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_refcopyEv, .-_ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_refcopyEv

