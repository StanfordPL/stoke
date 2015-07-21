  .text
  .globl stringfile_close
  .type stringfile_close, @function

#! file-offset 0x7700
#! rip-offset  0x407700
#! capacity    31 bytes

# Text                  #  Line  RIP       Bytes  Opcode    
.stringfile_close:      #        0x407700  0      OPC=0     
  pushq %rbx            #  1     0x407700  1      OPC=1861  
  movq %rdi, %rbx       #  2     0x407701  3      OPC=1162  
  movl 0x8(%rdi), %eax  #  3     0x407704  3      OPC=1156  
  testl %eax, %eax      #  4     0x407707  2      OPC=2436  
  je .L_407713          #  5     0x407709  6      OPC=893   
  nop                   #  6     0x40770f  1      OPC=1343  
  nop                   #  7     0x407710  1      OPC=1343  
  movq (%rdi), %rdi     #  8     0x407711  3      OPC=1161  
  callq .free_plt       #  9     0x407714  5      OPC=260   
.L_407713:              #        0x407719  0      OPC=0     
  movq %rbx, %rdi       #  10    0x407719  3      OPC=1162  
  callq .free_plt       #  11    0x40771c  5      OPC=260   
  xorl %eax, %eax       #  12    0x407721  2      OPC=3758  
  popq %rbx             #  13    0x407723  1      OPC=1694  
  retq                  #  14    0x407724  1      OPC=1978  
                                                            
.size stringfile_close, .-stringfile_close

