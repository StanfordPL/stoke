  .text
  .globl _mprec_log10
  .type _mprec_log10, @function

#! file-offset 0x18b160
#! rip-offset  0x14b160
#! capacity    96 bytes

# Text                                  #  Line  RIP       Bytes  Opcode              
._mprec_log10:                          #        0x14b160  0      OPC=<label>         
  cmpl $0x17, %edi                      #  1     0x14b160  3      OPC=cmpl_r32_imm8   
  jle .L_14b1a0                         #  2     0x14b163  2      OPC=jle_label       
  movsd 0xfef509b(%rip), %xmm0          #  3     0x14b165  8      OPC=movsd_xmm_m64   
  movsd 0xfefd653(%rip), %xmm1          #  4     0x14b16d  8      OPC=movsd_xmm_m64   
  nop                                   #  5     0x14b175  1      OPC=nop             
  nop                                   #  6     0x14b176  1      OPC=nop             
  nop                                   #  7     0x14b177  1      OPC=nop             
  nop                                   #  8     0x14b178  1      OPC=nop             
  nop                                   #  9     0x14b179  1      OPC=nop             
  nop                                   #  10    0x14b17a  1      OPC=nop             
  nop                                   #  11    0x14b17b  1      OPC=nop             
  nop                                   #  12    0x14b17c  1      OPC=nop             
  nop                                   #  13    0x14b17d  1      OPC=nop             
  nop                                   #  14    0x14b17e  1      OPC=nop             
  nop                                   #  15    0x14b17f  1      OPC=nop             
.L_14b180:                              #        0x14b180  0      OPC=<label>         
  subl $0x1, %edi                       #  16    0x14b180  3      OPC=subl_r32_imm8   
  mulsd %xmm1, %xmm0                    #  17    0x14b183  4      OPC=mulsd_xmm_xmm   
  jne .L_14b180                         #  18    0x14b187  2      OPC=jne_label       
  popq %r11                             #  19    0x14b189  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  20    0x14b18b  7      OPC=andl_r32_imm32  
  nop                                   #  21    0x14b192  1      OPC=nop             
  nop                                   #  22    0x14b193  1      OPC=nop             
  nop                                   #  23    0x14b194  1      OPC=nop             
  nop                                   #  24    0x14b195  1      OPC=nop             
  addq %r15, %r11                       #  25    0x14b196  3      OPC=addq_r64_r64    
  jmpq %r11                             #  26    0x14b199  3      OPC=jmpq_r64        
  nop                                   #  27    0x14b19c  1      OPC=nop             
  nop                                   #  28    0x14b19d  1      OPC=nop             
  nop                                   #  29    0x14b19e  1      OPC=nop             
  nop                                   #  30    0x14b19f  1      OPC=nop             
  nop                                   #  31    0x14b1a0  1      OPC=nop             
  nop                                   #  32    0x14b1a1  1      OPC=nop             
  nop                                   #  33    0x14b1a2  1      OPC=nop             
  nop                                   #  34    0x14b1a3  1      OPC=nop             
  nop                                   #  35    0x14b1a4  1      OPC=nop             
  nop                                   #  36    0x14b1a5  1      OPC=nop             
  nop                                   #  37    0x14b1a6  1      OPC=nop             
.L_14b1a0:                              #        0x14b1a7  0      OPC=<label>         
  shll $0x3, %edi                       #  38    0x14b1a7  3      OPC=shll_r32_imm8   
  movslq %edi, %rdi                     #  39    0x14b1aa  3      OPC=movslq_r64_r32  
  movl %edi, %edi                       #  40    0x14b1ad  2      OPC=movl_r32_r32    
  movsd 0x1004a680(%r15,%rdi,1), %xmm0  #  41    0x14b1af  10     OPC=movsd_xmm_m64   
  popq %r11                             #  42    0x14b1b9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  43    0x14b1bb  7      OPC=andl_r32_imm32  
  nop                                   #  44    0x14b1c2  1      OPC=nop             
  nop                                   #  45    0x14b1c3  1      OPC=nop             
  nop                                   #  46    0x14b1c4  1      OPC=nop             
  nop                                   #  47    0x14b1c5  1      OPC=nop             
  addq %r15, %r11                       #  48    0x14b1c6  3      OPC=addq_r64_r64    
  jmpq %r11                             #  49    0x14b1c9  3      OPC=jmpq_r64        
  xchgw %ax, %ax                        #  50    0x14b1cc  2      OPC=xchgw_ax_r16    
                                                                                      
.size _mprec_log10, .-_mprec_log10

