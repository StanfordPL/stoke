  .text
  .globl pkt
  .type pkt, @function

#! file-offset 0x659a0
#! rip-offset  0x259a0
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.pkt:                           #        0x259a0  0      OPC=0     
  pushq %r13                    #  1     0x259a0  2      OPC=1861  
  pushq %r12                    #  2     0x259a2  2      OPC=1861  
  pushq %rbx                    #  3     0x259a4  1      OPC=1861  
  movl %esi, %ebx               #  4     0x259a5  2      OPC=1157  
  movl %edx, %r12d              #  5     0x259a7  3      OPC=1157  
  movl %edi, %r13d              #  6     0x259aa  3      OPC=1157  
  movl $0x14, %edi              #  7     0x259ad  5      OPC=1154  
  nop                           #  8     0x259b2  1      OPC=1343  
  nop                           #  9     0x259b3  1      OPC=1343  
  nop                           #  10    0x259b4  1      OPC=1343  
  nop                           #  11    0x259b5  1      OPC=1343  
  nop                           #  12    0x259b6  1      OPC=1343  
  nop                           #  13    0x259b7  1      OPC=1343  
  nop                           #  14    0x259b8  1      OPC=1343  
  nop                           #  15    0x259b9  1      OPC=1343  
  nop                           #  16    0x259ba  1      OPC=1343  
  callq .malloc                 #  17    0x259bb  5      OPC=260   
  movl %eax, %eax               #  18    0x259c0  2      OPC=1157  
  movl %eax, %eax               #  19    0x259c2  2      OPC=1157  
  movb $0x0, 0x10(%r15,%rax,1)  #  20    0x259c4  6      OPC=1140  
  movl %eax, %eax               #  21    0x259ca  2      OPC=1157  
  movb $0x0, 0x11(%r15,%rax,1)  #  22    0x259cc  6      OPC=1140  
  movl %eax, %eax               #  23    0x259d2  2      OPC=1157  
  movb $0x0, 0x12(%r15,%rax,1)  #  24    0x259d4  6      OPC=1140  
  nop                           #  25    0x259da  1      OPC=1343  
  nop                           #  26    0x259db  1      OPC=1343  
  nop                           #  27    0x259dc  1      OPC=1343  
  nop                           #  28    0x259dd  1      OPC=1343  
  nop                           #  29    0x259de  1      OPC=1343  
  nop                           #  30    0x259df  1      OPC=1343  
  movl %eax, %eax               #  31    0x259e0  2      OPC=1157  
  movb $0x0, 0x13(%r15,%rax,1)  #  32    0x259e2  6      OPC=1140  
  movl %eax, %eax               #  33    0x259e8  2      OPC=1157  
  movl %r13d, (%r15,%rax,1)     #  34    0x259ea  4      OPC=1136  
  movl %eax, %eax               #  35    0x259ee  2      OPC=1157  
  movl %ebx, 0x4(%r15,%rax,1)   #  36    0x259f0  5      OPC=1136  
  movl %eax, %eax               #  37    0x259f5  2      OPC=1157  
  movl %r12d, 0x8(%r15,%rax,1)  #  38    0x259f7  5      OPC=1136  
  nop                           #  39    0x259fc  1      OPC=1343  
  nop                           #  40    0x259fd  1      OPC=1343  
  nop                           #  41    0x259fe  1      OPC=1343  
  nop                           #  42    0x259ff  1      OPC=1343  
  movl %eax, %eax               #  43    0x25a00  2      OPC=1157  
  movl $0x0, 0xc(%r15,%rax,1)   #  44    0x25a02  9      OPC=1135  
  popq %rbx                     #  45    0x25a0b  1      OPC=1694  
  popq %r12                     #  46    0x25a0c  2      OPC=1694  
  popq %r13                     #  47    0x25a0e  2      OPC=1694  
  popq %r11                     #  48    0x25a10  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  49    0x25a12  7      OPC=131   
  nop                           #  50    0x25a19  1      OPC=1343  
  nop                           #  51    0x25a1a  1      OPC=1343  
  nop                           #  52    0x25a1b  1      OPC=1343  
  nop                           #  53    0x25a1c  1      OPC=1343  
  addq %r15, %r11               #  54    0x25a1d  3      OPC=72    
  jmpq %r11                     #  55    0x25a20  3      OPC=928   
  nop                           #  56    0x25a23  1      OPC=1343  
  nop                           #  57    0x25a24  1      OPC=1343  
  nop                           #  58    0x25a25  1      OPC=1343  
  nop                           #  59    0x25a26  1      OPC=1343  
                                                                   
.size pkt, .-pkt

