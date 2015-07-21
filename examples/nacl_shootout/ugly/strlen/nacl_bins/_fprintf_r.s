  .text
  .globl _fprintf_r
  .type _fprintf_r, @function

#! file-offset 0x15ad20
#! rip-offset  0x11ad20
#! capacity    192 bytes

# Text                              #  Line  RIP       Bytes  Opcode    
._fprintf_r:                        #        0x11ad20  0      OPC=0     
  subl $0xc8, %esp                  #  1     0x11ad20  6      OPC=2383  
  addq %r15, %rsp                   #  2     0x11ad26  3      OPC=72    
  movl %edi, %edi                   #  3     0x11ad29  2      OPC=1157  
  movl %esi, %esi                   #  4     0x11ad2b  2      OPC=1157  
  leal 0xbf(%rsp), %eax             #  5     0x11ad2d  7      OPC=1066  
  movq %rcx, 0x28(%rsp)             #  6     0x11ad34  5      OPC=1138  
  movq %r8, 0x30(%rsp)              #  7     0x11ad39  5      OPC=1138  
  xchgw %ax, %ax                    #  8     0x11ad3e  2      OPC=3700  
  movq %r9, 0x38(%rsp)              #  9     0x11ad40  5      OPC=1138  
  movl %esp, %ecx                   #  10    0x11ad45  2      OPC=1157  
  movl %edx, %edx                   #  11    0x11ad47  2      OPC=1157  
  movl %eax, %eax                   #  12    0x11ad49  2      OPC=1157  
  movaps %xmm7, -0xf(%r15,%rax,1)   #  13    0x11ad4b  6      OPC=1188  
  movl %eax, %eax                   #  14    0x11ad51  2      OPC=1157  
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  15    0x11ad53  6      OPC=1188  
  nop                               #  16    0x11ad59  1      OPC=1343  
  nop                               #  17    0x11ad5a  1      OPC=1343  
  nop                               #  18    0x11ad5b  1      OPC=1343  
  nop                               #  19    0x11ad5c  1      OPC=1343  
  nop                               #  20    0x11ad5d  1      OPC=1343  
  nop                               #  21    0x11ad5e  1      OPC=1343  
  nop                               #  22    0x11ad5f  1      OPC=1343  
  movl %eax, %eax                   #  23    0x11ad60  2      OPC=1157  
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  24    0x11ad62  6      OPC=1188  
  movl %eax, %eax                   #  25    0x11ad68  2      OPC=1157  
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  26    0x11ad6a  6      OPC=1188  
  movl %eax, %eax                   #  27    0x11ad70  2      OPC=1157  
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  28    0x11ad72  6      OPC=1188  
  movl %eax, %eax                   #  29    0x11ad78  2      OPC=1157  
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  30    0x11ad7a  6      OPC=1188  
  movl %eax, %eax                   #  31    0x11ad80  2      OPC=1157  
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  32    0x11ad82  6      OPC=1188  
  movl %eax, %eax                   #  33    0x11ad88  2      OPC=1157  
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  34    0x11ad8a  6      OPC=1188  
  leal 0xd0(%rsp), %eax             #  35    0x11ad90  7      OPC=1066  
  movl $0x18, (%rsp)                #  36    0x11ad97  7      OPC=1135  
  xchgw %ax, %ax                    #  37    0x11ad9e  2      OPC=3700  
  movl $0x30, 0x4(%rsp)             #  38    0x11ada0  8      OPC=1135  
  movl %eax, 0x8(%rsp)              #  39    0x11ada8  4      OPC=1136  
  leal 0x10(%rsp), %eax             #  40    0x11adac  4      OPC=1066  
  movl %eax, 0xc(%rsp)              #  41    0x11adb0  4      OPC=1136  
  nop                               #  42    0x11adb4  1      OPC=1343  
  nop                               #  43    0x11adb5  1      OPC=1343  
  nop                               #  44    0x11adb6  1      OPC=1343  
  nop                               #  45    0x11adb7  1      OPC=1343  
  nop                               #  46    0x11adb8  1      OPC=1343  
  nop                               #  47    0x11adb9  1      OPC=1343  
  nop                               #  48    0x11adba  1      OPC=1343  
  callq ._vfprintf_r                #  49    0x11adbb  5      OPC=260   
  addl $0xc8, %esp                  #  50    0x11adc0  6      OPC=64    
  addq %r15, %rsp                   #  51    0x11adc6  3      OPC=72    
  popq %r11                         #  52    0x11adc9  2      OPC=1694  
  andl $0xffffffe0, %r11d           #  53    0x11adcb  7      OPC=131   
  nop                               #  54    0x11add2  1      OPC=1343  
  nop                               #  55    0x11add3  1      OPC=1343  
  nop                               #  56    0x11add4  1      OPC=1343  
  nop                               #  57    0x11add5  1      OPC=1343  
  addq %r15, %r11                   #  58    0x11add6  3      OPC=72    
  jmpq %r11                         #  59    0x11add9  3      OPC=928   
  nop                               #  60    0x11addc  1      OPC=1343  
  nop                               #  61    0x11addd  1      OPC=1343  
  nop                               #  62    0x11adde  1      OPC=1343  
  nop                               #  63    0x11addf  1      OPC=1343  
  nop                               #  64    0x11ade0  1      OPC=1343  
  nop                               #  65    0x11ade1  1      OPC=1343  
  nop                               #  66    0x11ade2  1      OPC=1343  
  nop                               #  67    0x11ade3  1      OPC=1343  
  nop                               #  68    0x11ade4  1      OPC=1343  
  nop                               #  69    0x11ade5  1      OPC=1343  
  nop                               #  70    0x11ade6  1      OPC=1343  
                                                                        
.size _fprintf_r, .-_fprintf_r

