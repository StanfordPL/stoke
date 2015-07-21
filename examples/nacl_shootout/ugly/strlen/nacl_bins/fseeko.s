  .text
  .globl fseeko
  .type fseeko, @function

#! file-offset 0x15c380
#! rip-offset  0x11c380
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.fseeko:                    #        0x11c380  0      OPC=0     
  movq %rbx, -0x18(%rsp)    #  1     0x11c380  5      OPC=1138  
  movq %r12, -0x10(%rsp)    #  2     0x11c385  5      OPC=1138  
  movl %edi, %ebx           #  3     0x11c38a  2      OPC=1157  
  movq %r13, -0x8(%rsp)     #  4     0x11c38c  5      OPC=1138  
  subl $0x18, %esp          #  5     0x11c391  3      OPC=2384  
  addq %r15, %rsp           #  6     0x11c394  3      OPC=72    
  movq %rsi, %r12           #  7     0x11c397  3      OPC=1162  
  movl %edx, %r13d          #  8     0x11c39a  3      OPC=1157  
  nop                       #  9     0x11c39d  1      OPC=1343  
  nop                       #  10    0x11c39e  1      OPC=1343  
  nop                       #  11    0x11c39f  1      OPC=1343  
  nop                       #  12    0x11c3a0  1      OPC=1343  
  nop                       #  13    0x11c3a1  1      OPC=1343  
  nop                       #  14    0x11c3a2  1      OPC=1343  
  nop                       #  15    0x11c3a3  1      OPC=1343  
  nop                       #  16    0x11c3a4  1      OPC=1343  
  nop                       #  17    0x11c3a5  1      OPC=1343  
  nop                       #  18    0x11c3a6  1      OPC=1343  
  nop                       #  19    0x11c3a7  1      OPC=1343  
  nop                       #  20    0x11c3a8  1      OPC=1343  
  nop                       #  21    0x11c3a9  1      OPC=1343  
  nop                       #  22    0x11c3aa  1      OPC=1343  
  nop                       #  23    0x11c3ab  1      OPC=1343  
  nop                       #  24    0x11c3ac  1      OPC=1343  
  nop                       #  25    0x11c3ad  1      OPC=1343  
  nop                       #  26    0x11c3ae  1      OPC=1343  
  nop                       #  27    0x11c3af  1      OPC=1343  
  nop                       #  28    0x11c3b0  1      OPC=1343  
  nop                       #  29    0x11c3b1  1      OPC=1343  
  nop                       #  30    0x11c3b2  1      OPC=1343  
  nop                       #  31    0x11c3b3  1      OPC=1343  
  nop                       #  32    0x11c3b4  1      OPC=1343  
  nop                       #  33    0x11c3b5  1      OPC=1343  
  nop                       #  34    0x11c3b6  1      OPC=1343  
  nop                       #  35    0x11c3b7  1      OPC=1343  
  nop                       #  36    0x11c3b8  1      OPC=1343  
  nop                       #  37    0x11c3b9  1      OPC=1343  
  nop                       #  38    0x11c3ba  1      OPC=1343  
  callq .__nacl_read_tp     #  39    0x11c3bb  5      OPC=260   
  leaq -0x480(%rax), %rax   #  40    0x11c3c0  7      OPC=1069  
  movl %r13d, %ecx          #  41    0x11c3c7  3      OPC=1157  
  movq %r12, %rdx           #  42    0x11c3ca  3      OPC=1162  
  movl %ebx, %esi           #  43    0x11c3cd  2      OPC=1157  
  movq 0x8(%rsp), %r12      #  44    0x11c3cf  5      OPC=1161  
  movq (%rsp), %rbx         #  45    0x11c3d4  4      OPC=1161  
  movq 0x10(%rsp), %r13     #  46    0x11c3d8  5      OPC=1161  
  nop                       #  47    0x11c3dd  1      OPC=1343  
  nop                       #  48    0x11c3de  1      OPC=1343  
  nop                       #  49    0x11c3df  1      OPC=1343  
  movl %eax, %eax           #  50    0x11c3e0  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  51    0x11c3e2  4      OPC=1156  
  addl $0x18, %esp          #  52    0x11c3e6  3      OPC=65    
  addq %r15, %rsp           #  53    0x11c3e9  3      OPC=72    
  jmpq ._fseeko_r           #  54    0x11c3ec  5      OPC=930   
  nop                       #  55    0x11c3f1  1      OPC=1343  
  nop                       #  56    0x11c3f2  1      OPC=1343  
  nop                       #  57    0x11c3f3  1      OPC=1343  
  nop                       #  58    0x11c3f4  1      OPC=1343  
  nop                       #  59    0x11c3f5  1      OPC=1343  
  nop                       #  60    0x11c3f6  1      OPC=1343  
  nop                       #  61    0x11c3f7  1      OPC=1343  
  nop                       #  62    0x11c3f8  1      OPC=1343  
  nop                       #  63    0x11c3f9  1      OPC=1343  
  nop                       #  64    0x11c3fa  1      OPC=1343  
  nop                       #  65    0x11c3fb  1      OPC=1343  
  nop                       #  66    0x11c3fc  1      OPC=1343  
  nop                       #  67    0x11c3fd  1      OPC=1343  
  nop                       #  68    0x11c3fe  1      OPC=1343  
  nop                       #  69    0x11c3ff  1      OPC=1343  
                                                                
.size fseeko, .-fseeko

