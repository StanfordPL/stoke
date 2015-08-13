  .text
  .globl _ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE
  .type _ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE, @function

#! file-offset 0xdd420
#! rip-offset  0x9d420
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE:                            #        0x9d420  0      OPC=<label>         
  movl %esi, %eax                                                              #  1     0x9d420  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x9d422  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x9d425  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x9d428  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  5     0x9d42a  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx                                                     #  6     0x9d42c  4      OPC=movl_r32_m32    
  movl %edx, %esi                                                              #  7     0x9d430  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  8     0x9d432  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                                                  #  9     0x9d434  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  10    0x9d439  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdi,1)                                                     #  11    0x9d43b  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x9d43f  1      OPC=nop             
  subl $0xc, %ecx                                                              #  13    0x9d440  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                                              #  14    0x9d443  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %edx                                                     #  15    0x9d445  4      OPC=movl_r32_m32    
  addl %edi, %edx                                                              #  16    0x9d449  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                              #  17    0x9d44b  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)                                                     #  18    0x9d44d  4      OPC=movl_m32_r32    
  movl %edi, %edi                                                              #  19    0x9d451  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  20    0x9d453  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  21    0x9d457  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  22    0x9d45a  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  23    0x9d45c  4      OPC=addl_r32_m32    
  nop                                                                          #  24    0x9d460  1      OPC=nop             
  nop                                                                          #  25    0x9d461  1      OPC=nop             
  nop                                                                          #  26    0x9d462  1      OPC=nop             
  nop                                                                          #  27    0x9d463  1      OPC=nop             
  nop                                                                          #  28    0x9d464  1      OPC=nop             
  nop                                                                          #  29    0x9d465  1      OPC=nop             
  nop                                                                          #  30    0x9d466  1      OPC=nop             
  nop                                                                          #  31    0x9d467  1      OPC=nop             
  nop                                                                          #  32    0x9d468  1      OPC=nop             
  nop                                                                          #  33    0x9d469  1      OPC=nop             
  nop                                                                          #  34    0x9d46a  1      OPC=nop             
  nop                                                                          #  35    0x9d46b  1      OPC=nop             
  nop                                                                          #  36    0x9d46c  1      OPC=nop             
  nop                                                                          #  37    0x9d46d  1      OPC=nop             
  nop                                                                          #  38    0x9d46e  1      OPC=nop             
  nop                                                                          #  39    0x9d46f  1      OPC=nop             
  nop                                                                          #  40    0x9d470  1      OPC=nop             
  nop                                                                          #  41    0x9d471  1      OPC=nop             
  nop                                                                          #  42    0x9d472  1      OPC=nop             
  nop                                                                          #  43    0x9d473  1      OPC=nop             
  nop                                                                          #  44    0x9d474  1      OPC=nop             
  nop                                                                          #  45    0x9d475  1      OPC=nop             
  nop                                                                          #  46    0x9d476  1      OPC=nop             
  nop                                                                          #  47    0x9d477  1      OPC=nop             
  nop                                                                          #  48    0x9d478  1      OPC=nop             
  nop                                                                          #  49    0x9d479  1      OPC=nop             
  nop                                                                          #  50    0x9d47a  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E  #  51    0x9d47b  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  52    0x9d480  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  53    0x9d483  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  54    0x9d486  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  55    0x9d488  7      OPC=andl_r32_imm32  
  nop                                                                          #  56    0x9d48f  1      OPC=nop             
  nop                                                                          #  57    0x9d490  1      OPC=nop             
  nop                                                                          #  58    0x9d491  1      OPC=nop             
  nop                                                                          #  59    0x9d492  1      OPC=nop             
  addq %r15, %r11                                                              #  60    0x9d493  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  61    0x9d496  3      OPC=jmpq_r64        
  nop                                                                          #  62    0x9d499  1      OPC=nop             
  nop                                                                          #  63    0x9d49a  1      OPC=nop             
  nop                                                                          #  64    0x9d49b  1      OPC=nop             
  nop                                                                          #  65    0x9d49c  1      OPC=nop             
  nop                                                                          #  66    0x9d49d  1      OPC=nop             
  nop                                                                          #  67    0x9d49e  1      OPC=nop             
  nop                                                                          #  68    0x9d49f  1      OPC=nop             
  nop                                                                          #  69    0x9d4a0  1      OPC=nop             
  nop                                                                          #  70    0x9d4a1  1      OPC=nop             
  nop                                                                          #  71    0x9d4a2  1      OPC=nop             
  nop                                                                          #  72    0x9d4a3  1      OPC=nop             
  nop                                                                          #  73    0x9d4a4  1      OPC=nop             
  nop                                                                          #  74    0x9d4a5  1      OPC=nop             
  nop                                                                          #  75    0x9d4a6  1      OPC=nop             
  movl %eax, %edi                                                              #  76    0x9d4a7  2      OPC=movl_r32_r32    
  nop                                                                          #  77    0x9d4a9  1      OPC=nop             
  nop                                                                          #  78    0x9d4aa  1      OPC=nop             
  nop                                                                          #  79    0x9d4ab  1      OPC=nop             
  nop                                                                          #  80    0x9d4ac  1      OPC=nop             
  nop                                                                          #  81    0x9d4ad  1      OPC=nop             
  nop                                                                          #  82    0x9d4ae  1      OPC=nop             
  nop                                                                          #  83    0x9d4af  1      OPC=nop             
  nop                                                                          #  84    0x9d4b0  1      OPC=nop             
  nop                                                                          #  85    0x9d4b1  1      OPC=nop             
  nop                                                                          #  86    0x9d4b2  1      OPC=nop             
  nop                                                                          #  87    0x9d4b3  1      OPC=nop             
  nop                                                                          #  88    0x9d4b4  1      OPC=nop             
  nop                                                                          #  89    0x9d4b5  1      OPC=nop             
  nop                                                                          #  90    0x9d4b6  1      OPC=nop             
  nop                                                                          #  91    0x9d4b7  1      OPC=nop             
  nop                                                                          #  92    0x9d4b8  1      OPC=nop             
  nop                                                                          #  93    0x9d4b9  1      OPC=nop             
  nop                                                                          #  94    0x9d4ba  1      OPC=nop             
  nop                                                                          #  95    0x9d4bb  1      OPC=nop             
  nop                                                                          #  96    0x9d4bc  1      OPC=nop             
  nop                                                                          #  97    0x9d4bd  1      OPC=nop             
  nop                                                                          #  98    0x9d4be  1      OPC=nop             
  nop                                                                          #  99    0x9d4bf  1      OPC=nop             
  nop                                                                          #  100   0x9d4c0  1      OPC=nop             
  nop                                                                          #  101   0x9d4c1  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  102   0x9d4c2  5      OPC=callq_label     
                                                                                                                            
.size _ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE, .-_ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE

