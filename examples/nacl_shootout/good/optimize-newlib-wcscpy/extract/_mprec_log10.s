  .text
  .globl _mprec_log10
  .type _mprec_log10, @function

#! file-offset 0x18a6a0
#! rip-offset  0x14a6a0
#! capacity    96 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
._mprec_log10:                          #        0x14a6a0  0      OPC=<label>         
  cmpl $0x17, %edi                      #  1     0x14a6a0  3      OPC=cmpl_r32_imm8   
  jle .L_14a6e0                         #  2     0x14a6a3  2      OPC=jle_label       
  movsd 0xfef5b5b(%rip), %xmm0          #  3     0x14a6a5  8      OPC=movsd_xmm_m64   
  movsd 0xfefe113(%rip), %xmm1          #  4     0x14a6ad  8      OPC=movsd_xmm_m64   
  nop                                   #  5     0x14a6b5  1      OPC=nop             
  nop                                   #  6     0x14a6b6  1      OPC=nop             
  nop                                   #  7     0x14a6b7  1      OPC=nop             
  nop                                   #  8     0x14a6b8  1      OPC=nop             
  nop                                   #  9     0x14a6b9  1      OPC=nop             
  nop                                   #  10    0x14a6ba  1      OPC=nop             
  nop                                   #  11    0x14a6bb  1      OPC=nop             
  nop                                   #  12    0x14a6bc  1      OPC=nop             
  nop                                   #  13    0x14a6bd  1      OPC=nop             
  nop                                   #  14    0x14a6be  1      OPC=nop             
  nop                                   #  15    0x14a6bf  1      OPC=nop             
.L_14a6c0:                              #        0x14a6c0  0      OPC=<label>         
  subl $0x1, %edi                       #  16    0x14a6c0  3      OPC=subl_r32_imm8   
  mulsd %xmm1, %xmm0                    #  17    0x14a6c3  4      OPC=mulsd_xmm_xmm   
  jne .L_14a6c0                         #  18    0x14a6c7  2      OPC=jne_label       
  popq %r11                             #  19    0x14a6c9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  20    0x14a6cb  7      OPC=andl_r32_imm32  
  nop                                   #  21    0x14a6d2  1      OPC=nop             
  nop                                   #  22    0x14a6d3  1      OPC=nop             
  nop                                   #  23    0x14a6d4  1      OPC=nop             
  nop                                   #  24    0x14a6d5  1      OPC=nop             
  addq %r15, %r11                       #  25    0x14a6d6  3      OPC=addq_r64_r64    
  jmpq %r11                             #  26    0x14a6d9  3      OPC=jmpq_r64        
  nop                                   #  27    0x14a6dc  1      OPC=nop             
  nop                                   #  28    0x14a6dd  1      OPC=nop             
  nop                                   #  29    0x14a6de  1      OPC=nop             
  nop                                   #  30    0x14a6df  1      OPC=nop             
  nop                                   #  31    0x14a6e0  1      OPC=nop             
  nop                                   #  32    0x14a6e1  1      OPC=nop             
  nop                                   #  33    0x14a6e2  1      OPC=nop             
  nop                                   #  34    0x14a6e3  1      OPC=nop             
  nop                                   #  35    0x14a6e4  1      OPC=nop             
  nop                                   #  36    0x14a6e5  1      OPC=nop             
  nop                                   #  37    0x14a6e6  1      OPC=nop             
.L_14a6e0:                              #        0x14a6e7  0      OPC=<label>         
  shll $0x3, %edi                       #  38    0x14a6e7  3      OPC=shll_r32_imm8   
  movslq %edi, %rdi                     #  39    0x14a6ea  3      OPC=movslq_r64_r32  
  movl %edi, %edi                       #  40    0x14a6ed  2      OPC=movl_r32_r32    
  movsd 0x1004a680(%r15,%rdi,1), %xmm0  #  41    0x14a6ef  10     OPC=movsd_xmm_m64   
  popq %r11                             #  42    0x14a6f9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  43    0x14a6fb  7      OPC=andl_r32_imm32  
  nop                                   #  44    0x14a702  1      OPC=nop             
  nop                                   #  45    0x14a703  1      OPC=nop             
  nop                                   #  46    0x14a704  1      OPC=nop             
  nop                                   #  47    0x14a705  1      OPC=nop             
  addq %r15, %r11                       #  48    0x14a706  3      OPC=addq_r64_r64    
  jmpq %r11                             #  49    0x14a709  3      OPC=jmpq_r64        
  xchgw %ax, %ax                        #  50    0x14a70c  2      OPC=xchgw_ax_r16    
                                                                                      
.size _mprec_log10, .-_mprec_log10

