  .text
  .globl __nc_initialize_interfaces
  .type __nc_initialize_interfaces, @function

#! file-offset 0x6d700
#! rip-offset  0x2d700
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
.__nc_initialize_interfaces:            #        0x2d700  0      OPC=<label>         
  subl $0x8, %esp                       #  1     0x2d700  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  2     0x2d703  3      OPC=addq_r64_r64    
  movl $0xc, %edx                       #  3     0x2d706  5      OPC=movl_r32_imm32  
  movl $0x10079218, %esi                #  4     0x2d70b  5      OPC=movl_r32_imm32  
  movl $0x10039e20, %edi                #  5     0x2d710  5      OPC=movl_r32_imm32  
  nop                                   #  6     0x2d715  1      OPC=nop             
  nop                                   #  7     0x2d716  1      OPC=nop             
  nop                                   #  8     0x2d717  1      OPC=nop             
  nop                                   #  9     0x2d718  1      OPC=nop             
  nop                                   #  10    0x2d719  1      OPC=nop             
  nop                                   #  11    0x2d71a  1      OPC=nop             
  callq .__libnacl_mandatory_irt_query  #  12    0x2d71b  5      OPC=callq_label     
  movl $0x8, %edx                       #  13    0x2d720  5      OPC=movl_r32_imm32  
  movl $0x100791c8, %esi                #  14    0x2d725  5      OPC=movl_r32_imm32  
  movl $0x10039e34, %edi                #  15    0x2d72a  5      OPC=movl_r32_imm32  
  addl $0x8, %esp                       #  16    0x2d72f  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  17    0x2d732  3      OPC=addq_r64_r64    
  jmpq .__libnacl_mandatory_irt_query   #  18    0x2d735  5      OPC=jmpq_label_1    
  nop                                   #  19    0x2d73a  1      OPC=nop             
  nop                                   #  20    0x2d73b  1      OPC=nop             
  nop                                   #  21    0x2d73c  1      OPC=nop             
  nop                                   #  22    0x2d73d  1      OPC=nop             
  nop                                   #  23    0x2d73e  1      OPC=nop             
  nop                                   #  24    0x2d73f  1      OPC=nop             
                                                                                     
.size __nc_initialize_interfaces, .-__nc_initialize_interfaces

