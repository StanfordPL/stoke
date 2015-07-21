  .text
  .globl persistent_write
  .type persistent_write, @function

#! file-offset 0x61980
#! rip-offset  0x21980
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.persistent_write:             #        0x21980  0      OPC=0     
  subl $0x8, %esp              #  1     0x21980  3      OPC=2384  
  addq %r15, %rsp              #  2     0x21983  3      OPC=72    
  movl %esi, %edi              #  3     0x21986  2      OPC=1157  
  movl %edx, %esi              #  4     0x21988  2      OPC=1157  
  movl %edi, %edi              #  5     0x2198a  2      OPC=1157  
  movl 0x1005782e(%rip), %ecx  #  6     0x2198c  6      OPC=1156  
  movl $0x1, %edx              #  7     0x21992  5      OPC=1154  
  nop                          #  8     0x21997  1      OPC=1343  
  nop                          #  9     0x21998  1      OPC=1343  
  nop                          #  10    0x21999  1      OPC=1343  
  nop                          #  11    0x2199a  1      OPC=1343  
  callq .arrayfile_fwrite      #  12    0x2199b  5      OPC=260   
  testl %eax, %eax             #  13    0x219a0  2      OPC=2436  
  je .L_219c0                  #  14    0x219a2  6      OPC=893   
  nop                          #  15    0x219a8  1      OPC=1343  
  nop                          #  16    0x219a9  1      OPC=1343  
  addl $0x8, %esp              #  17    0x219aa  3      OPC=65    
  addq %r15, %rsp              #  18    0x219ad  3      OPC=72    
  popq %r11                    #  19    0x219b0  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  20    0x219b2  7      OPC=131   
  nop                          #  21    0x219b9  1      OPC=1343  
  nop                          #  22    0x219ba  1      OPC=1343  
  nop                          #  23    0x219bb  1      OPC=1343  
  nop                          #  24    0x219bc  1      OPC=1343  
  addq %r15, %r11              #  25    0x219bd  3      OPC=72    
  jmpq %r11                    #  26    0x219c0  3      OPC=928   
  nop                          #  27    0x219c3  1      OPC=1343  
  nop                          #  28    0x219c4  1      OPC=1343  
  nop                          #  29    0x219c5  1      OPC=1343  
  nop                          #  30    0x219c6  1      OPC=1343  
  nop                          #  31    0x219c7  1      OPC=1343  
  nop                          #  32    0x219c8  1      OPC=1343  
  nop                          #  33    0x219c9  1      OPC=1343  
  nop                          #  34    0x219ca  1      OPC=1343  
  nop                          #  35    0x219cb  1      OPC=1343  
  nop                          #  36    0x219cc  1      OPC=1343  
.L_219c0:                      #        0x219cd  0      OPC=0     
  movl $0x100203d0, %ecx       #  37    0x219cd  5      OPC=1154  
  movl $0x10020450, %edx       #  38    0x219d2  5      OPC=1154  
  movl $0x62, %esi             #  39    0x219d7  5      OPC=1154  
  movl $0x1002038c, %edi       #  40    0x219dc  5      OPC=1154  
  nop                          #  41    0x219e1  1      OPC=1343  
  nop                          #  42    0x219e2  1      OPC=1343  
  nop                          #  43    0x219e3  1      OPC=1343  
  nop                          #  44    0x219e4  1      OPC=1343  
  nop                          #  45    0x219e5  1      OPC=1343  
  nop                          #  46    0x219e6  1      OPC=1343  
  nop                          #  47    0x219e7  1      OPC=1343  
  callq .__assert_func         #  48    0x219e8  5      OPC=260   
                                                                  
.size persistent_write, .-persistent_write

