  .text
  .globl _ftell_r
  .type _ftell_r, @function

#! file-offset 0x15c940
#! rip-offset  0x11c940
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
._ftell_r:                 #        0x11c940  0      OPC=<label>         
  subl $0x8, %esp          #  1     0x11c940  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  2     0x11c943  3      OPC=addq_r64_r64    
  movl %edi, %edi          #  3     0x11c946  2      OPC=movl_r32_r32    
  movl %esi, %esi          #  4     0x11c948  2      OPC=movl_r32_r32    
  xchgw %ax, %ax           #  5     0x11c94a  2      OPC=xchgw_ax_r16    
  nop                      #  6     0x11c94c  1      OPC=nop             
  nop                      #  7     0x11c94d  1      OPC=nop             
  nop                      #  8     0x11c94e  1      OPC=nop             
  nop                      #  9     0x11c94f  1      OPC=nop             
  nop                      #  10    0x11c950  1      OPC=nop             
  nop                      #  11    0x11c951  1      OPC=nop             
  nop                      #  12    0x11c952  1      OPC=nop             
  nop                      #  13    0x11c953  1      OPC=nop             
  nop                      #  14    0x11c954  1      OPC=nop             
  nop                      #  15    0x11c955  1      OPC=nop             
  nop                      #  16    0x11c956  1      OPC=nop             
  nop                      #  17    0x11c957  1      OPC=nop             
  nop                      #  18    0x11c958  1      OPC=nop             
  nop                      #  19    0x11c959  1      OPC=nop             
  nop                      #  20    0x11c95a  1      OPC=nop             
  callq ._ftello_r         #  21    0x11c95b  5      OPC=callq_label     
  addl $0x8, %esp          #  22    0x11c960  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  23    0x11c963  3      OPC=addq_r64_r64    
  popq %r11                #  24    0x11c966  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  25    0x11c968  7      OPC=andl_r32_imm32  
  nop                      #  26    0x11c96f  1      OPC=nop             
  nop                      #  27    0x11c970  1      OPC=nop             
  nop                      #  28    0x11c971  1      OPC=nop             
  nop                      #  29    0x11c972  1      OPC=nop             
  addq %r15, %r11          #  30    0x11c973  3      OPC=addq_r64_r64    
  jmpq %r11                #  31    0x11c976  3      OPC=jmpq_r64        
  nop                      #  32    0x11c979  1      OPC=nop             
  nop                      #  33    0x11c97a  1      OPC=nop             
  nop                      #  34    0x11c97b  1      OPC=nop             
  nop                      #  35    0x11c97c  1      OPC=nop             
  nop                      #  36    0x11c97d  1      OPC=nop             
  nop                      #  37    0x11c97e  1      OPC=nop             
  nop                      #  38    0x11c97f  1      OPC=nop             
  nop                      #  39    0x11c980  1      OPC=nop             
  nop                      #  40    0x11c981  1      OPC=nop             
  nop                      #  41    0x11c982  1      OPC=nop             
  nop                      #  42    0x11c983  1      OPC=nop             
  nop                      #  43    0x11c984  1      OPC=nop             
  nop                      #  44    0x11c985  1      OPC=nop             
  nop                      #  45    0x11c986  1      OPC=nop             
                                                                         
.size _ftell_r, .-_ftell_r

