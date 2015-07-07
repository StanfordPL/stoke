  .text
  .globl get_file_size
  .type get_file_size, @function

#! file-offset 0x1fc9
#! rip-offset  0x401fc9
#! capacity    65 bytes

# Text              #  Line  RIP       Bytes  Opcode    
.get_file_size:     #        0x401fc9  0      OPC=0     
  pushq %r12        #  1     0x401fc9  2      OPC=1861  
  pushq %rbp        #  2     0x401fcb  1      OPC=1861  
  pushq %rbx        #  3     0x401fcc  1      OPC=1861  
  movq %rdi, %rbx   #  4     0x401fcd  3      OPC=1162  
  callq .ftell_plt  #  5     0x401fd0  5      OPC=260   
  movq %rax, %r12   #  6     0x401fd5  3      OPC=1162  
  movl $0x2, %edx   #  7     0x401fd8  5      OPC=1154  
  xorl %esi, %esi   #  8     0x401fdd  2      OPC=3758  
  movq %rbx, %rdi   #  9     0x401fdf  3      OPC=1162  
  callq .fseek_plt  #  10    0x401fe2  5      OPC=260   
  movq %rbx, %rdi   #  11    0x401fe7  3      OPC=1162  
  callq .ftell_plt  #  12    0x401fea  5      OPC=260   
  movq %rax, %rbp   #  13    0x401fef  3      OPC=1162  
  subq %r12, %rbp   #  14    0x401ff2  3      OPC=2391  
  xorl %edx, %edx   #  15    0x401ff5  2      OPC=3758  
  movq %r12, %rsi   #  16    0x401ff7  3      OPC=1162  
  movq %rbx, %rdi   #  17    0x401ffa  3      OPC=1162  
  callq .fseek_plt  #  18    0x401ffd  5      OPC=260   
  movq %rbp, %rax   #  19    0x402002  3      OPC=1162  
  popq %rbx         #  20    0x402005  1      OPC=1694  
  popq %rbp         #  21    0x402006  1      OPC=1694  
  popq %r12         #  22    0x402007  2      OPC=1694  
  retq              #  23    0x402009  1      OPC=1978  
                                                        
.size get_file_size, .-get_file_size

