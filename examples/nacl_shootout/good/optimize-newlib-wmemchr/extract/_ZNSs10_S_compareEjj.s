  .text
  .globl _ZNSs10_S_compareEjj
  .type _ZNSs10_S_compareEjj, @function

#! file-offset 0xea660
#! rip-offset  0xaa660
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._ZNSs10_S_compareEjj:     #        0xaa660  0      OPC=<label>         
  popq %r11                #  1     0xaa660  2      OPC=popq_r64_1      
  movl %edi, %eax          #  2     0xaa662  2      OPC=movl_r32_r32    
  subl %esi, %eax          #  3     0xaa664  2      OPC=subl_r32_r32    
  andl $0xffffffe0, %r11d  #  4     0xaa666  7      OPC=andl_r32_imm32  
  nop                      #  5     0xaa66d  1      OPC=nop             
  nop                      #  6     0xaa66e  1      OPC=nop             
  nop                      #  7     0xaa66f  1      OPC=nop             
  nop                      #  8     0xaa670  1      OPC=nop             
  addq %r15, %r11          #  9     0xaa671  3      OPC=addq_r64_r64    
  jmpq %r11                #  10    0xaa674  3      OPC=jmpq_r64        
  nop                      #  11    0xaa677  1      OPC=nop             
  nop                      #  12    0xaa678  1      OPC=nop             
  nop                      #  13    0xaa679  1      OPC=nop             
  nop                      #  14    0xaa67a  1      OPC=nop             
  nop                      #  15    0xaa67b  1      OPC=nop             
  nop                      #  16    0xaa67c  1      OPC=nop             
  nop                      #  17    0xaa67d  1      OPC=nop             
  nop                      #  18    0xaa67e  1      OPC=nop             
  nop                      #  19    0xaa67f  1      OPC=nop             
  nop                      #  20    0xaa680  1      OPC=nop             
  nop                      #  21    0xaa681  1      OPC=nop             
  nop                      #  22    0xaa682  1      OPC=nop             
  nop                      #  23    0xaa683  1      OPC=nop             
  nop                      #  24    0xaa684  1      OPC=nop             
  nop                      #  25    0xaa685  1      OPC=nop             
  nop                      #  26    0xaa686  1      OPC=nop             
                                                                        
.size _ZNSs10_S_compareEjj, .-_ZNSs10_S_compareEjj

