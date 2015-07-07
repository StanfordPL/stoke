  .text
  .globl arrayfile_rewind
  .type arrayfile_rewind, @function

#! file-offset 0x7cd5
#! rip-offset  0x407cd5
#! capacity    25 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.arrayfile_rewind:         #        0x407cd5  0      OPC=0     
  movl $0x0, (%rdi)        #  1     0x407cd5  6      OPC=1135  
  movslq 0x20(%rdi), %rdx  #  2     0x407cdb  4      OPC=1288  
  shlq $0x2, %rdx          #  3     0x407cdf  4      OPC=2272  
  movq 0x8(%rdi), %rdi     #  4     0x407ce3  4      OPC=1161  
  xorl %esi, %esi          #  5     0x407ce7  2      OPC=3758  
  jmpq .memset_plt         #  6     0x407ce9  5      OPC=930   
                                                               
.size arrayfile_rewind, .-arrayfile_rewind

