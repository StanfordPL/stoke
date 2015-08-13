  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E, @function

#! file-offset 0xa7420
#! rip-offset  0x67420
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E:       #        0x67420  0      OPC=<label>         
  movl %esi, %eax                                                              #  1     0x67420  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x67422  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x67425  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x67428  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  5     0x6742a  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx                                                     #  6     0x6742c  4      OPC=movl_r32_m32    
  movl %edx, %esi                                                              #  7     0x67430  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  8     0x67432  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                                                  #  9     0x67434  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  10    0x67439  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdi,1)                                                     #  11    0x6743b  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x6743f  1      OPC=nop             
  subl $0xc, %ecx                                                              #  13    0x67440  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                                              #  14    0x67443  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %edx                                                     #  15    0x67445  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  16    0x67449  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                                                  #  17    0x6744b  9      OPC=movl_m32_imm32  
  addl %edi, %edx                                                              #  18    0x67454  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                              #  19    0x67456  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)                                                     #  20    0x67458  4      OPC=movl_m32_r32    
  nop                                                                          #  21    0x6745c  1      OPC=nop             
  nop                                                                          #  22    0x6745d  1      OPC=nop             
  nop                                                                          #  23    0x6745e  1      OPC=nop             
  nop                                                                          #  24    0x6745f  1      OPC=nop             
  movl %edi, %edi                                                              #  25    0x67460  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  26    0x67462  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  27    0x67466  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  28    0x67469  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  29    0x6746b  4      OPC=addl_r32_m32    
  nop                                                                          #  30    0x6746f  1      OPC=nop             
  nop                                                                          #  31    0x67470  1      OPC=nop             
  nop                                                                          #  32    0x67471  1      OPC=nop             
  nop                                                                          #  33    0x67472  1      OPC=nop             
  nop                                                                          #  34    0x67473  1      OPC=nop             
  nop                                                                          #  35    0x67474  1      OPC=nop             
  nop                                                                          #  36    0x67475  1      OPC=nop             
  nop                                                                          #  37    0x67476  1      OPC=nop             
  nop                                                                          #  38    0x67477  1      OPC=nop             
  nop                                                                          #  39    0x67478  1      OPC=nop             
  nop                                                                          #  40    0x67479  1      OPC=nop             
  nop                                                                          #  41    0x6747a  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E  #  42    0x6747b  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  43    0x67480  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  44    0x67483  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  45    0x67486  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  46    0x67488  7      OPC=andl_r32_imm32  
  nop                                                                          #  47    0x6748f  1      OPC=nop             
  nop                                                                          #  48    0x67490  1      OPC=nop             
  nop                                                                          #  49    0x67491  1      OPC=nop             
  nop                                                                          #  50    0x67492  1      OPC=nop             
  addq %r15, %r11                                                              #  51    0x67493  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  52    0x67496  3      OPC=jmpq_r64        
  nop                                                                          #  53    0x67499  1      OPC=nop             
  nop                                                                          #  54    0x6749a  1      OPC=nop             
  nop                                                                          #  55    0x6749b  1      OPC=nop             
  nop                                                                          #  56    0x6749c  1      OPC=nop             
  nop                                                                          #  57    0x6749d  1      OPC=nop             
  nop                                                                          #  58    0x6749e  1      OPC=nop             
  nop                                                                          #  59    0x6749f  1      OPC=nop             
  nop                                                                          #  60    0x674a0  1      OPC=nop             
  nop                                                                          #  61    0x674a1  1      OPC=nop             
  nop                                                                          #  62    0x674a2  1      OPC=nop             
  nop                                                                          #  63    0x674a3  1      OPC=nop             
  nop                                                                          #  64    0x674a4  1      OPC=nop             
  nop                                                                          #  65    0x674a5  1      OPC=nop             
  nop                                                                          #  66    0x674a6  1      OPC=nop             
  movl %eax, %edi                                                              #  67    0x674a7  2      OPC=movl_r32_r32    
  nop                                                                          #  68    0x674a9  1      OPC=nop             
  nop                                                                          #  69    0x674aa  1      OPC=nop             
  nop                                                                          #  70    0x674ab  1      OPC=nop             
  nop                                                                          #  71    0x674ac  1      OPC=nop             
  nop                                                                          #  72    0x674ad  1      OPC=nop             
  nop                                                                          #  73    0x674ae  1      OPC=nop             
  nop                                                                          #  74    0x674af  1      OPC=nop             
  nop                                                                          #  75    0x674b0  1      OPC=nop             
  nop                                                                          #  76    0x674b1  1      OPC=nop             
  nop                                                                          #  77    0x674b2  1      OPC=nop             
  nop                                                                          #  78    0x674b3  1      OPC=nop             
  nop                                                                          #  79    0x674b4  1      OPC=nop             
  nop                                                                          #  80    0x674b5  1      OPC=nop             
  nop                                                                          #  81    0x674b6  1      OPC=nop             
  nop                                                                          #  82    0x674b7  1      OPC=nop             
  nop                                                                          #  83    0x674b8  1      OPC=nop             
  nop                                                                          #  84    0x674b9  1      OPC=nop             
  nop                                                                          #  85    0x674ba  1      OPC=nop             
  nop                                                                          #  86    0x674bb  1      OPC=nop             
  nop                                                                          #  87    0x674bc  1      OPC=nop             
  nop                                                                          #  88    0x674bd  1      OPC=nop             
  nop                                                                          #  89    0x674be  1      OPC=nop             
  nop                                                                          #  90    0x674bf  1      OPC=nop             
  nop                                                                          #  91    0x674c0  1      OPC=nop             
  nop                                                                          #  92    0x674c1  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  93    0x674c2  5      OPC=callq_label     
                                                                                                                            
.size _ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E, .-_ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E

