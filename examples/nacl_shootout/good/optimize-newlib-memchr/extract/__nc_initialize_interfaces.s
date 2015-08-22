  .text
  .globl __nc_initialize_interfaces
  .type __nc_initialize_interfaces, @function

#! file-offset 0x6e120
#! rip-offset  0x2e120
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
.__nc_initialize_interfaces:            #        0x2e120  0      OPC=<label>         
  subl $0x8, %esp                       #  1     0x2e120  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  2     0x2e123  3      OPC=addq_r64_r64    
  movl $0xc, %edx                       #  3     0x2e126  5      OPC=movl_r32_imm32  
  movl $0x10079218, %esi                #  4     0x2e12b  5      OPC=movl_r32_imm32  
  movl $0x10039e20, %edi                #  5     0x2e130  5      OPC=movl_r32_imm32  
  nop                                   #  6     0x2e135  1      OPC=nop             
  nop                                   #  7     0x2e136  1      OPC=nop             
  nop                                   #  8     0x2e137  1      OPC=nop             
  nop                                   #  9     0x2e138  1      OPC=nop             
  nop                                   #  10    0x2e139  1      OPC=nop             
  nop                                   #  11    0x2e13a  1      OPC=nop             
  callq .__libnacl_mandatory_irt_query  #  12    0x2e13b  5      OPC=callq_label     
  movl $0x8, %edx                       #  13    0x2e140  5      OPC=movl_r32_imm32  
  movl $0x100791c8, %esi                #  14    0x2e145  5      OPC=movl_r32_imm32  
  movl $0x10039e34, %edi                #  15    0x2e14a  5      OPC=movl_r32_imm32  
  addl $0x8, %esp                       #  16    0x2e14f  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  17    0x2e152  3      OPC=addq_r64_r64    
  jmpq .__libnacl_mandatory_irt_query   #  18    0x2e155  5      OPC=jmpq_label_1    
  nop                                   #  19    0x2e15a  1      OPC=nop             
  nop                                   #  20    0x2e15b  1      OPC=nop             
  nop                                   #  21    0x2e15c  1      OPC=nop             
  nop                                   #  22    0x2e15d  1      OPC=nop             
  nop                                   #  23    0x2e15e  1      OPC=nop             
  nop                                   #  24    0x2e15f  1      OPC=nop             
                                                                                     
.size __nc_initialize_interfaces, .-__nc_initialize_interfaces

