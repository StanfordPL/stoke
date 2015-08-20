  .text
  .globl __locale_msgcharset
  .type __locale_msgcharset, @function

#! file-offset 0x160360
#! rip-offset  0x120360
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__locale_msgcharset:      #        0x120360  0      OPC=<label>         
  popq %r11                #  1     0x120360  2      OPC=popq_r64_1      
  movl $0x10070ec0, %eax   #  2     0x120362  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x120367  7      OPC=andl_r32_imm32  
  nop                      #  4     0x12036e  1      OPC=nop             
  nop                      #  5     0x12036f  1      OPC=nop             
  nop                      #  6     0x120370  1      OPC=nop             
  nop                      #  7     0x120371  1      OPC=nop             
  addq %r15, %r11          #  8     0x120372  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x120375  3      OPC=jmpq_r64        
  nop                      #  10    0x120378  1      OPC=nop             
  nop                      #  11    0x120379  1      OPC=nop             
  nop                      #  12    0x12037a  1      OPC=nop             
  nop                      #  13    0x12037b  1      OPC=nop             
  nop                      #  14    0x12037c  1      OPC=nop             
  nop                      #  15    0x12037d  1      OPC=nop             
  nop                      #  16    0x12037e  1      OPC=nop             
  nop                      #  17    0x12037f  1      OPC=nop             
  nop                      #  18    0x120380  1      OPC=nop             
  nop                      #  19    0x120381  1      OPC=nop             
  nop                      #  20    0x120382  1      OPC=nop             
  nop                      #  21    0x120383  1      OPC=nop             
  nop                      #  22    0x120384  1      OPC=nop             
  nop                      #  23    0x120385  1      OPC=nop             
  nop                      #  24    0x120386  1      OPC=nop             
                                                                         
.size __locale_msgcharset, .-__locale_msgcharset

