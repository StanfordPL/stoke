  .text
  .globl __nc_initialize_interfaces
  .type __nc_initialize_interfaces, @function

#! file-offset 0x42aa0
#! rip-offset  0x42aa0
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  
.__nc_initialize_interfaces:            #        0x42aa0  0      
  subl $0x8, %esp                       #  1     0x42aa0  3      
  addq %r15, %rsp                       #  2     0x42aa3  3      
  movl $0xc, %edx                       #  3     0x42aa6  5      
  movl $0x10036dd0, %esi                #  4     0x42aab  5      
  movl $0x10020964, %edi                #  5     0x42ab0  5      
  nop                                   #  6     0x42ab5  1      
  callq .__libnacl_mandatory_irt_query  #  7     0x42ab6  5      
  movl $0x8, %edx                       #  8     0x42abb  5      
  movl $0x10036ddc, %esi                #  9     0x42ac0  5      
  movl $0x10020978, %edi                #  10    0x42ac5  5      
  addl $0x8, %esp                       #  11    0x42aca  3      
  addq %r15, %rsp                       #  12    0x42acd  3      
  jmpq .__libnacl_mandatory_irt_query   #  13    0x42ad0  5      
  nop                                   #  14    0x42ad5  1      
  nop                                   #  15    0x42ad6  1      
  nop                                   #  16    0x42ad7  1      
  nop                                   #  17    0x42ad8  1      
  nop                                   #  18    0x42ad9  1      
  nop                                   #  19    0x42ada  1      
                                                                 
.size __nc_initialize_interfaces, .-__nc_initialize_interfaces

