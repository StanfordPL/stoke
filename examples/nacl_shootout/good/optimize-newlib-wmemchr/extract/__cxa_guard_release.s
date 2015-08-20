  .text
  .globl __cxa_guard_release
  .type __cxa_guard_release, @function

#! file-offset 0x1221c0
#! rip-offset  0xe21c0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__cxa_guard_release:          #        0xe21c0  0      OPC=<label>         
  movl %edi, %edi              #  1     0xe21c0  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0xe21c2  2      OPC=movl_r32_r32    
  movb $0x0, 0x1(%r15,%rdi,1)  #  3     0xe21c4  6      OPC=movb_m8_imm8    
  popq %r11                    #  4     0xe21ca  2      OPC=popq_r64_1      
  movl %edi, %edi              #  5     0xe21cc  2      OPC=movl_r32_r32    
  movb $0x1, (%r15,%rdi,1)     #  6     0xe21ce  5      OPC=movb_m8_imm8    
  andl $0xffffffe0, %r11d      #  7     0xe21d3  7      OPC=andl_r32_imm32  
  nop                          #  8     0xe21da  1      OPC=nop             
  nop                          #  9     0xe21db  1      OPC=nop             
  nop                          #  10    0xe21dc  1      OPC=nop             
  nop                          #  11    0xe21dd  1      OPC=nop             
  addq %r15, %r11              #  12    0xe21de  3      OPC=addq_r64_r64    
  jmpq %r11                    #  13    0xe21e1  3      OPC=jmpq_r64        
  nop                          #  14    0xe21e4  1      OPC=nop             
  nop                          #  15    0xe21e5  1      OPC=nop             
  nop                          #  16    0xe21e6  1      OPC=nop             
                                                                            
.size __cxa_guard_release, .-__cxa_guard_release

