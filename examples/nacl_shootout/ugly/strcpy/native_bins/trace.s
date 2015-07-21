  .text
  .globl trace
  .type trace, @function

#! file-offset 0x50a9
#! rip-offset  0x4050a9
#! capacity    60 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.trace:                       #        0x4050a9  0      OPC=0     
  pushq %rbx                  #  1     0x4050a9  1      OPC=1861  
  movl %edi, %ebx             #  2     0x4050aa  2      OPC=1157  
  movl 0x22036e(%rip), %eax   #  3     0x4050ac  6      OPC=1156  
  subl $0x1, %eax             #  4     0x4050b2  3      OPC=2384  
  movl %eax, 0x220365(%rip)   #  5     0x4050b5  6      OPC=1136  
  testl %eax, %eax            #  6     0x4050bb  2      OPC=2436  
  jle .L_4050c8               #  7     0x4050bd  6      OPC=919   
  nop                         #  8     0x4050c3  1      OPC=1343  
  nop                         #  9     0x4050c4  1      OPC=1343  
  movsbl %bl, %edi            #  10    0x4050c5  3      OPC=1282  
  popq %rbx                   #  11    0x4050c8  1      OPC=1694  
  jmpq .putchar_plt           #  12    0x4050c9  5      OPC=930   
.L_4050c8:                    #        0x4050ce  0      OPC=0     
  movl $0xa, %edi             #  13    0x4050ce  5      OPC=1154  
  callq .putchar_plt          #  14    0x4050d3  5      OPC=260   
  movl $0x32, 0x220344(%rip)  #  15    0x4050d8  10     OPC=1135  
  movsbl %bl, %edi            #  16    0x4050e2  3      OPC=1282  
  popq %rbx                   #  17    0x4050e5  1      OPC=1694  
  jmpq .putchar_plt           #  18    0x4050e6  5      OPC=930   
                                                                  
.size trace, .-trace

