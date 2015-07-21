  .text
  .globl _ZNSiD2Ev
  .type _ZNSiD2Ev, @function

#! file-offset 0xa6840
#! rip-offset  0x66840
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
._ZNSiD2Ev:                    #        0x66840  0      OPC=0     
  movl %esi, %esi              #  1     0x66840  2      OPC=1157  
  movl %edi, %edi              #  2     0x66842  2      OPC=1157  
  movl %esi, %esi              #  3     0x66844  2      OPC=1157  
  movl (%r15,%rsi,1), %eax     #  4     0x66846  4      OPC=1156  
  movl %esi, %esi              #  5     0x6684a  2      OPC=1157  
  movl 0x4(%r15,%rsi,1), %edx  #  6     0x6684c  5      OPC=1156  
  movl %edi, %edi              #  7     0x66851  2      OPC=1157  
  movl %eax, (%r15,%rdi,1)     #  8     0x66853  4      OPC=1136  
  subl $0xc, %eax              #  9     0x66857  3      OPC=2384  
  movl %eax, %eax              #  10    0x6685a  2      OPC=1157  
  movl (%r15,%rax,1), %eax     #  11    0x6685c  4      OPC=1156  
  movl %edi, %edi              #  12    0x66860  2      OPC=1157  
  movl $0x0, 0x4(%r15,%rdi,1)  #  13    0x66862  9      OPC=1135  
  addl %edi, %eax              #  14    0x6686b  2      OPC=67    
  movl %eax, %eax              #  15    0x6686d  2      OPC=1157  
  movl %edx, (%r15,%rax,1)     #  16    0x6686f  4      OPC=1136  
  popq %r11                    #  17    0x66873  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  18    0x66875  7      OPC=131   
  nop                          #  19    0x6687c  1      OPC=1343  
  nop                          #  20    0x6687d  1      OPC=1343  
  nop                          #  21    0x6687e  1      OPC=1343  
  nop                          #  22    0x6687f  1      OPC=1343  
  addq %r15, %r11              #  23    0x66880  3      OPC=72    
  jmpq %r11                    #  24    0x66883  3      OPC=928   
  nop                          #  25    0x66886  1      OPC=1343  
                                                                  
.size _ZNSiD2Ev, .-_ZNSiD2Ev

