  .text
  .globl _ZNSs10_S_compareEjj
  .type _ZNSs10_S_compareEjj, @function

#! file-offset 0xea360
#! rip-offset  0xaa360
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._ZNSs10_S_compareEjj:     #        0xaa360  0      OPC=<label>         
  popq %r11                #  1     0xaa360  2      OPC=popq_r64_1      
  movl %edi, %eax          #  2     0xaa362  2      OPC=movl_r32_r32    
  subl %esi, %eax          #  3     0xaa364  2      OPC=subl_r32_r32    
  andl $0xffffffe0, %r11d  #  4     0xaa366  7      OPC=andl_r32_imm32  
  nop                      #  5     0xaa36d  1      OPC=nop             
  nop                      #  6     0xaa36e  1      OPC=nop             
  nop                      #  7     0xaa36f  1      OPC=nop             
  nop                      #  8     0xaa370  1      OPC=nop             
  addq %r15, %r11          #  9     0xaa371  3      OPC=addq_r64_r64    
  jmpq %r11                #  10    0xaa374  3      OPC=jmpq_r64        
  nop                      #  11    0xaa377  1      OPC=nop             
  nop                      #  12    0xaa378  1      OPC=nop             
  nop                      #  13    0xaa379  1      OPC=nop             
  nop                      #  14    0xaa37a  1      OPC=nop             
  nop                      #  15    0xaa37b  1      OPC=nop             
  nop                      #  16    0xaa37c  1      OPC=nop             
  nop                      #  17    0xaa37d  1      OPC=nop             
  nop                      #  18    0xaa37e  1      OPC=nop             
  nop                      #  19    0xaa37f  1      OPC=nop             
  nop                      #  20    0xaa380  1      OPC=nop             
  nop                      #  21    0xaa381  1      OPC=nop             
  nop                      #  22    0xaa382  1      OPC=nop             
  nop                      #  23    0xaa383  1      OPC=nop             
  nop                      #  24    0xaa384  1      OPC=nop             
  nop                      #  25    0xaa385  1      OPC=nop             
  nop                      #  26    0xaa386  1      OPC=nop             
                                                                        
.size _ZNSs10_S_compareEjj, .-_ZNSs10_S_compareEjj

