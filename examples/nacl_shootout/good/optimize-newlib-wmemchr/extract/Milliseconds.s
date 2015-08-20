  .text
  .globl Milliseconds
  .type Milliseconds, @function

#! file-offset 0x66b20
#! rip-offset  0x26b20
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.Milliseconds:             #        0x26b20  0      OPC=<label>         
  subl $0x8, %esp          #  1     0x26b20  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  2     0x26b23  3      OPC=addq_r64_r64    
  nop                      #  3     0x26b26  1      OPC=nop             
  nop                      #  4     0x26b27  1      OPC=nop             
  nop                      #  5     0x26b28  1      OPC=nop             
  nop                      #  6     0x26b29  1      OPC=nop             
  nop                      #  7     0x26b2a  1      OPC=nop             
  nop                      #  8     0x26b2b  1      OPC=nop             
  nop                      #  9     0x26b2c  1      OPC=nop             
  nop                      #  10    0x26b2d  1      OPC=nop             
  nop                      #  11    0x26b2e  1      OPC=nop             
  nop                      #  12    0x26b2f  1      OPC=nop             
  nop                      #  13    0x26b30  1      OPC=nop             
  nop                      #  14    0x26b31  1      OPC=nop             
  nop                      #  15    0x26b32  1      OPC=nop             
  nop                      #  16    0x26b33  1      OPC=nop             
  nop                      #  17    0x26b34  1      OPC=nop             
  nop                      #  18    0x26b35  1      OPC=nop             
  nop                      #  19    0x26b36  1      OPC=nop             
  nop                      #  20    0x26b37  1      OPC=nop             
  nop                      #  21    0x26b38  1      OPC=nop             
  nop                      #  22    0x26b39  1      OPC=nop             
  nop                      #  23    0x26b3a  1      OPC=nop             
  callq .clock             #  24    0x26b3b  5      OPC=callq_label     
  movl $0x10624dd3, %edx   #  25    0x26b40  5      OPC=movl_r32_imm32  
  mull %edx                #  26    0x26b45  2      OPC=mull_r32        
  shrl $0x6, %edx          #  27    0x26b47  3      OPC=shrl_r32_imm8   
  movl %edx, %eax          #  28    0x26b4a  2      OPC=movl_r32_r32    
  addl $0x8, %esp          #  29    0x26b4c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  30    0x26b4f  3      OPC=addq_r64_r64    
  popq %r11                #  31    0x26b52  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  32    0x26b54  7      OPC=andl_r32_imm32  
  nop                      #  33    0x26b5b  1      OPC=nop             
  nop                      #  34    0x26b5c  1      OPC=nop             
  nop                      #  35    0x26b5d  1      OPC=nop             
  nop                      #  36    0x26b5e  1      OPC=nop             
  addq %r15, %r11          #  37    0x26b5f  3      OPC=addq_r64_r64    
  jmpq %r11                #  38    0x26b62  3      OPC=jmpq_r64        
  xchgw %ax, %ax           #  39    0x26b65  2      OPC=xchgw_ax_r16    
                                                                        
.size Milliseconds, .-Milliseconds

