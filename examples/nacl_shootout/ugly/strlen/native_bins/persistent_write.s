  .text
  .globl persistent_write
  .type persistent_write, @function

#! file-offset 0x200a
#! rip-offset  0x40200a
#! capacity    62 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.persistent_write:           #        0x40200a  0      OPC=0     
  subq $0x8, %rsp            #  1     0x40200a  4      OPC=2389  
  movq %rsi, %rdi            #  2     0x40200e  3      OPC=1162  
  movq %rdx, %rsi            #  3     0x402011  3      OPC=1162  
  movq 0x223a35(%rip), %rcx  #  4     0x402014  7      OPC=1161  
  movl $0x1, %edx            #  5     0x40201b  5      OPC=1154  
  callq .arrayfile_fwrite    #  6     0x402020  5      OPC=260   
  testq %rax, %rax           #  7     0x402025  3      OPC=2438  
  je .L_40202f               #  8     0x402028  6      OPC=893   
  nop                        #  9     0x40202e  1      OPC=1343  
  nop                        #  10    0x40202f  1      OPC=1343  
  addq $0x8, %rsp            #  11    0x402030  4      OPC=70    
  retq                       #  12    0x402034  1      OPC=1978  
.L_40202f:                   #        0x402035  0      OPC=0     
  movl $0x408470, %ecx       #  13    0x402035  5      OPC=1154  
  movl $0x62, %edx           #  14    0x40203a  5      OPC=1154  
  movl $0x4083a8, %esi       #  15    0x40203f  5      OPC=1154  
  movl $0x4083f0, %edi       #  16    0x402044  5      OPC=1154  
  callq .__assert_fail_plt   #  17    0x402049  5      OPC=260   
                                                                 
.size persistent_write, .-persistent_write

