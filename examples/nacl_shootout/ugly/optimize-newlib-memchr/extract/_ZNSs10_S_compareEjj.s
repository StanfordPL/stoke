  .text
  .globl _ZNSs10_S_compareEjj
  .type _ZNSs10_S_compareEjj, @function

#! file-offset 0xead80
#! rip-offset  0xaad80
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._ZNSs10_S_compareEjj:     #        0xaad80  0      OPC=<label>         
  popq %r11                #  1     0xaad80  2      OPC=popq_r64_1      
  movl %edi, %eax          #  2     0xaad82  2      OPC=movl_r32_r32    
  subl %esi, %eax          #  3     0xaad84  2      OPC=subl_r32_r32    
  andl $0xffffffe0, %r11d  #  4     0xaad86  7      OPC=andl_r32_imm32  
  nop                      #  5     0xaad8d  1      OPC=nop             
  nop                      #  6     0xaad8e  1      OPC=nop             
  nop                      #  7     0xaad8f  1      OPC=nop             
  nop                      #  8     0xaad90  1      OPC=nop             
  addq %r15, %r11          #  9     0xaad91  3      OPC=addq_r64_r64    
  jmpq %r11                #  10    0xaad94  3      OPC=jmpq_r64        
  nop                      #  11    0xaad97  1      OPC=nop             
  nop                      #  12    0xaad98  1      OPC=nop             
  nop                      #  13    0xaad99  1      OPC=nop             
  nop                      #  14    0xaad9a  1      OPC=nop             
  nop                      #  15    0xaad9b  1      OPC=nop             
  nop                      #  16    0xaad9c  1      OPC=nop             
  nop                      #  17    0xaad9d  1      OPC=nop             
  nop                      #  18    0xaad9e  1      OPC=nop             
  nop                      #  19    0xaad9f  1      OPC=nop             
  nop                      #  20    0xaada0  1      OPC=nop             
  nop                      #  21    0xaada1  1      OPC=nop             
  nop                      #  22    0xaada2  1      OPC=nop             
  nop                      #  23    0xaada3  1      OPC=nop             
  nop                      #  24    0xaada4  1      OPC=nop             
  nop                      #  25    0xaada5  1      OPC=nop             
  nop                      #  26    0xaada6  1      OPC=nop             
                                                                        
.size _ZNSs10_S_compareEjj, .-_ZNSs10_S_compareEjj

