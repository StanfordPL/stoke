  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc, @function

#! file-offset 0xe8ea0
#! rip-offset  0xa8ea0
#! capacity    128 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode    
._ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc:  #        0xa8ea0  0      OPC=0     
  movl %edi, %edi                                          #  1     0xa8ea0  2      OPC=1157  
  movl %edi, %edi                                          #  2     0xa8ea2  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax                              #  3     0xa8ea4  5      OPC=1156  
  movl %edi, %edi                                          #  4     0xa8ea9  2      OPC=1157  
  cmpl %eax, 0x4(%r15,%rdi,1)                              #  5     0xa8eab  5      OPC=457   
  jb .L_a8ee0                                              #  6     0xa8eb0  6      OPC=875   
  nop                                                      #  7     0xa8eb6  1      OPC=1343  
  nop                                                      #  8     0xa8eb7  1      OPC=1343  
  nop                                                      #  9     0xa8eb8  1      OPC=1343  
  nop                                                      #  10    0xa8eb9  1      OPC=1343  
  nop                                                      #  11    0xa8eba  1      OPC=1343  
  nop                                                      #  12    0xa8ebb  1      OPC=1343  
  nop                                                      #  13    0xa8ebc  1      OPC=1343  
  nop                                                      #  14    0xa8ebd  1      OPC=1343  
  nop                                                      #  15    0xa8ebe  1      OPC=1343  
  nop                                                      #  16    0xa8ebf  1      OPC=1343  
  nop                                                      #  17    0xa8ec0  1      OPC=1343  
  nop                                                      #  18    0xa8ec1  1      OPC=1343  
  nop                                                      #  19    0xa8ec2  1      OPC=1343  
  nop                                                      #  20    0xa8ec3  1      OPC=1343  
  nop                                                      #  21    0xa8ec4  1      OPC=1343  
  nop                                                      #  22    0xa8ec5  1      OPC=1343  
.L_a8ec0:                                                  #        0xa8ec6  0      OPC=0     
  movl %edi, %edi                                          #  23    0xa8ec6  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                 #  24    0xa8ec8  4      OPC=1156  
  movzbl %sil, %esi                                        #  25    0xa8ecc  4      OPC=1304  
  movl %eax, %eax                                          #  26    0xa8ed0  2      OPC=1157  
  movl 0x2c(%r15,%rax,1), %eax                             #  27    0xa8ed2  5      OPC=1156  
  andl $0xffffffe0, %eax                                   #  28    0xa8ed7  6      OPC=131   
  nop                                                      #  29    0xa8edd  1      OPC=1343  
  nop                                                      #  30    0xa8ede  1      OPC=1343  
  nop                                                      #  31    0xa8edf  1      OPC=1343  
  addq %r15, %rax                                          #  32    0xa8ee0  3      OPC=72    
  jmpq %rax                                                #  33    0xa8ee3  2      OPC=928   
  nop                                                      #  34    0xa8ee5  1      OPC=1343  
  nop                                                      #  35    0xa8ee6  1      OPC=1343  
  nop                                                      #  36    0xa8ee7  1      OPC=1343  
  nop                                                      #  37    0xa8ee8  1      OPC=1343  
  nop                                                      #  38    0xa8ee9  1      OPC=1343  
  nop                                                      #  39    0xa8eea  1      OPC=1343  
  nop                                                      #  40    0xa8eeb  1      OPC=1343  
.L_a8ee0:                                                  #        0xa8eec  0      OPC=0     
  subl $0x1, %eax                                          #  41    0xa8eec  3      OPC=2384  
  movl %eax, %eax                                          #  42    0xa8eef  2      OPC=1157  
  cmpb (%r15,%rax,1), %sil                                 #  43    0xa8ef1  4      OPC=480   
  jne .L_a8ec0                                             #  44    0xa8ef5  6      OPC=963   
  nop                                                      #  45    0xa8efb  1      OPC=1343  
  nop                                                      #  46    0xa8efc  1      OPC=1343  
  popq %r11                                                #  47    0xa8efd  2      OPC=1694  
  movl %edi, %edi                                          #  48    0xa8eff  2      OPC=1157  
  movl %eax, 0x8(%r15,%rdi,1)                              #  49    0xa8f01  5      OPC=1136  
  movl %eax, %eax                                          #  50    0xa8f06  2      OPC=1157  
  movzbl (%r15,%rax,1), %eax                               #  51    0xa8f08  5      OPC=1302  
  nop                                                      #  52    0xa8f0d  1      OPC=1343  
  nop                                                      #  53    0xa8f0e  1      OPC=1343  
  nop                                                      #  54    0xa8f0f  1      OPC=1343  
  nop                                                      #  55    0xa8f10  1      OPC=1343  
  nop                                                      #  56    0xa8f11  1      OPC=1343  
  andl $0xffffffe0, %r11d                                  #  57    0xa8f12  7      OPC=131   
  nop                                                      #  58    0xa8f19  1      OPC=1343  
  nop                                                      #  59    0xa8f1a  1      OPC=1343  
  nop                                                      #  60    0xa8f1b  1      OPC=1343  
  nop                                                      #  61    0xa8f1c  1      OPC=1343  
  addq %r15, %r11                                          #  62    0xa8f1d  3      OPC=72    
  jmpq %r11                                                #  63    0xa8f20  3      OPC=928   
  nop                                                      #  64    0xa8f23  1      OPC=1343  
  nop                                                      #  65    0xa8f24  1      OPC=1343  
  nop                                                      #  66    0xa8f25  1      OPC=1343  
  nop                                                      #  67    0xa8f26  1      OPC=1343  
  nop                                                      #  68    0xa8f27  1      OPC=1343  
  nop                                                      #  69    0xa8f28  1      OPC=1343  
  nop                                                      #  70    0xa8f29  1      OPC=1343  
  nop                                                      #  71    0xa8f2a  1      OPC=1343  
  nop                                                      #  72    0xa8f2b  1      OPC=1343  
  nop                                                      #  73    0xa8f2c  1      OPC=1343  
  nop                                                      #  74    0xa8f2d  1      OPC=1343  
  nop                                                      #  75    0xa8f2e  1      OPC=1343  
  nop                                                      #  76    0xa8f2f  1      OPC=1343  
  nop                                                      #  77    0xa8f30  1      OPC=1343  
  nop                                                      #  78    0xa8f31  1      OPC=1343  
  nop                                                      #  79    0xa8f32  1      OPC=1343  
  nop                                                      #  80    0xa8f33  1      OPC=1343  
  nop                                                      #  81    0xa8f34  1      OPC=1343  
  nop                                                      #  82    0xa8f35  1      OPC=1343  
  nop                                                      #  83    0xa8f36  1      OPC=1343  
  nop                                                      #  84    0xa8f37  1      OPC=1343  
  nop                                                      #  85    0xa8f38  1      OPC=1343  
                                                                                              
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE9sputbackcEc

