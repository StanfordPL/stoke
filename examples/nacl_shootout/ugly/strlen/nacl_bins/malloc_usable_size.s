  .text
  .globl malloc_usable_size
  .type malloc_usable_size, @function

#! file-offset 0x150e20
#! rip-offset  0x110e20
#! capacity    96 bytes

# Text                         #  Line  RIP       Bytes  Opcode    
.malloc_usable_size:           #        0x110e20  0      OPC=0     
  movl %edi, %edi              #  1     0x110e20  2      OPC=1157  
  testq %rdi, %rdi             #  2     0x110e22  3      OPC=2438  
  je .L_110e60                 #  3     0x110e25  6      OPC=893   
  nop                          #  4     0x110e2b  1      OPC=1343  
  nop                          #  5     0x110e2c  1      OPC=1343  
  subl $0x8, %edi              #  6     0x110e2d  3      OPC=2384  
  movl %edi, %edi              #  7     0x110e30  2      OPC=1157  
  movl 0x4(%r15,%rdi,1), %eax  #  8     0x110e32  5      OPC=1156  
  movl %eax, %edx              #  9     0x110e37  2      OPC=1157  
  andl $0x3, %edx              #  10    0x110e39  3      OPC=132   
  cmpl $0x1, %edx              #  11    0x110e3c  3      OPC=470   
  je .L_110e60                 #  12    0x110e3f  6      OPC=893   
  nop                          #  13    0x110e45  1      OPC=1343  
  nop                          #  14    0x110e46  1      OPC=1343  
  cmpl $0x1, %edx              #  15    0x110e47  3      OPC=470   
  sbbl %edx, %edx              #  16    0x110e4a  2      OPC=2134  
  andl $0xfffffff8, %eax       #  17    0x110e4c  6      OPC=131   
  nop                          #  18    0x110e52  1      OPC=1343  
  nop                          #  19    0x110e53  1      OPC=1343  
  nop                          #  20    0x110e54  1      OPC=1343  
  andl $0x4, %edx              #  21    0x110e55  3      OPC=132   
  addl $0x4, %edx              #  22    0x110e58  3      OPC=65    
  subl %edx, %eax              #  23    0x110e5b  2      OPC=2386  
  popq %r11                    #  24    0x110e5d  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  25    0x110e5f  7      OPC=131   
  nop                          #  26    0x110e66  1      OPC=1343  
  nop                          #  27    0x110e67  1      OPC=1343  
  nop                          #  28    0x110e68  1      OPC=1343  
  nop                          #  29    0x110e69  1      OPC=1343  
  addq %r15, %r11              #  30    0x110e6a  3      OPC=72    
  jmpq %r11                    #  31    0x110e6d  3      OPC=928   
  nop                          #  32    0x110e70  1      OPC=1343  
  nop                          #  33    0x110e71  1      OPC=1343  
  nop                          #  34    0x110e72  1      OPC=1343  
  nop                          #  35    0x110e73  1      OPC=1343  
  nop                          #  36    0x110e74  1      OPC=1343  
  nop                          #  37    0x110e75  1      OPC=1343  
  nop                          #  38    0x110e76  1      OPC=1343  
  nop                          #  39    0x110e77  1      OPC=1343  
  nop                          #  40    0x110e78  1      OPC=1343  
.L_110e60:                     #        0x110e79  0      OPC=0     
  xorl %eax, %eax              #  41    0x110e79  2      OPC=3758  
  popq %r11                    #  42    0x110e7b  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  43    0x110e7d  7      OPC=131   
  nop                          #  44    0x110e84  1      OPC=1343  
  nop                          #  45    0x110e85  1      OPC=1343  
  nop                          #  46    0x110e86  1      OPC=1343  
  nop                          #  47    0x110e87  1      OPC=1343  
  addq %r15, %r11              #  48    0x110e88  3      OPC=72    
  jmpq %r11                    #  49    0x110e8b  3      OPC=928   
  nop                          #  50    0x110e8e  1      OPC=1343  
  nop                          #  51    0x110e8f  1      OPC=1343  
  nop                          #  52    0x110e90  1      OPC=1343  
  nop                          #  53    0x110e91  1      OPC=1343  
  nop                          #  54    0x110e92  1      OPC=1343  
  nop                          #  55    0x110e93  1      OPC=1343  
  nop                          #  56    0x110e94  1      OPC=1343  
  nop                          #  57    0x110e95  1      OPC=1343  
  nop                          #  58    0x110e96  1      OPC=1343  
  nop                          #  59    0x110e97  1      OPC=1343  
  nop                          #  60    0x110e98  1      OPC=1343  
  nop                          #  61    0x110e99  1      OPC=1343  
  nop                          #  62    0x110e9a  1      OPC=1343  
  nop                          #  63    0x110e9b  1      OPC=1343  
  nop                          #  64    0x110e9c  1      OPC=1343  
  nop                          #  65    0x110e9d  1      OPC=1343  
  nop                          #  66    0x110e9e  1      OPC=1343  
  nop                          #  67    0x110e9f  1      OPC=1343  
                                                                   
.size malloc_usable_size, .-malloc_usable_size

