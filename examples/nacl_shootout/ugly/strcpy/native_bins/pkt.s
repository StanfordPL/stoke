  .text
  .globl pkt
  .type pkt, @function

#! file-offset 0x506d
#! rip-offset  0x40506d
#! capacity    60 bytes

# Text                   #  Line  RIP       Bytes  Opcode    
.pkt:                    #        0x40506d  0      OPC=0     
  pushq %r12             #  1     0x40506d  2      OPC=1861  
  pushq %rbp             #  2     0x40506f  1      OPC=1861  
  pushq %rbx             #  3     0x405070  1      OPC=1861  
  movq %rdi, %rbx        #  4     0x405071  3      OPC=1162  
  movl %esi, %ebp        #  5     0x405074  2      OPC=1157  
  movl %edx, %r12d       #  6     0x405076  3      OPC=1157  
  movl $0x18, %edi       #  7     0x405079  5      OPC=1154  
  callq .malloc_plt      #  8     0x40507e  5      OPC=260   
  movb $0x0, 0x14(%rax)  #  9     0x405083  4      OPC=1140  
  movb $0x0, 0x15(%rax)  #  10    0x405087  4      OPC=1140  
  movb $0x0, 0x16(%rax)  #  11    0x40508b  4      OPC=1140  
  movb $0x0, 0x17(%rax)  #  12    0x40508f  4      OPC=1140  
  movq %rbx, (%rax)      #  13    0x405093  3      OPC=1138  
  movl %ebp, 0x8(%rax)   #  14    0x405096  3      OPC=1136  
  movl %r12d, 0xc(%rax)  #  15    0x405099  4      OPC=1136  
  movl $0x0, 0x10(%rax)  #  16    0x40509d  7      OPC=1135  
  popq %rbx              #  17    0x4050a4  1      OPC=1694  
  popq %rbp              #  18    0x4050a5  1      OPC=1694  
  popq %r12              #  19    0x4050a6  2      OPC=1694  
  retq                   #  20    0x4050a8  1      OPC=1978  
                                                             
.size pkt, .-pkt

