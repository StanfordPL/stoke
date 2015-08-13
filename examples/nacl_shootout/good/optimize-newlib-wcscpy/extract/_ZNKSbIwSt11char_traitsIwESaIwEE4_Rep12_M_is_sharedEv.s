  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE4_Rep12_M_is_sharedEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE4_Rep12_M_is_sharedEv, @function

#! file-offset 0x115840
#! rip-offset  0xd5840
#! capacity    32 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE4_Rep12_M_is_sharedEv:  #        0xd5840  0      OPC=<label>         
  movl %edi, %edi                                        #  1     0xd5840  2      OPC=movl_r32_r32    
  movl %edi, %edi                                        #  2     0xd5842  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %r10d                           #  3     0xd5844  5      OPC=movl_r32_m32    
  popq %r11                                              #  4     0xd5849  2      OPC=popq_r64_1      
  testl %r10d, %r10d                                     #  5     0xd584b  3      OPC=testl_r32_r32   
  setg %al                                               #  6     0xd584e  3      OPC=setg_r8         
  andl $0xffffffe0, %r11d                                #  7     0xd5851  7      OPC=andl_r32_imm32  
  nop                                                    #  8     0xd5858  1      OPC=nop             
  nop                                                    #  9     0xd5859  1      OPC=nop             
  nop                                                    #  10    0xd585a  1      OPC=nop             
  nop                                                    #  11    0xd585b  1      OPC=nop             
  addq %r15, %r11                                        #  12    0xd585c  3      OPC=addq_r64_r64    
  jmpq %r11                                              #  13    0xd585f  3      OPC=jmpq_r64        
  nop                                                    #  14    0xd5862  1      OPC=nop             
  nop                                                    #  15    0xd5863  1      OPC=nop             
  nop                                                    #  16    0xd5864  1      OPC=nop             
  nop                                                    #  17    0xd5865  1      OPC=nop             
  nop                                                    #  18    0xd5866  1      OPC=nop             
                                                                                                      
.size _ZNKSbIwSt11char_traitsIwESaIwEE4_Rep12_M_is_sharedEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE4_Rep12_M_is_sharedEv

