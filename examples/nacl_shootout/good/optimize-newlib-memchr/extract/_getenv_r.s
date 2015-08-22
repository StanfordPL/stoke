  .text
  .globl _getenv_r
  .type _getenv_r, @function

#! file-offset 0x15ede0
#! rip-offset  0x11ede0
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
._getenv_r:                #        0x11ede0  0      OPC=<label>         
  subl $0x18, %esp         #  1     0x11ede0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  2     0x11ede3  3      OPC=addq_r64_r64    
  movl %edi, %edi          #  3     0x11ede6  2      OPC=movl_r32_r32    
  movl %esi, %esi          #  4     0x11ede8  2      OPC=movl_r32_r32    
  leal 0xc(%rsp), %edx     #  5     0x11edea  4      OPC=leal_r32_m16    
  nop                      #  6     0x11edee  1      OPC=nop             
  nop                      #  7     0x11edef  1      OPC=nop             
  nop                      #  8     0x11edf0  1      OPC=nop             
  nop                      #  9     0x11edf1  1      OPC=nop             
  nop                      #  10    0x11edf2  1      OPC=nop             
  nop                      #  11    0x11edf3  1      OPC=nop             
  nop                      #  12    0x11edf4  1      OPC=nop             
  nop                      #  13    0x11edf5  1      OPC=nop             
  nop                      #  14    0x11edf6  1      OPC=nop             
  nop                      #  15    0x11edf7  1      OPC=nop             
  nop                      #  16    0x11edf8  1      OPC=nop             
  nop                      #  17    0x11edf9  1      OPC=nop             
  nop                      #  18    0x11edfa  1      OPC=nop             
  callq ._findenv_r        #  19    0x11edfb  5      OPC=callq_label     
  addl $0x18, %esp         #  20    0x11ee00  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  21    0x11ee03  3      OPC=addq_r64_r64    
  movl %eax, %eax          #  22    0x11ee06  2      OPC=movl_r32_r32    
  popq %r11                #  23    0x11ee08  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  24    0x11ee0a  7      OPC=andl_r32_imm32  
  nop                      #  25    0x11ee11  1      OPC=nop             
  nop                      #  26    0x11ee12  1      OPC=nop             
  nop                      #  27    0x11ee13  1      OPC=nop             
  nop                      #  28    0x11ee14  1      OPC=nop             
  addq %r15, %r11          #  29    0x11ee15  3      OPC=addq_r64_r64    
  jmpq %r11                #  30    0x11ee18  3      OPC=jmpq_r64        
  nop                      #  31    0x11ee1b  1      OPC=nop             
  nop                      #  32    0x11ee1c  1      OPC=nop             
  nop                      #  33    0x11ee1d  1      OPC=nop             
  nop                      #  34    0x11ee1e  1      OPC=nop             
  nop                      #  35    0x11ee1f  1      OPC=nop             
  nop                      #  36    0x11ee20  1      OPC=nop             
  nop                      #  37    0x11ee21  1      OPC=nop             
  nop                      #  38    0x11ee22  1      OPC=nop             
  nop                      #  39    0x11ee23  1      OPC=nop             
  nop                      #  40    0x11ee24  1      OPC=nop             
  nop                      #  41    0x11ee25  1      OPC=nop             
  nop                      #  42    0x11ee26  1      OPC=nop             
                                                                         
.size _getenv_r, .-_getenv_r

