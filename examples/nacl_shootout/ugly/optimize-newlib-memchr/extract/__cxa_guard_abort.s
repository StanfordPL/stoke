  .text
  .globl __cxa_guard_abort
  .type __cxa_guard_abort, @function

#! file-offset 0x1228c0
#! rip-offset  0xe28c0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__cxa_guard_abort:            #        0xe28c0  0      OPC=<label>         
  popq %r11                    #  1     0xe28c0  2      OPC=popq_r64_1      
  movl %edi, %edi              #  2     0xe28c2  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  3     0xe28c4  2      OPC=movl_r32_r32    
  movb $0x0, 0x1(%r15,%rdi,1)  #  4     0xe28c6  6      OPC=movb_m8_imm8    
  andl $0xffffffe0, %r11d      #  5     0xe28cc  7      OPC=andl_r32_imm32  
  nop                          #  6     0xe28d3  1      OPC=nop             
  nop                          #  7     0xe28d4  1      OPC=nop             
  nop                          #  8     0xe28d5  1      OPC=nop             
  nop                          #  9     0xe28d6  1      OPC=nop             
  addq %r15, %r11              #  10    0xe28d7  3      OPC=addq_r64_r64    
  jmpq %r11                    #  11    0xe28da  3      OPC=jmpq_r64        
  nop                          #  12    0xe28dd  1      OPC=nop             
  nop                          #  13    0xe28de  1      OPC=nop             
  nop                          #  14    0xe28df  1      OPC=nop             
  nop                          #  15    0xe28e0  1      OPC=nop             
  nop                          #  16    0xe28e1  1      OPC=nop             
  nop                          #  17    0xe28e2  1      OPC=nop             
  nop                          #  18    0xe28e3  1      OPC=nop             
  nop                          #  19    0xe28e4  1      OPC=nop             
  nop                          #  20    0xe28e5  1      OPC=nop             
  nop                          #  21    0xe28e6  1      OPC=nop             
                                                                            
.size __cxa_guard_abort, .-__cxa_guard_abort

