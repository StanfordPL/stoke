  .text
  .globl _ZSt18__throw_bad_typeidv
  .type _ZSt18__throw_bad_typeidv, @function

#! file-offset 0x126200
#! rip-offset  0xe6200
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
._ZSt18__throw_bad_typeidv:        #        0xe6200  0      OPC=0     
  movl $0x4, %edi                  #  1     0xe6200  5      OPC=1154  
  subl $0x8, %esp                  #  2     0xe6205  3      OPC=2384  
  addq %r15, %rsp                  #  3     0xe6208  3      OPC=72    
  nop                              #  4     0xe620b  1      OPC=1343  
  nop                              #  5     0xe620c  1      OPC=1343  
  nop                              #  6     0xe620d  1      OPC=1343  
  nop                              #  7     0xe620e  1      OPC=1343  
  nop                              #  8     0xe620f  1      OPC=1343  
  nop                              #  9     0xe6210  1      OPC=1343  
  nop                              #  10    0xe6211  1      OPC=1343  
  nop                              #  11    0xe6212  1      OPC=1343  
  nop                              #  12    0xe6213  1      OPC=1343  
  nop                              #  13    0xe6214  1      OPC=1343  
  nop                              #  14    0xe6215  1      OPC=1343  
  nop                              #  15    0xe6216  1      OPC=1343  
  nop                              #  16    0xe6217  1      OPC=1343  
  nop                              #  17    0xe6218  1      OPC=1343  
  nop                              #  18    0xe6219  1      OPC=1343  
  nop                              #  19    0xe621a  1      OPC=1343  
  callq .__cxa_allocate_exception  #  20    0xe621b  5      OPC=260   
  movl %eax, %edi                  #  21    0xe6220  2      OPC=1157  
  movl $0xfd120, %edx              #  22    0xe6222  5      OPC=1154  
  movl $0x1003e8c4, %esi           #  23    0xe6227  5      OPC=1154  
  movl %edi, %edi                  #  24    0xe622c  2      OPC=1157  
  movl $0x1003e8a8, (%r15,%rdi,1)  #  25    0xe622e  8      OPC=1135  
  nop                              #  26    0xe6236  1      OPC=1343  
  nop                              #  27    0xe6237  1      OPC=1343  
  nop                              #  28    0xe6238  1      OPC=1343  
  nop                              #  29    0xe6239  1      OPC=1343  
  nop                              #  30    0xe623a  1      OPC=1343  
  callq .__cxa_throw               #  31    0xe623b  5      OPC=260   
                                                                      
.size _ZSt18__throw_bad_typeidv, .-_ZSt18__throw_bad_typeidv

