  .text
  .globl __newlib_thread_exit
  .type __newlib_thread_exit, @function

#! file-offset 0x15eec0
#! rip-offset  0x11eec0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__newlib_thread_exit:     #        0x11eec0  0      OPC=<label>         
  popq %r11                #  1     0x11eec0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x11eec2  7      OPC=andl_r32_imm32  
  nop                      #  3     0x11eec9  1      OPC=nop             
  nop                      #  4     0x11eeca  1      OPC=nop             
  nop                      #  5     0x11eecb  1      OPC=nop             
  nop                      #  6     0x11eecc  1      OPC=nop             
  addq %r15, %r11          #  7     0x11eecd  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x11eed0  3      OPC=jmpq_r64        
  nop                      #  9     0x11eed3  1      OPC=nop             
  nop                      #  10    0x11eed4  1      OPC=nop             
  nop                      #  11    0x11eed5  1      OPC=nop             
  nop                      #  12    0x11eed6  1      OPC=nop             
  nop                      #  13    0x11eed7  1      OPC=nop             
  nop                      #  14    0x11eed8  1      OPC=nop             
  nop                      #  15    0x11eed9  1      OPC=nop             
  nop                      #  16    0x11eeda  1      OPC=nop             
  nop                      #  17    0x11eedb  1      OPC=nop             
  nop                      #  18    0x11eedc  1      OPC=nop             
  nop                      #  19    0x11eedd  1      OPC=nop             
  nop                      #  20    0x11eede  1      OPC=nop             
  nop                      #  21    0x11eedf  1      OPC=nop             
  nop                      #  22    0x11eee0  1      OPC=nop             
  nop                      #  23    0x11eee1  1      OPC=nop             
  nop                      #  24    0x11eee2  1      OPC=nop             
  nop                      #  25    0x11eee3  1      OPC=nop             
  nop                      #  26    0x11eee4  1      OPC=nop             
  nop                      #  27    0x11eee5  1      OPC=nop             
  nop                      #  28    0x11eee6  1      OPC=nop             
                                                                         
.size __newlib_thread_exit, .-__newlib_thread_exit

