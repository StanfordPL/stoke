  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E, @function

#! file-offset 0xa6ee0
#! rip-offset  0x66ee0
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E:       #        0x66ee0  0      OPC=0     
  movl %esi, %eax                                                              #  1     0x66ee0  2      OPC=1157  
  subl $0x8, %esp                                                              #  2     0x66ee2  3      OPC=2384  
  addq %r15, %rsp                                                              #  3     0x66ee5  3      OPC=72    
  movl %edi, %edi                                                              #  4     0x66ee8  2      OPC=1157  
  movl %eax, %eax                                                              #  5     0x66eea  2      OPC=1157  
  movl (%r15,%rax,1), %ecx                                                     #  6     0x66eec  4      OPC=1156  
  movl %edx, %esi                                                              #  7     0x66ef0  2      OPC=1157  
  movl %eax, %eax                                                              #  8     0x66ef2  2      OPC=1157  
  movl 0x4(%r15,%rax,1), %eax                                                  #  9     0x66ef4  5      OPC=1156  
  movl %edi, %edi                                                              #  10    0x66ef9  2      OPC=1157  
  movl %ecx, (%r15,%rdi,1)                                                     #  11    0x66efb  4      OPC=1136  
  nop                                                                          #  12    0x66eff  1      OPC=1343  
  subl $0xc, %ecx                                                              #  13    0x66f00  3      OPC=2384  
  movl %ecx, %ecx                                                              #  14    0x66f03  2      OPC=1157  
  movl (%r15,%rcx,1), %edx                                                     #  15    0x66f05  4      OPC=1156  
  movl %edi, %edi                                                              #  16    0x66f09  2      OPC=1157  
  movl $0x0, 0x4(%r15,%rdi,1)                                                  #  17    0x66f0b  9      OPC=1135  
  addl %edi, %edx                                                              #  18    0x66f14  2      OPC=67    
  movl %edx, %edx                                                              #  19    0x66f16  2      OPC=1157  
  movl %eax, (%r15,%rdx,1)                                                     #  20    0x66f18  4      OPC=1136  
  nop                                                                          #  21    0x66f1c  1      OPC=1343  
  nop                                                                          #  22    0x66f1d  1      OPC=1343  
  nop                                                                          #  23    0x66f1e  1      OPC=1343  
  nop                                                                          #  24    0x66f1f  1      OPC=1343  
  movl %edi, %edi                                                              #  25    0x66f20  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                                     #  26    0x66f22  4      OPC=1156  
  subl $0xc, %eax                                                              #  27    0x66f26  3      OPC=2384  
  movl %eax, %eax                                                              #  28    0x66f29  2      OPC=1157  
  addl (%r15,%rax,1), %edi                                                     #  29    0x66f2b  4      OPC=66    
  nop                                                                          #  30    0x66f2f  1      OPC=1343  
  nop                                                                          #  31    0x66f30  1      OPC=1343  
  nop                                                                          #  32    0x66f31  1      OPC=1343  
  nop                                                                          #  33    0x66f32  1      OPC=1343  
  nop                                                                          #  34    0x66f33  1      OPC=1343  
  nop                                                                          #  35    0x66f34  1      OPC=1343  
  nop                                                                          #  36    0x66f35  1      OPC=1343  
  nop                                                                          #  37    0x66f36  1      OPC=1343  
  nop                                                                          #  38    0x66f37  1      OPC=1343  
  nop                                                                          #  39    0x66f38  1      OPC=1343  
  nop                                                                          #  40    0x66f39  1      OPC=1343  
  nop                                                                          #  41    0x66f3a  1      OPC=1343  
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E  #  42    0x66f3b  5      OPC=260   
  addl $0x8, %esp                                                              #  43    0x66f40  3      OPC=65    
  addq %r15, %rsp                                                              #  44    0x66f43  3      OPC=72    
  popq %r11                                                                    #  45    0x66f46  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                      #  46    0x66f48  7      OPC=131   
  nop                                                                          #  47    0x66f4f  1      OPC=1343  
  nop                                                                          #  48    0x66f50  1      OPC=1343  
  nop                                                                          #  49    0x66f51  1      OPC=1343  
  nop                                                                          #  50    0x66f52  1      OPC=1343  
  addq %r15, %r11                                                              #  51    0x66f53  3      OPC=72    
  jmpq %r11                                                                    #  52    0x66f56  3      OPC=928   
  nop                                                                          #  53    0x66f59  1      OPC=1343  
  nop                                                                          #  54    0x66f5a  1      OPC=1343  
  nop                                                                          #  55    0x66f5b  1      OPC=1343  
  nop                                                                          #  56    0x66f5c  1      OPC=1343  
  nop                                                                          #  57    0x66f5d  1      OPC=1343  
  nop                                                                          #  58    0x66f5e  1      OPC=1343  
  nop                                                                          #  59    0x66f5f  1      OPC=1343  
  nop                                                                          #  60    0x66f60  1      OPC=1343  
  nop                                                                          #  61    0x66f61  1      OPC=1343  
  nop                                                                          #  62    0x66f62  1      OPC=1343  
  nop                                                                          #  63    0x66f63  1      OPC=1343  
  nop                                                                          #  64    0x66f64  1      OPC=1343  
  nop                                                                          #  65    0x66f65  1      OPC=1343  
  nop                                                                          #  66    0x66f66  1      OPC=1343  
  movl %eax, %edi                                                              #  67    0x66f67  2      OPC=1157  
  nop                                                                          #  68    0x66f69  1      OPC=1343  
  nop                                                                          #  69    0x66f6a  1      OPC=1343  
  nop                                                                          #  70    0x66f6b  1      OPC=1343  
  nop                                                                          #  71    0x66f6c  1      OPC=1343  
  nop                                                                          #  72    0x66f6d  1      OPC=1343  
  nop                                                                          #  73    0x66f6e  1      OPC=1343  
  nop                                                                          #  74    0x66f6f  1      OPC=1343  
  nop                                                                          #  75    0x66f70  1      OPC=1343  
  nop                                                                          #  76    0x66f71  1      OPC=1343  
  nop                                                                          #  77    0x66f72  1      OPC=1343  
  nop                                                                          #  78    0x66f73  1      OPC=1343  
  nop                                                                          #  79    0x66f74  1      OPC=1343  
  nop                                                                          #  80    0x66f75  1      OPC=1343  
  nop                                                                          #  81    0x66f76  1      OPC=1343  
  nop                                                                          #  82    0x66f77  1      OPC=1343  
  nop                                                                          #  83    0x66f78  1      OPC=1343  
  nop                                                                          #  84    0x66f79  1      OPC=1343  
  nop                                                                          #  85    0x66f7a  1      OPC=1343  
  nop                                                                          #  86    0x66f7b  1      OPC=1343  
  nop                                                                          #  87    0x66f7c  1      OPC=1343  
  nop                                                                          #  88    0x66f7d  1      OPC=1343  
  nop                                                                          #  89    0x66f7e  1      OPC=1343  
  nop                                                                          #  90    0x66f7f  1      OPC=1343  
  nop                                                                          #  91    0x66f80  1      OPC=1343  
  nop                                                                          #  92    0x66f81  1      OPC=1343  
  callq ._Unwind_Resume                                                        #  93    0x66f82  5      OPC=260   
                                                                                                                  
.size _ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E, .-_ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E

