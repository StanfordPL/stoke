  .text
  .globl _ftell_r
  .type _ftell_r, @function

#! file-offset 0x15d360
#! rip-offset  0x11d360
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
._ftell_r:                 #        0x11d360  0      OPC=<label>         
  subl $0x8, %esp          #  1     0x11d360  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  2     0x11d363  3      OPC=addq_r64_r64    
  movl %edi, %edi          #  3     0x11d366  2      OPC=movl_r32_r32    
  movl %esi, %esi          #  4     0x11d368  2      OPC=movl_r32_r32    
  xchgw %ax, %ax           #  5     0x11d36a  2      OPC=xchgw_ax_r16    
  nop                      #  6     0x11d36c  1      OPC=nop             
  nop                      #  7     0x11d36d  1      OPC=nop             
  nop                      #  8     0x11d36e  1      OPC=nop             
  nop                      #  9     0x11d36f  1      OPC=nop             
  nop                      #  10    0x11d370  1      OPC=nop             
  nop                      #  11    0x11d371  1      OPC=nop             
  nop                      #  12    0x11d372  1      OPC=nop             
  nop                      #  13    0x11d373  1      OPC=nop             
  nop                      #  14    0x11d374  1      OPC=nop             
  nop                      #  15    0x11d375  1      OPC=nop             
  nop                      #  16    0x11d376  1      OPC=nop             
  nop                      #  17    0x11d377  1      OPC=nop             
  nop                      #  18    0x11d378  1      OPC=nop             
  nop                      #  19    0x11d379  1      OPC=nop             
  nop                      #  20    0x11d37a  1      OPC=nop             
  callq ._ftello_r         #  21    0x11d37b  5      OPC=callq_label     
  addl $0x8, %esp          #  22    0x11d380  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  23    0x11d383  3      OPC=addq_r64_r64    
  popq %r11                #  24    0x11d386  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  25    0x11d388  7      OPC=andl_r32_imm32  
  nop                      #  26    0x11d38f  1      OPC=nop             
  nop                      #  27    0x11d390  1      OPC=nop             
  nop                      #  28    0x11d391  1      OPC=nop             
  nop                      #  29    0x11d392  1      OPC=nop             
  addq %r15, %r11          #  30    0x11d393  3      OPC=addq_r64_r64    
  jmpq %r11                #  31    0x11d396  3      OPC=jmpq_r64        
  nop                      #  32    0x11d399  1      OPC=nop             
  nop                      #  33    0x11d39a  1      OPC=nop             
  nop                      #  34    0x11d39b  1      OPC=nop             
  nop                      #  35    0x11d39c  1      OPC=nop             
  nop                      #  36    0x11d39d  1      OPC=nop             
  nop                      #  37    0x11d39e  1      OPC=nop             
  nop                      #  38    0x11d39f  1      OPC=nop             
  nop                      #  39    0x11d3a0  1      OPC=nop             
  nop                      #  40    0x11d3a1  1      OPC=nop             
  nop                      #  41    0x11d3a2  1      OPC=nop             
  nop                      #  42    0x11d3a3  1      OPC=nop             
  nop                      #  43    0x11d3a4  1      OPC=nop             
  nop                      #  44    0x11d3a5  1      OPC=nop             
  nop                      #  45    0x11d3a6  1      OPC=nop             
                                                                         
.size _ftell_r, .-_ftell_r

