  .text
  .globl _fiprintf_r
  .type _fiprintf_r, @function

#! file-offset 0x15a700
#! rip-offset  0x11a700
#! capacity    192 bytes

# Text                              #  Line  RIP       Bytes  Opcode    
._fiprintf_r:                       #        0x11a700  0      OPC=0     
  subl $0xc8, %esp                  #  1     0x11a700  6      OPC=2383  
  addq %r15, %rsp                   #  2     0x11a706  3      OPC=72    
  movl %edi, %edi                   #  3     0x11a709  2      OPC=1157  
  movl %esi, %esi                   #  4     0x11a70b  2      OPC=1157  
  leal 0xbf(%rsp), %eax             #  5     0x11a70d  7      OPC=1066  
  movq %rcx, 0x28(%rsp)             #  6     0x11a714  5      OPC=1138  
  movq %r8, 0x30(%rsp)              #  7     0x11a719  5      OPC=1138  
  xchgw %ax, %ax                    #  8     0x11a71e  2      OPC=3700  
  movq %r9, 0x38(%rsp)              #  9     0x11a720  5      OPC=1138  
  movl %esp, %ecx                   #  10    0x11a725  2      OPC=1157  
  movl %edx, %edx                   #  11    0x11a727  2      OPC=1157  
  movl %eax, %eax                   #  12    0x11a729  2      OPC=1157  
  movaps %xmm7, -0xf(%r15,%rax,1)   #  13    0x11a72b  6      OPC=1188  
  movl %eax, %eax                   #  14    0x11a731  2      OPC=1157  
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  15    0x11a733  6      OPC=1188  
  nop                               #  16    0x11a739  1      OPC=1343  
  nop                               #  17    0x11a73a  1      OPC=1343  
  nop                               #  18    0x11a73b  1      OPC=1343  
  nop                               #  19    0x11a73c  1      OPC=1343  
  nop                               #  20    0x11a73d  1      OPC=1343  
  nop                               #  21    0x11a73e  1      OPC=1343  
  nop                               #  22    0x11a73f  1      OPC=1343  
  movl %eax, %eax                   #  23    0x11a740  2      OPC=1157  
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  24    0x11a742  6      OPC=1188  
  movl %eax, %eax                   #  25    0x11a748  2      OPC=1157  
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  26    0x11a74a  6      OPC=1188  
  movl %eax, %eax                   #  27    0x11a750  2      OPC=1157  
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  28    0x11a752  6      OPC=1188  
  movl %eax, %eax                   #  29    0x11a758  2      OPC=1157  
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  30    0x11a75a  6      OPC=1188  
  movl %eax, %eax                   #  31    0x11a760  2      OPC=1157  
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  32    0x11a762  6      OPC=1188  
  movl %eax, %eax                   #  33    0x11a768  2      OPC=1157  
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  34    0x11a76a  6      OPC=1188  
  leal 0xd0(%rsp), %eax             #  35    0x11a770  7      OPC=1066  
  movl $0x18, (%rsp)                #  36    0x11a777  7      OPC=1135  
  xchgw %ax, %ax                    #  37    0x11a77e  2      OPC=3700  
  movl $0x30, 0x4(%rsp)             #  38    0x11a780  8      OPC=1135  
  movl %eax, 0x8(%rsp)              #  39    0x11a788  4      OPC=1136  
  leal 0x10(%rsp), %eax             #  40    0x11a78c  4      OPC=1066  
  movl %eax, 0xc(%rsp)              #  41    0x11a790  4      OPC=1136  
  nop                               #  42    0x11a794  1      OPC=1343  
  nop                               #  43    0x11a795  1      OPC=1343  
  nop                               #  44    0x11a796  1      OPC=1343  
  nop                               #  45    0x11a797  1      OPC=1343  
  nop                               #  46    0x11a798  1      OPC=1343  
  nop                               #  47    0x11a799  1      OPC=1343  
  nop                               #  48    0x11a79a  1      OPC=1343  
  callq ._vfiprintf_r               #  49    0x11a79b  5      OPC=260   
  addl $0xc8, %esp                  #  50    0x11a7a0  6      OPC=64    
  addq %r15, %rsp                   #  51    0x11a7a6  3      OPC=72    
  popq %r11                         #  52    0x11a7a9  2      OPC=1694  
  andl $0xffffffe0, %r11d           #  53    0x11a7ab  7      OPC=131   
  nop                               #  54    0x11a7b2  1      OPC=1343  
  nop                               #  55    0x11a7b3  1      OPC=1343  
  nop                               #  56    0x11a7b4  1      OPC=1343  
  nop                               #  57    0x11a7b5  1      OPC=1343  
  addq %r15, %r11                   #  58    0x11a7b6  3      OPC=72    
  jmpq %r11                         #  59    0x11a7b9  3      OPC=928   
  nop                               #  60    0x11a7bc  1      OPC=1343  
  nop                               #  61    0x11a7bd  1      OPC=1343  
  nop                               #  62    0x11a7be  1      OPC=1343  
  nop                               #  63    0x11a7bf  1      OPC=1343  
  nop                               #  64    0x11a7c0  1      OPC=1343  
  nop                               #  65    0x11a7c1  1      OPC=1343  
  nop                               #  66    0x11a7c2  1      OPC=1343  
  nop                               #  67    0x11a7c3  1      OPC=1343  
  nop                               #  68    0x11a7c4  1      OPC=1343  
  nop                               #  69    0x11a7c5  1      OPC=1343  
  nop                               #  70    0x11a7c6  1      OPC=1343  
                                                                        
.size _fiprintf_r, .-_fiprintf_r

