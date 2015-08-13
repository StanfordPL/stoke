  .text
  .globl finite
  .type finite, @function

#! file-offset 0x1491e0
#! rip-offset  0x1091e0
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.finite:                   #        0x1091e0  0      OPC=<label>         
  movsd %xmm0, -0x8(%rsp)  #  1     0x1091e0  6      OPC=movsd_m64_xmm   
  movq -0x8(%rsp), %rax    #  2     0x1091e6  5      OPC=movq_r64_m64    
  popq %r11                #  3     0x1091eb  2      OPC=popq_r64_1      
  shrq $0x20, %rax         #  4     0x1091ed  4      OPC=shrq_r64_imm8   
  andl $0x7fffffff, %eax   #  5     0x1091f1  5      OPC=andl_eax_imm32  
  subl $0x7ff00000, %eax   #  6     0x1091f6  5      OPC=subl_eax_imm32  
  shrl $0x1f, %eax         #  7     0x1091fb  3      OPC=shrl_r32_imm8   
  xchgw %ax, %ax           #  8     0x1091fe  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d  #  9     0x109200  7      OPC=andl_r32_imm32  
  nop                      #  10    0x109207  1      OPC=nop             
  nop                      #  11    0x109208  1      OPC=nop             
  nop                      #  12    0x109209  1      OPC=nop             
  nop                      #  13    0x10920a  1      OPC=nop             
  addq %r15, %r11          #  14    0x10920b  3      OPC=addq_r64_r64    
  jmpq %r11                #  15    0x10920e  3      OPC=jmpq_r64        
  nop                      #  16    0x109211  1      OPC=nop             
  nop                      #  17    0x109212  1      OPC=nop             
  nop                      #  18    0x109213  1      OPC=nop             
  nop                      #  19    0x109214  1      OPC=nop             
  nop                      #  20    0x109215  1      OPC=nop             
  nop                      #  21    0x109216  1      OPC=nop             
  nop                      #  22    0x109217  1      OPC=nop             
  nop                      #  23    0x109218  1      OPC=nop             
  nop                      #  24    0x109219  1      OPC=nop             
  nop                      #  25    0x10921a  1      OPC=nop             
  nop                      #  26    0x10921b  1      OPC=nop             
  nop                      #  27    0x10921c  1      OPC=nop             
  nop                      #  28    0x10921d  1      OPC=nop             
  nop                      #  29    0x10921e  1      OPC=nop             
  nop                      #  30    0x10921f  1      OPC=nop             
  nop                      #  31    0x109220  1      OPC=nop             
  nop                      #  32    0x109221  1      OPC=nop             
  nop                      #  33    0x109222  1      OPC=nop             
  nop                      #  34    0x109223  1      OPC=nop             
  nop                      #  35    0x109224  1      OPC=nop             
  nop                      #  36    0x109225  1      OPC=nop             
  nop                      #  37    0x109226  1      OPC=nop             
                                                                         
.size finite, .-finite

