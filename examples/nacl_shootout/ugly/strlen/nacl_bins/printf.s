  .text
  .globl printf
  .type printf, @function

#! file-offset 0x162ee0
#! rip-offset  0x122ee0
#! capacity    224 bytes

# Text                              #  Line  RIP       Bytes  Opcode    
.printf:                            #        0x122ee0  0      OPC=0     
  pushq %rbx                        #  1     0x122ee0  1      OPC=1861  
  movl %edi, %ebx                   #  2     0x122ee1  2      OPC=1157  
  subl $0xc0, %esp                  #  3     0x122ee3  6      OPC=2383  
  addq %r15, %rsp                   #  4     0x122ee9  3      OPC=72    
  leal 0xbf(%rsp), %eax             #  5     0x122eec  7      OPC=1066  
  movq %rsi, 0x18(%rsp)             #  6     0x122ef3  5      OPC=1138  
  movq %rdx, 0x20(%rsp)             #  7     0x122ef8  5      OPC=1138  
  nop                               #  8     0x122efd  1      OPC=1343  
  nop                               #  9     0x122efe  1      OPC=1343  
  nop                               #  10    0x122eff  1      OPC=1343  
  movq %rcx, 0x28(%rsp)             #  11    0x122f00  5      OPC=1138  
  movq %r8, 0x30(%rsp)              #  12    0x122f05  5      OPC=1138  
  movq %r9, 0x38(%rsp)              #  13    0x122f0a  5      OPC=1138  
  movl %eax, %eax                   #  14    0x122f0f  2      OPC=1157  
  movaps %xmm7, -0xf(%r15,%rax,1)   #  15    0x122f11  6      OPC=1188  
  movl %eax, %eax                   #  16    0x122f17  2      OPC=1157  
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  17    0x122f19  6      OPC=1188  
  nop                               #  18    0x122f1f  1      OPC=1343  
  movl %eax, %eax                   #  19    0x122f20  2      OPC=1157  
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  20    0x122f22  6      OPC=1188  
  movl %eax, %eax                   #  21    0x122f28  2      OPC=1157  
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  22    0x122f2a  6      OPC=1188  
  movl %eax, %eax                   #  23    0x122f30  2      OPC=1157  
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  24    0x122f32  6      OPC=1188  
  movl %eax, %eax                   #  25    0x122f38  2      OPC=1157  
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  26    0x122f3a  6      OPC=1188  
  movl %eax, %eax                   #  27    0x122f40  2      OPC=1157  
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  28    0x122f42  6      OPC=1188  
  movl %eax, %eax                   #  29    0x122f48  2      OPC=1157  
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  30    0x122f4a  6      OPC=1188  
  nop                               #  31    0x122f50  1      OPC=1343  
  nop                               #  32    0x122f51  1      OPC=1343  
  nop                               #  33    0x122f52  1      OPC=1343  
  nop                               #  34    0x122f53  1      OPC=1343  
  nop                               #  35    0x122f54  1      OPC=1343  
  nop                               #  36    0x122f55  1      OPC=1343  
  nop                               #  37    0x122f56  1      OPC=1343  
  nop                               #  38    0x122f57  1      OPC=1343  
  nop                               #  39    0x122f58  1      OPC=1343  
  nop                               #  40    0x122f59  1      OPC=1343  
  nop                               #  41    0x122f5a  1      OPC=1343  
  callq .__nacl_read_tp             #  42    0x122f5b  5      OPC=260   
  leaq -0x480(%rax), %rax           #  43    0x122f60  7      OPC=1069  
  movl %esp, %ecx                   #  44    0x122f67  2      OPC=1157  
  movl %ebx, %edx                   #  45    0x122f69  2      OPC=1157  
  movl $0x8, (%rsp)                 #  46    0x122f6b  7      OPC=1135  
  movl $0x30, 0x4(%rsp)             #  47    0x122f72  8      OPC=1135  
  movl %eax, %eax                   #  48    0x122f7a  2      OPC=1157  
  movl (%r15,%rax,1), %edi          #  49    0x122f7c  4      OPC=1156  
  leal 0xd0(%rsp), %eax             #  50    0x122f80  7      OPC=1066  
  movl %eax, 0x8(%rsp)              #  51    0x122f87  4      OPC=1136  
  leal 0x10(%rsp), %eax             #  52    0x122f8b  4      OPC=1066  
  movl %edi, %edi                   #  53    0x122f8f  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %esi       #  54    0x122f91  5      OPC=1156  
  movl %eax, 0xc(%rsp)              #  55    0x122f96  4      OPC=1136  
  nop                               #  56    0x122f9a  1      OPC=1343  
  callq ._vfprintf_r                #  57    0x122f9b  5      OPC=260   
  addl $0xc0, %esp                  #  58    0x122fa0  6      OPC=64    
  addq %r15, %rsp                   #  59    0x122fa6  3      OPC=72    
  popq %rbx                         #  60    0x122fa9  1      OPC=1694  
  popq %r11                         #  61    0x122faa  2      OPC=1694  
  andl $0xffffffe0, %r11d           #  62    0x122fac  7      OPC=131   
  nop                               #  63    0x122fb3  1      OPC=1343  
  nop                               #  64    0x122fb4  1      OPC=1343  
  nop                               #  65    0x122fb5  1      OPC=1343  
  nop                               #  66    0x122fb6  1      OPC=1343  
  addq %r15, %r11                   #  67    0x122fb7  3      OPC=72    
  jmpq %r11                         #  68    0x122fba  3      OPC=928   
  nop                               #  69    0x122fbd  1      OPC=1343  
  nop                               #  70    0x122fbe  1      OPC=1343  
  nop                               #  71    0x122fbf  1      OPC=1343  
  nop                               #  72    0x122fc0  1      OPC=1343  
  nop                               #  73    0x122fc1  1      OPC=1343  
  nop                               #  74    0x122fc2  1      OPC=1343  
  nop                               #  75    0x122fc3  1      OPC=1343  
  nop                               #  76    0x122fc4  1      OPC=1343  
  nop                               #  77    0x122fc5  1      OPC=1343  
  nop                               #  78    0x122fc6  1      OPC=1343  
                                                                        
.size printf, .-printf

