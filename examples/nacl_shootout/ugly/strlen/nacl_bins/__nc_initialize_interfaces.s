  .text
  .globl __nc_initialize_interfaces
  .type __nc_initialize_interfaces, @function

#! file-offset 0x6d1c0
#! rip-offset  0x2d1c0
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
.__nc_initialize_interfaces:            #        0x2d1c0  0      OPC=0     
  subl $0x8, %esp                       #  1     0x2d1c0  3      OPC=2384  
  addq %r15, %rsp                       #  2     0x2d1c3  3      OPC=72    
  movl $0xc, %edx                       #  3     0x2d1c6  5      OPC=1154  
  movl $0x10079218, %esi                #  4     0x2d1cb  5      OPC=1154  
  movl $0x10039e20, %edi                #  5     0x2d1d0  5      OPC=1154  
  nop                                   #  6     0x2d1d5  1      OPC=1343  
  nop                                   #  7     0x2d1d6  1      OPC=1343  
  nop                                   #  8     0x2d1d7  1      OPC=1343  
  nop                                   #  9     0x2d1d8  1      OPC=1343  
  nop                                   #  10    0x2d1d9  1      OPC=1343  
  nop                                   #  11    0x2d1da  1      OPC=1343  
  callq .__libnacl_mandatory_irt_query  #  12    0x2d1db  5      OPC=260   
  movl $0x8, %edx                       #  13    0x2d1e0  5      OPC=1154  
  movl $0x100791c8, %esi                #  14    0x2d1e5  5      OPC=1154  
  movl $0x10039e34, %edi                #  15    0x2d1ea  5      OPC=1154  
  addl $0x8, %esp                       #  16    0x2d1ef  3      OPC=65    
  addq %r15, %rsp                       #  17    0x2d1f2  3      OPC=72    
  jmpq .__libnacl_mandatory_irt_query   #  18    0x2d1f5  5      OPC=930   
  nop                                   #  19    0x2d1fa  1      OPC=1343  
  nop                                   #  20    0x2d1fb  1      OPC=1343  
  nop                                   #  21    0x2d1fc  1      OPC=1343  
  nop                                   #  22    0x2d1fd  1      OPC=1343  
  nop                                   #  23    0x2d1fe  1      OPC=1343  
  nop                                   #  24    0x2d1ff  1      OPC=1343  
                                                                           
.size __nc_initialize_interfaces, .-__nc_initialize_interfaces

