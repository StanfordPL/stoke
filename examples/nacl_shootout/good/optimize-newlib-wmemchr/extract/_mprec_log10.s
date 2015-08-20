  .text
  .globl _mprec_log10
  .type _mprec_log10, @function

#! file-offset 0x18aa40
#! rip-offset  0x14aa40
#! capacity    96 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
._mprec_log10:                          #        0x14aa40  0      OPC=<label>         
  cmpl $0x17, %edi                      #  1     0x14aa40  3      OPC=cmpl_r32_imm8   
  jle .L_14aa80                         #  2     0x14aa43  2      OPC=jle_label       
  movsd 0xfef57bb(%rip), %xmm0          #  3     0x14aa45  8      OPC=movsd_xmm_m64   
  movsd 0xfefdd73(%rip), %xmm1          #  4     0x14aa4d  8      OPC=movsd_xmm_m64   
  nop                                   #  5     0x14aa55  1      OPC=nop             
  nop                                   #  6     0x14aa56  1      OPC=nop             
  nop                                   #  7     0x14aa57  1      OPC=nop             
  nop                                   #  8     0x14aa58  1      OPC=nop             
  nop                                   #  9     0x14aa59  1      OPC=nop             
  nop                                   #  10    0x14aa5a  1      OPC=nop             
  nop                                   #  11    0x14aa5b  1      OPC=nop             
  nop                                   #  12    0x14aa5c  1      OPC=nop             
  nop                                   #  13    0x14aa5d  1      OPC=nop             
  nop                                   #  14    0x14aa5e  1      OPC=nop             
  nop                                   #  15    0x14aa5f  1      OPC=nop             
.L_14aa60:                              #        0x14aa60  0      OPC=<label>         
  subl $0x1, %edi                       #  16    0x14aa60  3      OPC=subl_r32_imm8   
  mulsd %xmm1, %xmm0                    #  17    0x14aa63  4      OPC=mulsd_xmm_xmm   
  jne .L_14aa60                         #  18    0x14aa67  2      OPC=jne_label       
  popq %r11                             #  19    0x14aa69  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  20    0x14aa6b  7      OPC=andl_r32_imm32  
  nop                                   #  21    0x14aa72  1      OPC=nop             
  nop                                   #  22    0x14aa73  1      OPC=nop             
  nop                                   #  23    0x14aa74  1      OPC=nop             
  nop                                   #  24    0x14aa75  1      OPC=nop             
  addq %r15, %r11                       #  25    0x14aa76  3      OPC=addq_r64_r64    
  jmpq %r11                             #  26    0x14aa79  3      OPC=jmpq_r64        
  nop                                   #  27    0x14aa7c  1      OPC=nop             
  nop                                   #  28    0x14aa7d  1      OPC=nop             
  nop                                   #  29    0x14aa7e  1      OPC=nop             
  nop                                   #  30    0x14aa7f  1      OPC=nop             
  nop                                   #  31    0x14aa80  1      OPC=nop             
  nop                                   #  32    0x14aa81  1      OPC=nop             
  nop                                   #  33    0x14aa82  1      OPC=nop             
  nop                                   #  34    0x14aa83  1      OPC=nop             
  nop                                   #  35    0x14aa84  1      OPC=nop             
  nop                                   #  36    0x14aa85  1      OPC=nop             
  nop                                   #  37    0x14aa86  1      OPC=nop             
.L_14aa80:                              #        0x14aa87  0      OPC=<label>         
  shll $0x3, %edi                       #  38    0x14aa87  3      OPC=shll_r32_imm8   
  movslq %edi, %rdi                     #  39    0x14aa8a  3      OPC=movslq_r64_r32  
  movl %edi, %edi                       #  40    0x14aa8d  2      OPC=movl_r32_r32    
  movsd 0x1004a680(%r15,%rdi,1), %xmm0  #  41    0x14aa8f  10     OPC=movsd_xmm_m64   
  popq %r11                             #  42    0x14aa99  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  43    0x14aa9b  7      OPC=andl_r32_imm32  
  nop                                   #  44    0x14aaa2  1      OPC=nop             
  nop                                   #  45    0x14aaa3  1      OPC=nop             
  nop                                   #  46    0x14aaa4  1      OPC=nop             
  nop                                   #  47    0x14aaa5  1      OPC=nop             
  addq %r15, %r11                       #  48    0x14aaa6  3      OPC=addq_r64_r64    
  jmpq %r11                             #  49    0x14aaa9  3      OPC=jmpq_r64        
  xchgw %ax, %ax                        #  50    0x14aaac  2      OPC=xchgw_ax_r16    
                                                                                      
.size _mprec_log10, .-_mprec_log10

