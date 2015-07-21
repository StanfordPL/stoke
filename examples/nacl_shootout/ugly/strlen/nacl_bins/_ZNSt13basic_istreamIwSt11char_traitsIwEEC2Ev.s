  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev, @function

#! file-offset 0xa6e40
#! rip-offset  0x66e40
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev:                                #        0x66e40  0      OPC=0     
  movl %esi, %esi                                                              #  1     0x66e40  2      OPC=1157  
  subl $0x8, %esp                                                              #  2     0x66e42  3      OPC=2384  
  addq %r15, %rsp                                                              #  3     0x66e45  3      OPC=72    
  movl %edi, %edi                                                              #  4     0x66e48  2      OPC=1157  
  movl %esi, %esi                                                              #  5     0x66e4a  2      OPC=1157  
  movl (%r15,%rsi,1), %eax                                                     #  6     0x66e4c  4      OPC=1156  
  movl %esi, %esi                                                              #  7     0x66e50  2      OPC=1157  
  movl 0x4(%r15,%rsi,1), %edx                                                  #  8     0x66e52  5      OPC=1156  
  xorl %esi, %esi                                                              #  9     0x66e57  2      OPC=3758  
  movl %edi, %edi                                                              #  10    0x66e59  2      OPC=1157  
  movl %eax, (%r15,%rdi,1)                                                     #  11    0x66e5b  4      OPC=1136  
  nop                                                                          #  12    0x66e5f  1      OPC=1343  
  subl $0xc, %eax                                                              #  13    0x66e60  3      OPC=2384  
  movl %eax, %eax                                                              #  14    0x66e63  2      OPC=1157  
  movl (%r15,%rax,1), %eax                                                     #  15    0x66e65  4      OPC=1156  
  movl %edi, %edi                                                              #  16    0x66e69  2      OPC=1157  
  movl $0x0, 0x4(%r15,%rdi,1)                                                  #  17    0x66e6b  9      OPC=1135  
  addl %edi, %eax                                                              #  18    0x66e74  2      OPC=67    
  movl %eax, %eax                                                              #  19    0x66e76  2      OPC=1157  
  movl %edx, (%r15,%rax,1)                                                     #  20    0x66e78  4      OPC=1136  
  nop                                                                          #  21    0x66e7c  1      OPC=1343  
  nop                                                                          #  22    0x66e7d  1      OPC=1343  
  nop                                                                          #  23    0x66e7e  1      OPC=1343  
  nop                                                                          #  24    0x66e7f  1      OPC=1343  
  movl %edi, %edi                                                              #  25    0x66e80  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                                     #  26    0x66e82  4      OPC=1156  
  subl $0xc, %eax                                                              #  27    0x66e86  3      OPC=2384  
  movl %eax, %eax                                                              #  28    0x66e89  2      OPC=1157  
  addl (%r15,%rax,1), %edi                                                     #  29    0x66e8b  4      OPC=66    
  nop                                                                          #  30    0x66e8f  1      OPC=1343  
  nop                                                                          #  31    0x66e90  1      OPC=1343  
  nop                                                                          #  32    0x66e91  1      OPC=1343  
  nop                                                                          #  33    0x66e92  1      OPC=1343  
  nop                                                                          #  34    0x66e93  1      OPC=1343  
  nop                                                                          #  35    0x66e94  1      OPC=1343  
  nop                                                                          #  36    0x66e95  1      OPC=1343  
  nop                                                                          #  37    0x66e96  1      OPC=1343  
  nop                                                                          #  38    0x66e97  1      OPC=1343  
  nop                                                                          #  39    0x66e98  1      OPC=1343  
  nop                                                                          #  40    0x66e99  1      OPC=1343  
  nop                                                                          #  41    0x66e9a  1      OPC=1343  
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E  #  42    0x66e9b  5      OPC=260   
  addl $0x8, %esp                                                              #  43    0x66ea0  3      OPC=65    
  addq %r15, %rsp                                                              #  44    0x66ea3  3      OPC=72    
  popq %r11                                                                    #  45    0x66ea6  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                      #  46    0x66ea8  7      OPC=131   
  nop                                                                          #  47    0x66eaf  1      OPC=1343  
  nop                                                                          #  48    0x66eb0  1      OPC=1343  
  nop                                                                          #  49    0x66eb1  1      OPC=1343  
  nop                                                                          #  50    0x66eb2  1      OPC=1343  
  addq %r15, %r11                                                              #  51    0x66eb3  3      OPC=72    
  jmpq %r11                                                                    #  52    0x66eb6  3      OPC=928   
  nop                                                                          #  53    0x66eb9  1      OPC=1343  
  nop                                                                          #  54    0x66eba  1      OPC=1343  
  nop                                                                          #  55    0x66ebb  1      OPC=1343  
  nop                                                                          #  56    0x66ebc  1      OPC=1343  
  nop                                                                          #  57    0x66ebd  1      OPC=1343  
  nop                                                                          #  58    0x66ebe  1      OPC=1343  
  nop                                                                          #  59    0x66ebf  1      OPC=1343  
  nop                                                                          #  60    0x66ec0  1      OPC=1343  
  nop                                                                          #  61    0x66ec1  1      OPC=1343  
  nop                                                                          #  62    0x66ec2  1      OPC=1343  
  nop                                                                          #  63    0x66ec3  1      OPC=1343  
  nop                                                                          #  64    0x66ec4  1      OPC=1343  
  nop                                                                          #  65    0x66ec5  1      OPC=1343  
  nop                                                                          #  66    0x66ec6  1      OPC=1343  
  movl %eax, %edi                                                              #  67    0x66ec7  2      OPC=1157  
  nop                                                                          #  68    0x66ec9  1      OPC=1343  
  nop                                                                          #  69    0x66eca  1      OPC=1343  
  nop                                                                          #  70    0x66ecb  1      OPC=1343  
  nop                                                                          #  71    0x66ecc  1      OPC=1343  
  nop                                                                          #  72    0x66ecd  1      OPC=1343  
  nop                                                                          #  73    0x66ece  1      OPC=1343  
  nop                                                                          #  74    0x66ecf  1      OPC=1343  
  nop                                                                          #  75    0x66ed0  1      OPC=1343  
  nop                                                                          #  76    0x66ed1  1      OPC=1343  
  nop                                                                          #  77    0x66ed2  1      OPC=1343  
  nop                                                                          #  78    0x66ed3  1      OPC=1343  
  nop                                                                          #  79    0x66ed4  1      OPC=1343  
  nop                                                                          #  80    0x66ed5  1      OPC=1343  
  nop                                                                          #  81    0x66ed6  1      OPC=1343  
  nop                                                                          #  82    0x66ed7  1      OPC=1343  
  nop                                                                          #  83    0x66ed8  1      OPC=1343  
  nop                                                                          #  84    0x66ed9  1      OPC=1343  
  nop                                                                          #  85    0x66eda  1      OPC=1343  
  nop                                                                          #  86    0x66edb  1      OPC=1343  
  nop                                                                          #  87    0x66edc  1      OPC=1343  
  nop                                                                          #  88    0x66edd  1      OPC=1343  
  nop                                                                          #  89    0x66ede  1      OPC=1343  
  nop                                                                          #  90    0x66edf  1      OPC=1343  
  nop                                                                          #  91    0x66ee0  1      OPC=1343  
  nop                                                                          #  92    0x66ee1  1      OPC=1343  
  callq ._Unwind_Resume                                                        #  93    0x66ee2  5      OPC=260   
                                                                                                                  
.size _ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev, .-_ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev

