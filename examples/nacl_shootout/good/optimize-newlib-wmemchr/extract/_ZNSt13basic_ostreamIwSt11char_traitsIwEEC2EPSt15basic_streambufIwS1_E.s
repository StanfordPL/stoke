  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E, @function

#! file-offset 0xdd3a0
#! rip-offset  0x9d3a0
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E:       #        0x9d3a0  0      OPC=<label>         
  movl %esi, %eax                                                              #  1     0x9d3a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x9d3a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x9d3a5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x9d3a8  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  5     0x9d3aa  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx                                                     #  6     0x9d3ac  4      OPC=movl_r32_m32    
  movl %edx, %esi                                                              #  7     0x9d3b0  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  8     0x9d3b2  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                                                  #  9     0x9d3b4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  10    0x9d3b9  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdi,1)                                                     #  11    0x9d3bb  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x9d3bf  1      OPC=nop             
  subl $0xc, %ecx                                                              #  13    0x9d3c0  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                                              #  14    0x9d3c3  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %edx                                                     #  15    0x9d3c5  4      OPC=movl_r32_m32    
  addl %edi, %edx                                                              #  16    0x9d3c9  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                              #  17    0x9d3cb  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)                                                     #  18    0x9d3cd  4      OPC=movl_m32_r32    
  movl %edi, %edi                                                              #  19    0x9d3d1  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  20    0x9d3d3  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  21    0x9d3d7  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  22    0x9d3da  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  23    0x9d3dc  4      OPC=addl_r32_m32    
  nop                                                                          #  24    0x9d3e0  1      OPC=nop             
  nop                                                                          #  25    0x9d3e1  1      OPC=nop             
  nop                                                                          #  26    0x9d3e2  1      OPC=nop             
  nop                                                                          #  27    0x9d3e3  1      OPC=nop             
  nop                                                                          #  28    0x9d3e4  1      OPC=nop             
  nop                                                                          #  29    0x9d3e5  1      OPC=nop             
  nop                                                                          #  30    0x9d3e6  1      OPC=nop             
  nop                                                                          #  31    0x9d3e7  1      OPC=nop             
  nop                                                                          #  32    0x9d3e8  1      OPC=nop             
  nop                                                                          #  33    0x9d3e9  1      OPC=nop             
  nop                                                                          #  34    0x9d3ea  1      OPC=nop             
  nop                                                                          #  35    0x9d3eb  1      OPC=nop             
  nop                                                                          #  36    0x9d3ec  1      OPC=nop             
  nop                                                                          #  37    0x9d3ed  1      OPC=nop             
  nop                                                                          #  38    0x9d3ee  1      OPC=nop             
  nop                                                                          #  39    0x9d3ef  1      OPC=nop             
  nop                                                                          #  40    0x9d3f0  1      OPC=nop             
  nop                                                                          #  41    0x9d3f1  1      OPC=nop             
  nop                                                                          #  42    0x9d3f2  1      OPC=nop             
  nop                                                                          #  43    0x9d3f3  1      OPC=nop             
  nop                                                                          #  44    0x9d3f4  1      OPC=nop             
  nop                                                                          #  45    0x9d3f5  1      OPC=nop             
  nop                                                                          #  46    0x9d3f6  1      OPC=nop             
  nop                                                                          #  47    0x9d3f7  1      OPC=nop             
  nop                                                                          #  48    0x9d3f8  1      OPC=nop             
  nop                                                                          #  49    0x9d3f9  1      OPC=nop             
  nop                                                                          #  50    0x9d3fa  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E  #  51    0x9d3fb  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  52    0x9d400  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  53    0x9d403  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  54    0x9d406  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  55    0x9d408  7      OPC=andl_r32_imm32  
  nop                                                                          #  56    0x9d40f  1      OPC=nop             
  nop                                                                          #  57    0x9d410  1      OPC=nop             
  nop                                                                          #  58    0x9d411  1      OPC=nop             
  nop                                                                          #  59    0x9d412  1      OPC=nop             
  addq %r15, %r11                                                              #  60    0x9d413  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  61    0x9d416  3      OPC=jmpq_r64        
  nop                                                                          #  62    0x9d419  1      OPC=nop             
  nop                                                                          #  63    0x9d41a  1      OPC=nop             
  nop                                                                          #  64    0x9d41b  1      OPC=nop             
  nop                                                                          #  65    0x9d41c  1      OPC=nop             
  nop                                                                          #  66    0x9d41d  1      OPC=nop             
  nop                                                                          #  67    0x9d41e  1      OPC=nop             
  nop                                                                          #  68    0x9d41f  1      OPC=nop             
  nop                                                                          #  69    0x9d420  1      OPC=nop             
  nop                                                                          #  70    0x9d421  1      OPC=nop             
  nop                                                                          #  71    0x9d422  1      OPC=nop             
  nop                                                                          #  72    0x9d423  1      OPC=nop             
  nop                                                                          #  73    0x9d424  1      OPC=nop             
  nop                                                                          #  74    0x9d425  1      OPC=nop             
  nop                                                                          #  75    0x9d426  1      OPC=nop             
  movl %eax, %edi                                                              #  76    0x9d427  2      OPC=movl_r32_r32    
  nop                                                                          #  77    0x9d429  1      OPC=nop             
  nop                                                                          #  78    0x9d42a  1      OPC=nop             
  nop                                                                          #  79    0x9d42b  1      OPC=nop             
  nop                                                                          #  80    0x9d42c  1      OPC=nop             
  nop                                                                          #  81    0x9d42d  1      OPC=nop             
  nop                                                                          #  82    0x9d42e  1      OPC=nop             
  nop                                                                          #  83    0x9d42f  1      OPC=nop             
  nop                                                                          #  84    0x9d430  1      OPC=nop             
  nop                                                                          #  85    0x9d431  1      OPC=nop             
  nop                                                                          #  86    0x9d432  1      OPC=nop             
  nop                                                                          #  87    0x9d433  1      OPC=nop             
  nop                                                                          #  88    0x9d434  1      OPC=nop             
  nop                                                                          #  89    0x9d435  1      OPC=nop             
  nop                                                                          #  90    0x9d436  1      OPC=nop             
  nop                                                                          #  91    0x9d437  1      OPC=nop             
  nop                                                                          #  92    0x9d438  1      OPC=nop             
  nop                                                                          #  93    0x9d439  1      OPC=nop             
  nop                                                                          #  94    0x9d43a  1      OPC=nop             
  nop                                                                          #  95    0x9d43b  1      OPC=nop             
  nop                                                                          #  96    0x9d43c  1      OPC=nop             
  nop                                                                          #  97    0x9d43d  1      OPC=nop             
  nop                                                                          #  98    0x9d43e  1      OPC=nop             
  nop                                                                          #  99    0x9d43f  1      OPC=nop             
  nop                                                                          #  100   0x9d440  1      OPC=nop             
  nop                                                                          #  101   0x9d441  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  102   0x9d442  5      OPC=callq_label     
                                                                                                                            
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E

