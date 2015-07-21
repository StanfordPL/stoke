  .text
  .globl stringfile_close
  .type stringfile_close, @function

#! file-offset 0x76a0
#! rip-offset  0x4076a0
#! capacity    31 bytes

# Text                  #  Line  RIP       Bytes  Opcode    
.stringfile_close:      #        0x4076a0  0      OPC=0     
  pushq %rbx            #  1     0x4076a0  1      OPC=1861  
  movq %rdi, %rbx       #  2     0x4076a1  3      OPC=1162  
  movl 0x8(%rdi), %eax  #  3     0x4076a4  3      OPC=1156  
  testl %eax, %eax      #  4     0x4076a7  2      OPC=2436  
  je .L_4076b3          #  5     0x4076a9  6      OPC=893   
  nop                   #  6     0x4076af  1      OPC=1343  
  nop                   #  7     0x4076b0  1      OPC=1343  
  movq (%rdi), %rdi     #  8     0x4076b1  3      OPC=1161  
  callq .free_plt       #  9     0x4076b4  5      OPC=260   
.L_4076b3:              #        0x4076b9  0      OPC=0     
  movq %rbx, %rdi       #  10    0x4076b9  3      OPC=1162  
  callq .free_plt       #  11    0x4076bc  5      OPC=260   
  xorl %eax, %eax       #  12    0x4076c1  2      OPC=3758  
  popq %rbx             #  13    0x4076c3  1      OPC=1694  
  retq                  #  14    0x4076c4  1      OPC=1978  
                                                            
.size stringfile_close, .-stringfile_close

