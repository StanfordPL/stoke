  .text
  .globl __cxa_guard_abort
  .type __cxa_guard_abort, @function

#! file-offset 0x1221a0
#! rip-offset  0xe21a0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__cxa_guard_abort:            #        0xe21a0  0      OPC=<label>         
  popq %r11                    #  1     0xe21a0  2      OPC=popq_r64_1      
  movl %edi, %edi              #  2     0xe21a2  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  3     0xe21a4  2      OPC=movl_r32_r32    
  movb $0x0, 0x1(%r15,%rdi,1)  #  4     0xe21a6  6      OPC=movb_m8_imm8    
  andl $0xffffffe0, %r11d      #  5     0xe21ac  7      OPC=andl_r32_imm32  
  nop                          #  6     0xe21b3  1      OPC=nop             
  nop                          #  7     0xe21b4  1      OPC=nop             
  nop                          #  8     0xe21b5  1      OPC=nop             
  nop                          #  9     0xe21b6  1      OPC=nop             
  addq %r15, %r11              #  10    0xe21b7  3      OPC=addq_r64_r64    
  jmpq %r11                    #  11    0xe21ba  3      OPC=jmpq_r64        
  nop                          #  12    0xe21bd  1      OPC=nop             
  nop                          #  13    0xe21be  1      OPC=nop             
  nop                          #  14    0xe21bf  1      OPC=nop             
  nop                          #  15    0xe21c0  1      OPC=nop             
  nop                          #  16    0xe21c1  1      OPC=nop             
  nop                          #  17    0xe21c2  1      OPC=nop             
  nop                          #  18    0xe21c3  1      OPC=nop             
  nop                          #  19    0xe21c4  1      OPC=nop             
  nop                          #  20    0xe21c5  1      OPC=nop             
  nop                          #  21    0xe21c6  1      OPC=nop             
                                                                            
.size __cxa_guard_abort, .-__cxa_guard_abort

