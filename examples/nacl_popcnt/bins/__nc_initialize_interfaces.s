  .text
  .globl __nc_initialize_interfaces
  .type __nc_initialize_interfaces, @function

#! file-offset 0x42b40
#! rip-offset  0x42b40
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  
.__nc_initialize_interfaces:            #        0x42b40  0      
  subl $0x8, %esp                       #  1     0x42b40  3      
  addq %r15, %rsp                       #  2     0x42b43  3      
  movl $0xc, %edx                       #  3     0x42b46  5      
  movl $0x10036dd0, %esi                #  4     0x42b4b  5      
  movl $0x10020964, %edi                #  5     0x42b50  5      
  nop                                   #  6     0x42b55  1      
  callq .__libnacl_mandatory_irt_query  #  7     0x42b56  5      
  movl $0x8, %edx                       #  8     0x42b5b  5      
  movl $0x10036ddc, %esi                #  9     0x42b60  5      
  movl $0x10020978, %edi                #  10    0x42b65  5      
  addl $0x8, %esp                       #  11    0x42b6a  3      
  addq %r15, %rsp                       #  12    0x42b6d  3      
  jmpq .__libnacl_mandatory_irt_query   #  13    0x42b70  5      
  nop                                   #  14    0x42b75  1      
  nop                                   #  15    0x42b76  1      
  nop                                   #  16    0x42b77  1      
  nop                                   #  17    0x42b78  1      
  nop                                   #  18    0x42b79  1      
  nop                                   #  19    0x42b7a  1      
                                                                 
.size __nc_initialize_interfaces, .-__nc_initialize_interfaces

