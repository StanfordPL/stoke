  .text
  .globl __locale_charset
  .type __locale_charset, @function

#! file-offset 0x160320
#! rip-offset  0x120320
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__locale_charset:         #        0x120320  0      OPC=<label>         
  popq %r11                #  1     0x120320  2      OPC=popq_r64_1      
  movl $0x10070ee0, %eax   #  2     0x120322  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x120327  7      OPC=andl_r32_imm32  
  nop                      #  4     0x12032e  1      OPC=nop             
  nop                      #  5     0x12032f  1      OPC=nop             
  nop                      #  6     0x120330  1      OPC=nop             
  nop                      #  7     0x120331  1      OPC=nop             
  addq %r15, %r11          #  8     0x120332  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x120335  3      OPC=jmpq_r64        
  nop                      #  10    0x120338  1      OPC=nop             
  nop                      #  11    0x120339  1      OPC=nop             
  nop                      #  12    0x12033a  1      OPC=nop             
  nop                      #  13    0x12033b  1      OPC=nop             
  nop                      #  14    0x12033c  1      OPC=nop             
  nop                      #  15    0x12033d  1      OPC=nop             
  nop                      #  16    0x12033e  1      OPC=nop             
  nop                      #  17    0x12033f  1      OPC=nop             
  nop                      #  18    0x120340  1      OPC=nop             
  nop                      #  19    0x120341  1      OPC=nop             
  nop                      #  20    0x120342  1      OPC=nop             
  nop                      #  21    0x120343  1      OPC=nop             
  nop                      #  22    0x120344  1      OPC=nop             
  nop                      #  23    0x120345  1      OPC=nop             
  nop                      #  24    0x120346  1      OPC=nop             
                                                                         
.size __locale_charset, .-__locale_charset

