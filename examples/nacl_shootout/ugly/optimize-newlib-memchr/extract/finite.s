  .text
  .globl finite
  .type finite, @function

#! file-offset 0x149c00
#! rip-offset  0x109c00
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.finite:                   #        0x109c00  0      OPC=<label>         
  movsd %xmm0, -0x8(%rsp)  #  1     0x109c00  6      OPC=movsd_m64_xmm   
  movq -0x8(%rsp), %rax    #  2     0x109c06  5      OPC=movq_r64_m64    
  popq %r11                #  3     0x109c0b  2      OPC=popq_r64_1      
  shrq $0x20, %rax         #  4     0x109c0d  4      OPC=shrq_r64_imm8   
  andl $0x7fffffff, %eax   #  5     0x109c11  5      OPC=andl_eax_imm32  
  subl $0x7ff00000, %eax   #  6     0x109c16  5      OPC=subl_eax_imm32  
  shrl $0x1f, %eax         #  7     0x109c1b  3      OPC=shrl_r32_imm8   
  xchgw %ax, %ax           #  8     0x109c1e  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d  #  9     0x109c20  7      OPC=andl_r32_imm32  
  nop                      #  10    0x109c27  1      OPC=nop             
  nop                      #  11    0x109c28  1      OPC=nop             
  nop                      #  12    0x109c29  1      OPC=nop             
  nop                      #  13    0x109c2a  1      OPC=nop             
  addq %r15, %r11          #  14    0x109c2b  3      OPC=addq_r64_r64    
  jmpq %r11                #  15    0x109c2e  3      OPC=jmpq_r64        
  nop                      #  16    0x109c31  1      OPC=nop             
  nop                      #  17    0x109c32  1      OPC=nop             
  nop                      #  18    0x109c33  1      OPC=nop             
  nop                      #  19    0x109c34  1      OPC=nop             
  nop                      #  20    0x109c35  1      OPC=nop             
  nop                      #  21    0x109c36  1      OPC=nop             
  nop                      #  22    0x109c37  1      OPC=nop             
  nop                      #  23    0x109c38  1      OPC=nop             
  nop                      #  24    0x109c39  1      OPC=nop             
  nop                      #  25    0x109c3a  1      OPC=nop             
  nop                      #  26    0x109c3b  1      OPC=nop             
  nop                      #  27    0x109c3c  1      OPC=nop             
  nop                      #  28    0x109c3d  1      OPC=nop             
  nop                      #  29    0x109c3e  1      OPC=nop             
  nop                      #  30    0x109c3f  1      OPC=nop             
  nop                      #  31    0x109c40  1      OPC=nop             
  nop                      #  32    0x109c41  1      OPC=nop             
  nop                      #  33    0x109c42  1      OPC=nop             
  nop                      #  34    0x109c43  1      OPC=nop             
  nop                      #  35    0x109c44  1      OPC=nop             
  nop                      #  36    0x109c45  1      OPC=nop             
  nop                      #  37    0x109c46  1      OPC=nop             
                                                                         
.size finite, .-finite

