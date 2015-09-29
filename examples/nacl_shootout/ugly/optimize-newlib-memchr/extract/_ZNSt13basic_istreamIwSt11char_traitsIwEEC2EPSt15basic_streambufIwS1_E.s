  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E, @function

#! file-offset 0xa7e40
#! rip-offset  0x67e40
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E:       #        0x67e40  0      OPC=<label>         
  movl %esi, %eax                                                              #  1     0x67e40  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x67e42  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x67e45  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x67e48  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  5     0x67e4a  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx                                                     #  6     0x67e4c  4      OPC=movl_r32_m32    
  movl %edx, %esi                                                              #  7     0x67e50  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  8     0x67e52  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                                                  #  9     0x67e54  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  10    0x67e59  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdi,1)                                                     #  11    0x67e5b  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x67e5f  1      OPC=nop             
  subl $0xc, %ecx                                                              #  13    0x67e60  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                                              #  14    0x67e63  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %edx                                                     #  15    0x67e65  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  16    0x67e69  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                                                  #  17    0x67e6b  9      OPC=movl_m32_imm32  
  addl %edi, %edx                                                              #  18    0x67e74  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                              #  19    0x67e76  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)                                                     #  20    0x67e78  4      OPC=movl_m32_r32    
  nop                                                                          #  21    0x67e7c  1      OPC=nop             
  nop                                                                          #  22    0x67e7d  1      OPC=nop             
  nop                                                                          #  23    0x67e7e  1      OPC=nop             
  nop                                                                          #  24    0x67e7f  1      OPC=nop             
  movl %edi, %edi                                                              #  25    0x67e80  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  26    0x67e82  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  27    0x67e86  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  28    0x67e89  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  29    0x67e8b  4      OPC=addl_r32_m32    
  nop                                                                          #  30    0x67e8f  1      OPC=nop             
  nop                                                                          #  31    0x67e90  1      OPC=nop             
  nop                                                                          #  32    0x67e91  1      OPC=nop             
  nop                                                                          #  33    0x67e92  1      OPC=nop             
  nop                                                                          #  34    0x67e93  1      OPC=nop             
  nop                                                                          #  35    0x67e94  1      OPC=nop             
  nop                                                                          #  36    0x67e95  1      OPC=nop             
  nop                                                                          #  37    0x67e96  1      OPC=nop             
  nop                                                                          #  38    0x67e97  1      OPC=nop             
  nop                                                                          #  39    0x67e98  1      OPC=nop             
  nop                                                                          #  40    0x67e99  1      OPC=nop             
  nop                                                                          #  41    0x67e9a  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E  #  42    0x67e9b  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  43    0x67ea0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  44    0x67ea3  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  45    0x67ea6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  46    0x67ea8  7      OPC=andl_r32_imm32  
  nop                                                                          #  47    0x67eaf  1      OPC=nop             
  nop                                                                          #  48    0x67eb0  1      OPC=nop             
  nop                                                                          #  49    0x67eb1  1      OPC=nop             
  nop                                                                          #  50    0x67eb2  1      OPC=nop             
  addq %r15, %r11                                                              #  51    0x67eb3  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  52    0x67eb6  3      OPC=jmpq_r64        
  nop                                                                          #  53    0x67eb9  1      OPC=nop             
  nop                                                                          #  54    0x67eba  1      OPC=nop             
  nop                                                                          #  55    0x67ebb  1      OPC=nop             
  nop                                                                          #  56    0x67ebc  1      OPC=nop             
  nop                                                                          #  57    0x67ebd  1      OPC=nop             
  nop                                                                          #  58    0x67ebe  1      OPC=nop             
  nop                                                                          #  59    0x67ebf  1      OPC=nop             
  nop                                                                          #  60    0x67ec0  1      OPC=nop             
  nop                                                                          #  61    0x67ec1  1      OPC=nop             
  nop                                                                          #  62    0x67ec2  1      OPC=nop             
  nop                                                                          #  63    0x67ec3  1      OPC=nop             
  nop                                                                          #  64    0x67ec4  1      OPC=nop             
  nop                                                                          #  65    0x67ec5  1      OPC=nop             
  nop                                                                          #  66    0x67ec6  1      OPC=nop             
  movl %eax, %edi                                                              #  67    0x67ec7  2      OPC=movl_r32_r32    
  nop                                                                          #  68    0x67ec9  1      OPC=nop             
  nop                                                                          #  69    0x67eca  1      OPC=nop             
  nop                                                                          #  70    0x67ecb  1      OPC=nop             
  nop                                                                          #  71    0x67ecc  1      OPC=nop             
  nop                                                                          #  72    0x67ecd  1      OPC=nop             
  nop                                                                          #  73    0x67ece  1      OPC=nop             
  nop                                                                          #  74    0x67ecf  1      OPC=nop             
  nop                                                                          #  75    0x67ed0  1      OPC=nop             
  nop                                                                          #  76    0x67ed1  1      OPC=nop             
  nop                                                                          #  77    0x67ed2  1      OPC=nop             
  nop                                                                          #  78    0x67ed3  1      OPC=nop             
  nop                                                                          #  79    0x67ed4  1      OPC=nop             
  nop                                                                          #  80    0x67ed5  1      OPC=nop             
  nop                                                                          #  81    0x67ed6  1      OPC=nop             
  nop                                                                          #  82    0x67ed7  1      OPC=nop             
  nop                                                                          #  83    0x67ed8  1      OPC=nop             
  nop                                                                          #  84    0x67ed9  1      OPC=nop             
  nop                                                                          #  85    0x67eda  1      OPC=nop             
  nop                                                                          #  86    0x67edb  1      OPC=nop             
  nop                                                                          #  87    0x67edc  1      OPC=nop             
  nop                                                                          #  88    0x67edd  1      OPC=nop             
  nop                                                                          #  89    0x67ede  1      OPC=nop             
  nop                                                                          #  90    0x67edf  1      OPC=nop             
  nop                                                                          #  91    0x67ee0  1      OPC=nop             
  nop                                                                          #  92    0x67ee1  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  93    0x67ee2  5      OPC=callq_label     
                                                                                                                            
.size _ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E, .-_ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E

