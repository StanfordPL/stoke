  .text
  .globl __nc_initialize_interfaces
  .type __nc_initialize_interfaces, @function

#! file-offset 0x6da00
#! rip-offset  0x2da00
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
.__nc_initialize_interfaces:            #        0x2da00  0      OPC=<label>         
  subl $0x8, %esp                       #  1     0x2da00  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  2     0x2da03  3      OPC=addq_r64_r64    
  movl $0xc, %edx                       #  3     0x2da06  5      OPC=movl_r32_imm32  
  movl $0x10079218, %esi                #  4     0x2da0b  5      OPC=movl_r32_imm32  
  movl $0x10039e20, %edi                #  5     0x2da10  5      OPC=movl_r32_imm32  
  nop                                   #  6     0x2da15  1      OPC=nop             
  nop                                   #  7     0x2da16  1      OPC=nop             
  nop                                   #  8     0x2da17  1      OPC=nop             
  nop                                   #  9     0x2da18  1      OPC=nop             
  nop                                   #  10    0x2da19  1      OPC=nop             
  nop                                   #  11    0x2da1a  1      OPC=nop             
  callq .__libnacl_mandatory_irt_query  #  12    0x2da1b  5      OPC=callq_label     
  movl $0x8, %edx                       #  13    0x2da20  5      OPC=movl_r32_imm32  
  movl $0x100791c8, %esi                #  14    0x2da25  5      OPC=movl_r32_imm32  
  movl $0x10039e34, %edi                #  15    0x2da2a  5      OPC=movl_r32_imm32  
  addl $0x8, %esp                       #  16    0x2da2f  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  17    0x2da32  3      OPC=addq_r64_r64    
  jmpq .__libnacl_mandatory_irt_query   #  18    0x2da35  5      OPC=jmpq_label_1    
  nop                                   #  19    0x2da3a  1      OPC=nop             
  nop                                   #  20    0x2da3b  1      OPC=nop             
  nop                                   #  21    0x2da3c  1      OPC=nop             
  nop                                   #  22    0x2da3d  1      OPC=nop             
  nop                                   #  23    0x2da3e  1      OPC=nop             
  nop                                   #  24    0x2da3f  1      OPC=nop             
                                                                                     
.size __nc_initialize_interfaces, .-__nc_initialize_interfaces

