  .text
  .globl fgetwc
  .type fgetwc, @function

#! file-offset 0x186ae0
#! rip-offset  0x146ae0
#! capacity    128 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.fgetwc:                        #        0x146ae0  0      OPC=0     
  movq %rbx, -0x10(%rsp)        #  1     0x146ae0  5      OPC=1138  
  movq %r12, -0x8(%rsp)         #  2     0x146ae5  5      OPC=1138  
  subl $0x18, %esp              #  3     0x146aea  3      OPC=2384  
  addq %r15, %rsp               #  4     0x146aed  3      OPC=72    
  movl %edi, %r12d              #  5     0x146af0  3      OPC=1157  
  nop                           #  6     0x146af3  1      OPC=1343  
  nop                           #  7     0x146af4  1      OPC=1343  
  nop                           #  8     0x146af5  1      OPC=1343  
  nop                           #  9     0x146af6  1      OPC=1343  
  nop                           #  10    0x146af7  1      OPC=1343  
  nop                           #  11    0x146af8  1      OPC=1343  
  nop                           #  12    0x146af9  1      OPC=1343  
  nop                           #  13    0x146afa  1      OPC=1343  
  callq .__nacl_read_tp         #  14    0x146afb  5      OPC=260   
  leaq -0x480(%rax), %rax       #  15    0x146b00  7      OPC=1069  
  movl %eax, %eax               #  16    0x146b07  2      OPC=1157  
  movl (%r15,%rax,1), %ebx      #  17    0x146b09  4      OPC=1156  
  testq %rbx, %rbx              #  18    0x146b0d  3      OPC=2438  
  je .L_146b40                  #  19    0x146b10  6      OPC=893   
  nop                           #  20    0x146b16  1      OPC=1343  
  nop                           #  21    0x146b17  1      OPC=1343  
  movl %ebx, %ebx               #  22    0x146b18  2      OPC=1157  
  movl 0x38(%r15,%rbx,1), %edx  #  23    0x146b1a  5      OPC=1156  
  testl %edx, %edx              #  24    0x146b1f  2      OPC=2436  
  nop                           #  25    0x146b21  1      OPC=1343  
  nop                           #  26    0x146b22  1      OPC=1343  
  nop                           #  27    0x146b23  1      OPC=1343  
  nop                           #  28    0x146b24  1      OPC=1343  
  nop                           #  29    0x146b25  1      OPC=1343  
  jne .L_146b40                 #  30    0x146b26  6      OPC=963   
  nop                           #  31    0x146b2c  1      OPC=1343  
  nop                           #  32    0x146b2d  1      OPC=1343  
  movl %ebx, %edi               #  33    0x146b2e  2      OPC=1157  
  nop                           #  34    0x146b30  1      OPC=1343  
  nop                           #  35    0x146b31  1      OPC=1343  
  nop                           #  36    0x146b32  1      OPC=1343  
  nop                           #  37    0x146b33  1      OPC=1343  
  nop                           #  38    0x146b34  1      OPC=1343  
  nop                           #  39    0x146b35  1      OPC=1343  
  nop                           #  40    0x146b36  1      OPC=1343  
  nop                           #  41    0x146b37  1      OPC=1343  
  nop                           #  42    0x146b38  1      OPC=1343  
  nop                           #  43    0x146b39  1      OPC=1343  
  nop                           #  44    0x146b3a  1      OPC=1343  
  nop                           #  45    0x146b3b  1      OPC=1343  
  nop                           #  46    0x146b3c  1      OPC=1343  
  nop                           #  47    0x146b3d  1      OPC=1343  
  nop                           #  48    0x146b3e  1      OPC=1343  
  nop                           #  49    0x146b3f  1      OPC=1343  
  nop                           #  50    0x146b40  1      OPC=1343  
  nop                           #  51    0x146b41  1      OPC=1343  
  nop                           #  52    0x146b42  1      OPC=1343  
  nop                           #  53    0x146b43  1      OPC=1343  
  nop                           #  54    0x146b44  1      OPC=1343  
  nop                           #  55    0x146b45  1      OPC=1343  
  nop                           #  56    0x146b46  1      OPC=1343  
  callq .__sinit                #  57    0x146b47  5      OPC=260   
.L_146b40:                      #        0x146b4c  0      OPC=0     
  movl %r12d, %esi              #  58    0x146b4c  3      OPC=1157  
  movl %ebx, %edi               #  59    0x146b4f  2      OPC=1157  
  movq 0x10(%rsp), %r12         #  60    0x146b51  5      OPC=1161  
  movq 0x8(%rsp), %rbx          #  61    0x146b56  5      OPC=1161  
  addl $0x18, %esp              #  62    0x146b5b  3      OPC=65    
  addq %r15, %rsp               #  63    0x146b5e  3      OPC=72    
  jmpq ._fgetwc_r               #  64    0x146b61  5      OPC=930   
  nop                           #  65    0x146b66  1      OPC=1343  
  nop                           #  66    0x146b67  1      OPC=1343  
  nop                           #  67    0x146b68  1      OPC=1343  
  nop                           #  68    0x146b69  1      OPC=1343  
  nop                           #  69    0x146b6a  1      OPC=1343  
  nop                           #  70    0x146b6b  1      OPC=1343  
                                                                    
.size fgetwc, .-fgetwc

