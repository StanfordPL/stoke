  .text
  .globl pthread_equal
  .type pthread_equal, @function

#! file-offset 0x6e180
#! rip-offset  0x2e180
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.pthread_equal:            #        0x2e180  0      OPC=<label>         
  popq %r11                #  1     0x2e180  2      OPC=popq_r64_1      
  xorl %eax, %eax          #  2     0x2e182  2      OPC=xorl_r32_r32    
  cmpl %edi, %esi          #  3     0x2e184  2      OPC=cmpl_r32_r32    
  sete %al                 #  4     0x2e186  3      OPC=sete_r8         
  andl $0xffffffe0, %r11d  #  5     0x2e189  7      OPC=andl_r32_imm32  
  nop                      #  6     0x2e190  1      OPC=nop             
  nop                      #  7     0x2e191  1      OPC=nop             
  nop                      #  8     0x2e192  1      OPC=nop             
  nop                      #  9     0x2e193  1      OPC=nop             
  addq %r15, %r11          #  10    0x2e194  3      OPC=addq_r64_r64    
  jmpq %r11                #  11    0x2e197  3      OPC=jmpq_r64        
  nop                      #  12    0x2e19a  1      OPC=nop             
  nop                      #  13    0x2e19b  1      OPC=nop             
  nop                      #  14    0x2e19c  1      OPC=nop             
  nop                      #  15    0x2e19d  1      OPC=nop             
  nop                      #  16    0x2e19e  1      OPC=nop             
  nop                      #  17    0x2e19f  1      OPC=nop             
  nop                      #  18    0x2e1a0  1      OPC=nop             
  nop                      #  19    0x2e1a1  1      OPC=nop             
  nop                      #  20    0x2e1a2  1      OPC=nop             
  nop                      #  21    0x2e1a3  1      OPC=nop             
  nop                      #  22    0x2e1a4  1      OPC=nop             
  nop                      #  23    0x2e1a5  1      OPC=nop             
  nop                      #  24    0x2e1a6  1      OPC=nop             
                                                                        
.size pthread_equal, .-pthread_equal

