  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev, @function

#! file-offset 0xa7380
#! rip-offset  0x67380
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev:                                #        0x67380  0      OPC=<label>         
  movl %esi, %esi                                                              #  1     0x67380  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x67382  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x67385  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x67388  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                              #  5     0x6738a  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                                     #  6     0x6738c  4      OPC=movl_r32_m32    
  movl %esi, %esi                                                              #  7     0x67390  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                                                  #  8     0x67392  5      OPC=movl_r32_m32    
  xorl %esi, %esi                                                              #  9     0x67397  2      OPC=xorl_r32_r32    
  movl %edi, %edi                                                              #  10    0x67399  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                                     #  11    0x6739b  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x6739f  1      OPC=nop             
  subl $0xc, %eax                                                              #  13    0x673a0  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  14    0x673a3  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                     #  15    0x673a5  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  16    0x673a9  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                                                  #  17    0x673ab  9      OPC=movl_m32_imm32  
  addl %edi, %eax                                                              #  18    0x673b4  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                              #  19    0x673b6  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                                                     #  20    0x673b8  4      OPC=movl_m32_r32    
  nop                                                                          #  21    0x673bc  1      OPC=nop             
  nop                                                                          #  22    0x673bd  1      OPC=nop             
  nop                                                                          #  23    0x673be  1      OPC=nop             
  nop                                                                          #  24    0x673bf  1      OPC=nop             
  movl %edi, %edi                                                              #  25    0x673c0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  26    0x673c2  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  27    0x673c6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  28    0x673c9  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  29    0x673cb  4      OPC=addl_r32_m32    
  nop                                                                          #  30    0x673cf  1      OPC=nop             
  nop                                                                          #  31    0x673d0  1      OPC=nop             
  nop                                                                          #  32    0x673d1  1      OPC=nop             
  nop                                                                          #  33    0x673d2  1      OPC=nop             
  nop                                                                          #  34    0x673d3  1      OPC=nop             
  nop                                                                          #  35    0x673d4  1      OPC=nop             
  nop                                                                          #  36    0x673d5  1      OPC=nop             
  nop                                                                          #  37    0x673d6  1      OPC=nop             
  nop                                                                          #  38    0x673d7  1      OPC=nop             
  nop                                                                          #  39    0x673d8  1      OPC=nop             
  nop                                                                          #  40    0x673d9  1      OPC=nop             
  nop                                                                          #  41    0x673da  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E  #  42    0x673db  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  43    0x673e0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  44    0x673e3  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  45    0x673e6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  46    0x673e8  7      OPC=andl_r32_imm32  
  nop                                                                          #  47    0x673ef  1      OPC=nop             
  nop                                                                          #  48    0x673f0  1      OPC=nop             
  nop                                                                          #  49    0x673f1  1      OPC=nop             
  nop                                                                          #  50    0x673f2  1      OPC=nop             
  addq %r15, %r11                                                              #  51    0x673f3  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  52    0x673f6  3      OPC=jmpq_r64        
  nop                                                                          #  53    0x673f9  1      OPC=nop             
  nop                                                                          #  54    0x673fa  1      OPC=nop             
  nop                                                                          #  55    0x673fb  1      OPC=nop             
  nop                                                                          #  56    0x673fc  1      OPC=nop             
  nop                                                                          #  57    0x673fd  1      OPC=nop             
  nop                                                                          #  58    0x673fe  1      OPC=nop             
  nop                                                                          #  59    0x673ff  1      OPC=nop             
  nop                                                                          #  60    0x67400  1      OPC=nop             
  nop                                                                          #  61    0x67401  1      OPC=nop             
  nop                                                                          #  62    0x67402  1      OPC=nop             
  nop                                                                          #  63    0x67403  1      OPC=nop             
  nop                                                                          #  64    0x67404  1      OPC=nop             
  nop                                                                          #  65    0x67405  1      OPC=nop             
  nop                                                                          #  66    0x67406  1      OPC=nop             
  movl %eax, %edi                                                              #  67    0x67407  2      OPC=movl_r32_r32    
  nop                                                                          #  68    0x67409  1      OPC=nop             
  nop                                                                          #  69    0x6740a  1      OPC=nop             
  nop                                                                          #  70    0x6740b  1      OPC=nop             
  nop                                                                          #  71    0x6740c  1      OPC=nop             
  nop                                                                          #  72    0x6740d  1      OPC=nop             
  nop                                                                          #  73    0x6740e  1      OPC=nop             
  nop                                                                          #  74    0x6740f  1      OPC=nop             
  nop                                                                          #  75    0x67410  1      OPC=nop             
  nop                                                                          #  76    0x67411  1      OPC=nop             
  nop                                                                          #  77    0x67412  1      OPC=nop             
  nop                                                                          #  78    0x67413  1      OPC=nop             
  nop                                                                          #  79    0x67414  1      OPC=nop             
  nop                                                                          #  80    0x67415  1      OPC=nop             
  nop                                                                          #  81    0x67416  1      OPC=nop             
  nop                                                                          #  82    0x67417  1      OPC=nop             
  nop                                                                          #  83    0x67418  1      OPC=nop             
  nop                                                                          #  84    0x67419  1      OPC=nop             
  nop                                                                          #  85    0x6741a  1      OPC=nop             
  nop                                                                          #  86    0x6741b  1      OPC=nop             
  nop                                                                          #  87    0x6741c  1      OPC=nop             
  nop                                                                          #  88    0x6741d  1      OPC=nop             
  nop                                                                          #  89    0x6741e  1      OPC=nop             
  nop                                                                          #  90    0x6741f  1      OPC=nop             
  nop                                                                          #  91    0x67420  1      OPC=nop             
  nop                                                                          #  92    0x67421  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  93    0x67422  5      OPC=callq_label     
                                                                                                                            
.size _ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev, .-_ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev

