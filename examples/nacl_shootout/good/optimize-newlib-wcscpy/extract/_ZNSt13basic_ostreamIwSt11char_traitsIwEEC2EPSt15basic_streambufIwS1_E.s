  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E, @function

#! file-offset 0xdd0a0
#! rip-offset  0x9d0a0
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E:       #        0x9d0a0  0      OPC=<label>         
  movl %esi, %eax                                                              #  1     0x9d0a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x9d0a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x9d0a5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x9d0a8  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  5     0x9d0aa  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx                                                     #  6     0x9d0ac  4      OPC=movl_r32_m32    
  movl %edx, %esi                                                              #  7     0x9d0b0  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  8     0x9d0b2  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                                                  #  9     0x9d0b4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  10    0x9d0b9  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdi,1)                                                     #  11    0x9d0bb  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x9d0bf  1      OPC=nop             
  subl $0xc, %ecx                                                              #  13    0x9d0c0  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                                              #  14    0x9d0c3  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %edx                                                     #  15    0x9d0c5  4      OPC=movl_r32_m32    
  addl %edi, %edx                                                              #  16    0x9d0c9  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                              #  17    0x9d0cb  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)                                                     #  18    0x9d0cd  4      OPC=movl_m32_r32    
  movl %edi, %edi                                                              #  19    0x9d0d1  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  20    0x9d0d3  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  21    0x9d0d7  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  22    0x9d0da  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  23    0x9d0dc  4      OPC=addl_r32_m32    
  nop                                                                          #  24    0x9d0e0  1      OPC=nop             
  nop                                                                          #  25    0x9d0e1  1      OPC=nop             
  nop                                                                          #  26    0x9d0e2  1      OPC=nop             
  nop                                                                          #  27    0x9d0e3  1      OPC=nop             
  nop                                                                          #  28    0x9d0e4  1      OPC=nop             
  nop                                                                          #  29    0x9d0e5  1      OPC=nop             
  nop                                                                          #  30    0x9d0e6  1      OPC=nop             
  nop                                                                          #  31    0x9d0e7  1      OPC=nop             
  nop                                                                          #  32    0x9d0e8  1      OPC=nop             
  nop                                                                          #  33    0x9d0e9  1      OPC=nop             
  nop                                                                          #  34    0x9d0ea  1      OPC=nop             
  nop                                                                          #  35    0x9d0eb  1      OPC=nop             
  nop                                                                          #  36    0x9d0ec  1      OPC=nop             
  nop                                                                          #  37    0x9d0ed  1      OPC=nop             
  nop                                                                          #  38    0x9d0ee  1      OPC=nop             
  nop                                                                          #  39    0x9d0ef  1      OPC=nop             
  nop                                                                          #  40    0x9d0f0  1      OPC=nop             
  nop                                                                          #  41    0x9d0f1  1      OPC=nop             
  nop                                                                          #  42    0x9d0f2  1      OPC=nop             
  nop                                                                          #  43    0x9d0f3  1      OPC=nop             
  nop                                                                          #  44    0x9d0f4  1      OPC=nop             
  nop                                                                          #  45    0x9d0f5  1      OPC=nop             
  nop                                                                          #  46    0x9d0f6  1      OPC=nop             
  nop                                                                          #  47    0x9d0f7  1      OPC=nop             
  nop                                                                          #  48    0x9d0f8  1      OPC=nop             
  nop                                                                          #  49    0x9d0f9  1      OPC=nop             
  nop                                                                          #  50    0x9d0fa  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E  #  51    0x9d0fb  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  52    0x9d100  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  53    0x9d103  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  54    0x9d106  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  55    0x9d108  7      OPC=andl_r32_imm32  
  nop                                                                          #  56    0x9d10f  1      OPC=nop             
  nop                                                                          #  57    0x9d110  1      OPC=nop             
  nop                                                                          #  58    0x9d111  1      OPC=nop             
  nop                                                                          #  59    0x9d112  1      OPC=nop             
  addq %r15, %r11                                                              #  60    0x9d113  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  61    0x9d116  3      OPC=jmpq_r64        
  nop                                                                          #  62    0x9d119  1      OPC=nop             
  nop                                                                          #  63    0x9d11a  1      OPC=nop             
  nop                                                                          #  64    0x9d11b  1      OPC=nop             
  nop                                                                          #  65    0x9d11c  1      OPC=nop             
  nop                                                                          #  66    0x9d11d  1      OPC=nop             
  nop                                                                          #  67    0x9d11e  1      OPC=nop             
  nop                                                                          #  68    0x9d11f  1      OPC=nop             
  nop                                                                          #  69    0x9d120  1      OPC=nop             
  nop                                                                          #  70    0x9d121  1      OPC=nop             
  nop                                                                          #  71    0x9d122  1      OPC=nop             
  nop                                                                          #  72    0x9d123  1      OPC=nop             
  nop                                                                          #  73    0x9d124  1      OPC=nop             
  nop                                                                          #  74    0x9d125  1      OPC=nop             
  nop                                                                          #  75    0x9d126  1      OPC=nop             
  movl %eax, %edi                                                              #  76    0x9d127  2      OPC=movl_r32_r32    
  nop                                                                          #  77    0x9d129  1      OPC=nop             
  nop                                                                          #  78    0x9d12a  1      OPC=nop             
  nop                                                                          #  79    0x9d12b  1      OPC=nop             
  nop                                                                          #  80    0x9d12c  1      OPC=nop             
  nop                                                                          #  81    0x9d12d  1      OPC=nop             
  nop                                                                          #  82    0x9d12e  1      OPC=nop             
  nop                                                                          #  83    0x9d12f  1      OPC=nop             
  nop                                                                          #  84    0x9d130  1      OPC=nop             
  nop                                                                          #  85    0x9d131  1      OPC=nop             
  nop                                                                          #  86    0x9d132  1      OPC=nop             
  nop                                                                          #  87    0x9d133  1      OPC=nop             
  nop                                                                          #  88    0x9d134  1      OPC=nop             
  nop                                                                          #  89    0x9d135  1      OPC=nop             
  nop                                                                          #  90    0x9d136  1      OPC=nop             
  nop                                                                          #  91    0x9d137  1      OPC=nop             
  nop                                                                          #  92    0x9d138  1      OPC=nop             
  nop                                                                          #  93    0x9d139  1      OPC=nop             
  nop                                                                          #  94    0x9d13a  1      OPC=nop             
  nop                                                                          #  95    0x9d13b  1      OPC=nop             
  nop                                                                          #  96    0x9d13c  1      OPC=nop             
  nop                                                                          #  97    0x9d13d  1      OPC=nop             
  nop                                                                          #  98    0x9d13e  1      OPC=nop             
  nop                                                                          #  99    0x9d13f  1      OPC=nop             
  nop                                                                          #  100   0x9d140  1      OPC=nop             
  nop                                                                          #  101   0x9d141  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  102   0x9d142  5      OPC=callq_label     
                                                                                                                            
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E

