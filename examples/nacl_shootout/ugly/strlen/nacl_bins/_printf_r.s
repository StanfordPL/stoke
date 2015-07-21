  .text
  .globl _printf_r
  .type _printf_r, @function

#! file-offset 0x162fc0
#! rip-offset  0x122fc0
#! capacity    192 bytes

# Text                              #  Line  RIP       Bytes  Opcode    
._printf_r:                         #        0x122fc0  0      OPC=0     
  subl $0xc8, %esp                  #  1     0x122fc0  6      OPC=2383  
  addq %r15, %rsp                   #  2     0x122fc6  3      OPC=72    
  movl %edi, %edi                   #  3     0x122fc9  2      OPC=1157  
  leal 0xbf(%rsp), %eax             #  4     0x122fcb  7      OPC=1066  
  movq %rdx, 0x20(%rsp)             #  5     0x122fd2  5      OPC=1138  
  movq %rcx, 0x28(%rsp)             #  6     0x122fd7  5      OPC=1138  
  nop                               #  7     0x122fdc  1      OPC=1343  
  nop                               #  8     0x122fdd  1      OPC=1343  
  nop                               #  9     0x122fde  1      OPC=1343  
  nop                               #  10    0x122fdf  1      OPC=1343  
  movq %r8, 0x30(%rsp)              #  11    0x122fe0  5      OPC=1138  
  movq %r9, 0x38(%rsp)              #  12    0x122fe5  5      OPC=1138  
  movl %esi, %edx                   #  13    0x122fea  2      OPC=1157  
  movl %eax, %eax                   #  14    0x122fec  2      OPC=1157  
  movaps %xmm7, -0xf(%r15,%rax,1)   #  15    0x122fee  6      OPC=1188  
  movl %eax, %eax                   #  16    0x122ff4  2      OPC=1157  
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  17    0x122ff6  6      OPC=1188  
  nop                               #  18    0x122ffc  1      OPC=1343  
  nop                               #  19    0x122ffd  1      OPC=1343  
  nop                               #  20    0x122ffe  1      OPC=1343  
  nop                               #  21    0x122fff  1      OPC=1343  
  movl %eax, %eax                   #  22    0x123000  2      OPC=1157  
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  23    0x123002  6      OPC=1188  
  movl %eax, %eax                   #  24    0x123008  2      OPC=1157  
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  25    0x12300a  6      OPC=1188  
  movl %eax, %eax                   #  26    0x123010  2      OPC=1157  
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  27    0x123012  6      OPC=1188  
  movl %eax, %eax                   #  28    0x123018  2      OPC=1157  
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  29    0x12301a  6      OPC=1188  
  movl %eax, %eax                   #  30    0x123020  2      OPC=1157  
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  31    0x123022  6      OPC=1188  
  movl %eax, %eax                   #  32    0x123028  2      OPC=1157  
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  33    0x12302a  6      OPC=1188  
  leal 0xd0(%rsp), %eax             #  34    0x123030  7      OPC=1066  
  movl %edi, %edi                   #  35    0x123037  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %esi       #  36    0x123039  5      OPC=1156  
  movl %esp, %ecx                   #  37    0x12303e  2      OPC=1157  
  movl $0x10, (%rsp)                #  38    0x123040  7      OPC=1135  
  movl $0x30, 0x4(%rsp)             #  39    0x123047  8      OPC=1135  
  movl %eax, 0x8(%rsp)              #  40    0x12304f  4      OPC=1136  
  leal 0x10(%rsp), %eax             #  41    0x123053  4      OPC=1066  
  movl %eax, 0xc(%rsp)              #  42    0x123057  4      OPC=1136  
  callq ._vfprintf_r                #  43    0x12305b  5      OPC=260   
  addl $0xc8, %esp                  #  44    0x123060  6      OPC=64    
  addq %r15, %rsp                   #  45    0x123066  3      OPC=72    
  popq %r11                         #  46    0x123069  2      OPC=1694  
  andl $0xffffffe0, %r11d           #  47    0x12306b  7      OPC=131   
  nop                               #  48    0x123072  1      OPC=1343  
  nop                               #  49    0x123073  1      OPC=1343  
  nop                               #  50    0x123074  1      OPC=1343  
  nop                               #  51    0x123075  1      OPC=1343  
  addq %r15, %r11                   #  52    0x123076  3      OPC=72    
  jmpq %r11                         #  53    0x123079  3      OPC=928   
  nop                               #  54    0x12307c  1      OPC=1343  
  nop                               #  55    0x12307d  1      OPC=1343  
  nop                               #  56    0x12307e  1      OPC=1343  
  nop                               #  57    0x12307f  1      OPC=1343  
  nop                               #  58    0x123080  1      OPC=1343  
  nop                               #  59    0x123081  1      OPC=1343  
  nop                               #  60    0x123082  1      OPC=1343  
  nop                               #  61    0x123083  1      OPC=1343  
  nop                               #  62    0x123084  1      OPC=1343  
  nop                               #  63    0x123085  1      OPC=1343  
  nop                               #  64    0x123086  1      OPC=1343  
                                                                        
.size _printf_r, .-_printf_r

