  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E, @function

#! file-offset 0xa7720
#! rip-offset  0x67720
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E:       #        0x67720  0      OPC=<label>         
  movl %esi, %eax                                                              #  1     0x67720  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x67722  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x67725  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x67728  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  5     0x6772a  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx                                                     #  6     0x6772c  4      OPC=movl_r32_m32    
  movl %edx, %esi                                                              #  7     0x67730  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  8     0x67732  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                                                  #  9     0x67734  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  10    0x67739  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdi,1)                                                     #  11    0x6773b  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x6773f  1      OPC=nop             
  subl $0xc, %ecx                                                              #  13    0x67740  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                                              #  14    0x67743  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %edx                                                     #  15    0x67745  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  16    0x67749  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                                                  #  17    0x6774b  9      OPC=movl_m32_imm32  
  addl %edi, %edx                                                              #  18    0x67754  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                              #  19    0x67756  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)                                                     #  20    0x67758  4      OPC=movl_m32_r32    
  nop                                                                          #  21    0x6775c  1      OPC=nop             
  nop                                                                          #  22    0x6775d  1      OPC=nop             
  nop                                                                          #  23    0x6775e  1      OPC=nop             
  nop                                                                          #  24    0x6775f  1      OPC=nop             
  movl %edi, %edi                                                              #  25    0x67760  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  26    0x67762  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  27    0x67766  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  28    0x67769  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  29    0x6776b  4      OPC=addl_r32_m32    
  nop                                                                          #  30    0x6776f  1      OPC=nop             
  nop                                                                          #  31    0x67770  1      OPC=nop             
  nop                                                                          #  32    0x67771  1      OPC=nop             
  nop                                                                          #  33    0x67772  1      OPC=nop             
  nop                                                                          #  34    0x67773  1      OPC=nop             
  nop                                                                          #  35    0x67774  1      OPC=nop             
  nop                                                                          #  36    0x67775  1      OPC=nop             
  nop                                                                          #  37    0x67776  1      OPC=nop             
  nop                                                                          #  38    0x67777  1      OPC=nop             
  nop                                                                          #  39    0x67778  1      OPC=nop             
  nop                                                                          #  40    0x67779  1      OPC=nop             
  nop                                                                          #  41    0x6777a  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E  #  42    0x6777b  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  43    0x67780  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  44    0x67783  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  45    0x67786  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  46    0x67788  7      OPC=andl_r32_imm32  
  nop                                                                          #  47    0x6778f  1      OPC=nop             
  nop                                                                          #  48    0x67790  1      OPC=nop             
  nop                                                                          #  49    0x67791  1      OPC=nop             
  nop                                                                          #  50    0x67792  1      OPC=nop             
  addq %r15, %r11                                                              #  51    0x67793  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  52    0x67796  3      OPC=jmpq_r64        
  nop                                                                          #  53    0x67799  1      OPC=nop             
  nop                                                                          #  54    0x6779a  1      OPC=nop             
  nop                                                                          #  55    0x6779b  1      OPC=nop             
  nop                                                                          #  56    0x6779c  1      OPC=nop             
  nop                                                                          #  57    0x6779d  1      OPC=nop             
  nop                                                                          #  58    0x6779e  1      OPC=nop             
  nop                                                                          #  59    0x6779f  1      OPC=nop             
  nop                                                                          #  60    0x677a0  1      OPC=nop             
  nop                                                                          #  61    0x677a1  1      OPC=nop             
  nop                                                                          #  62    0x677a2  1      OPC=nop             
  nop                                                                          #  63    0x677a3  1      OPC=nop             
  nop                                                                          #  64    0x677a4  1      OPC=nop             
  nop                                                                          #  65    0x677a5  1      OPC=nop             
  nop                                                                          #  66    0x677a6  1      OPC=nop             
  movl %eax, %edi                                                              #  67    0x677a7  2      OPC=movl_r32_r32    
  nop                                                                          #  68    0x677a9  1      OPC=nop             
  nop                                                                          #  69    0x677aa  1      OPC=nop             
  nop                                                                          #  70    0x677ab  1      OPC=nop             
  nop                                                                          #  71    0x677ac  1      OPC=nop             
  nop                                                                          #  72    0x677ad  1      OPC=nop             
  nop                                                                          #  73    0x677ae  1      OPC=nop             
  nop                                                                          #  74    0x677af  1      OPC=nop             
  nop                                                                          #  75    0x677b0  1      OPC=nop             
  nop                                                                          #  76    0x677b1  1      OPC=nop             
  nop                                                                          #  77    0x677b2  1      OPC=nop             
  nop                                                                          #  78    0x677b3  1      OPC=nop             
  nop                                                                          #  79    0x677b4  1      OPC=nop             
  nop                                                                          #  80    0x677b5  1      OPC=nop             
  nop                                                                          #  81    0x677b6  1      OPC=nop             
  nop                                                                          #  82    0x677b7  1      OPC=nop             
  nop                                                                          #  83    0x677b8  1      OPC=nop             
  nop                                                                          #  84    0x677b9  1      OPC=nop             
  nop                                                                          #  85    0x677ba  1      OPC=nop             
  nop                                                                          #  86    0x677bb  1      OPC=nop             
  nop                                                                          #  87    0x677bc  1      OPC=nop             
  nop                                                                          #  88    0x677bd  1      OPC=nop             
  nop                                                                          #  89    0x677be  1      OPC=nop             
  nop                                                                          #  90    0x677bf  1      OPC=nop             
  nop                                                                          #  91    0x677c0  1      OPC=nop             
  nop                                                                          #  92    0x677c1  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  93    0x677c2  5      OPC=callq_label     
                                                                                                                            
.size _ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E, .-_ZNSt13basic_istreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E

