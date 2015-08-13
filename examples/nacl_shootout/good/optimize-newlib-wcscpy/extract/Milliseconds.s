  .text
  .globl Milliseconds
  .type Milliseconds, @function

#! file-offset 0x66b00
#! rip-offset  0x26b00
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.Milliseconds:             #        0x26b00  0      OPC=<label>         
  subl $0x8, %esp          #  1     0x26b00  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  2     0x26b03  3      OPC=addq_r64_r64    
  nop                      #  3     0x26b06  1      OPC=nop             
  nop                      #  4     0x26b07  1      OPC=nop             
  nop                      #  5     0x26b08  1      OPC=nop             
  nop                      #  6     0x26b09  1      OPC=nop             
  nop                      #  7     0x26b0a  1      OPC=nop             
  nop                      #  8     0x26b0b  1      OPC=nop             
  nop                      #  9     0x26b0c  1      OPC=nop             
  nop                      #  10    0x26b0d  1      OPC=nop             
  nop                      #  11    0x26b0e  1      OPC=nop             
  nop                      #  12    0x26b0f  1      OPC=nop             
  nop                      #  13    0x26b10  1      OPC=nop             
  nop                      #  14    0x26b11  1      OPC=nop             
  nop                      #  15    0x26b12  1      OPC=nop             
  nop                      #  16    0x26b13  1      OPC=nop             
  nop                      #  17    0x26b14  1      OPC=nop             
  nop                      #  18    0x26b15  1      OPC=nop             
  nop                      #  19    0x26b16  1      OPC=nop             
  nop                      #  20    0x26b17  1      OPC=nop             
  nop                      #  21    0x26b18  1      OPC=nop             
  nop                      #  22    0x26b19  1      OPC=nop             
  nop                      #  23    0x26b1a  1      OPC=nop             
  callq .clock             #  24    0x26b1b  5      OPC=callq_label     
  movl $0x10624dd3, %edx   #  25    0x26b20  5      OPC=movl_r32_imm32  
  mull %edx                #  26    0x26b25  2      OPC=mull_r32        
  shrl $0x6, %edx          #  27    0x26b27  3      OPC=shrl_r32_imm8   
  movl %edx, %eax          #  28    0x26b2a  2      OPC=movl_r32_r32    
  addl $0x8, %esp          #  29    0x26b2c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  30    0x26b2f  3      OPC=addq_r64_r64    
  popq %r11                #  31    0x26b32  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  32    0x26b34  7      OPC=andl_r32_imm32  
  nop                      #  33    0x26b3b  1      OPC=nop             
  nop                      #  34    0x26b3c  1      OPC=nop             
  nop                      #  35    0x26b3d  1      OPC=nop             
  nop                      #  36    0x26b3e  1      OPC=nop             
  addq %r15, %r11          #  37    0x26b3f  3      OPC=addq_r64_r64    
  jmpq %r11                #  38    0x26b42  3      OPC=jmpq_r64        
  xchgw %ax, %ax           #  39    0x26b45  2      OPC=xchgw_ax_r16    
                                                                        
.size Milliseconds, .-Milliseconds

