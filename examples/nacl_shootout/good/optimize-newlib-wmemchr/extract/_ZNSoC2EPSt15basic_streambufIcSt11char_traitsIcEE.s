  .text
  .globl _ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE
  .type _ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE, @function

#! file-offset 0xdd720
#! rip-offset  0x9d720
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE:                            #        0x9d720  0      OPC=<label>         
  movl %esi, %eax                                                              #  1     0x9d720  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x9d722  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x9d725  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x9d728  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  5     0x9d72a  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx                                                     #  6     0x9d72c  4      OPC=movl_r32_m32    
  movl %edx, %esi                                                              #  7     0x9d730  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  8     0x9d732  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                                                  #  9     0x9d734  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  10    0x9d739  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdi,1)                                                     #  11    0x9d73b  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x9d73f  1      OPC=nop             
  subl $0xc, %ecx                                                              #  13    0x9d740  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                                              #  14    0x9d743  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %edx                                                     #  15    0x9d745  4      OPC=movl_r32_m32    
  addl %edi, %edx                                                              #  16    0x9d749  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                              #  17    0x9d74b  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)                                                     #  18    0x9d74d  4      OPC=movl_m32_r32    
  movl %edi, %edi                                                              #  19    0x9d751  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  20    0x9d753  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  21    0x9d757  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  22    0x9d75a  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  23    0x9d75c  4      OPC=addl_r32_m32    
  nop                                                                          #  24    0x9d760  1      OPC=nop             
  nop                                                                          #  25    0x9d761  1      OPC=nop             
  nop                                                                          #  26    0x9d762  1      OPC=nop             
  nop                                                                          #  27    0x9d763  1      OPC=nop             
  nop                                                                          #  28    0x9d764  1      OPC=nop             
  nop                                                                          #  29    0x9d765  1      OPC=nop             
  nop                                                                          #  30    0x9d766  1      OPC=nop             
  nop                                                                          #  31    0x9d767  1      OPC=nop             
  nop                                                                          #  32    0x9d768  1      OPC=nop             
  nop                                                                          #  33    0x9d769  1      OPC=nop             
  nop                                                                          #  34    0x9d76a  1      OPC=nop             
  nop                                                                          #  35    0x9d76b  1      OPC=nop             
  nop                                                                          #  36    0x9d76c  1      OPC=nop             
  nop                                                                          #  37    0x9d76d  1      OPC=nop             
  nop                                                                          #  38    0x9d76e  1      OPC=nop             
  nop                                                                          #  39    0x9d76f  1      OPC=nop             
  nop                                                                          #  40    0x9d770  1      OPC=nop             
  nop                                                                          #  41    0x9d771  1      OPC=nop             
  nop                                                                          #  42    0x9d772  1      OPC=nop             
  nop                                                                          #  43    0x9d773  1      OPC=nop             
  nop                                                                          #  44    0x9d774  1      OPC=nop             
  nop                                                                          #  45    0x9d775  1      OPC=nop             
  nop                                                                          #  46    0x9d776  1      OPC=nop             
  nop                                                                          #  47    0x9d777  1      OPC=nop             
  nop                                                                          #  48    0x9d778  1      OPC=nop             
  nop                                                                          #  49    0x9d779  1      OPC=nop             
  nop                                                                          #  50    0x9d77a  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E  #  51    0x9d77b  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  52    0x9d780  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  53    0x9d783  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  54    0x9d786  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  55    0x9d788  7      OPC=andl_r32_imm32  
  nop                                                                          #  56    0x9d78f  1      OPC=nop             
  nop                                                                          #  57    0x9d790  1      OPC=nop             
  nop                                                                          #  58    0x9d791  1      OPC=nop             
  nop                                                                          #  59    0x9d792  1      OPC=nop             
  addq %r15, %r11                                                              #  60    0x9d793  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  61    0x9d796  3      OPC=jmpq_r64        
  nop                                                                          #  62    0x9d799  1      OPC=nop             
  nop                                                                          #  63    0x9d79a  1      OPC=nop             
  nop                                                                          #  64    0x9d79b  1      OPC=nop             
  nop                                                                          #  65    0x9d79c  1      OPC=nop             
  nop                                                                          #  66    0x9d79d  1      OPC=nop             
  nop                                                                          #  67    0x9d79e  1      OPC=nop             
  nop                                                                          #  68    0x9d79f  1      OPC=nop             
  nop                                                                          #  69    0x9d7a0  1      OPC=nop             
  nop                                                                          #  70    0x9d7a1  1      OPC=nop             
  nop                                                                          #  71    0x9d7a2  1      OPC=nop             
  nop                                                                          #  72    0x9d7a3  1      OPC=nop             
  nop                                                                          #  73    0x9d7a4  1      OPC=nop             
  nop                                                                          #  74    0x9d7a5  1      OPC=nop             
  nop                                                                          #  75    0x9d7a6  1      OPC=nop             
  movl %eax, %edi                                                              #  76    0x9d7a7  2      OPC=movl_r32_r32    
  nop                                                                          #  77    0x9d7a9  1      OPC=nop             
  nop                                                                          #  78    0x9d7aa  1      OPC=nop             
  nop                                                                          #  79    0x9d7ab  1      OPC=nop             
  nop                                                                          #  80    0x9d7ac  1      OPC=nop             
  nop                                                                          #  81    0x9d7ad  1      OPC=nop             
  nop                                                                          #  82    0x9d7ae  1      OPC=nop             
  nop                                                                          #  83    0x9d7af  1      OPC=nop             
  nop                                                                          #  84    0x9d7b0  1      OPC=nop             
  nop                                                                          #  85    0x9d7b1  1      OPC=nop             
  nop                                                                          #  86    0x9d7b2  1      OPC=nop             
  nop                                                                          #  87    0x9d7b3  1      OPC=nop             
  nop                                                                          #  88    0x9d7b4  1      OPC=nop             
  nop                                                                          #  89    0x9d7b5  1      OPC=nop             
  nop                                                                          #  90    0x9d7b6  1      OPC=nop             
  nop                                                                          #  91    0x9d7b7  1      OPC=nop             
  nop                                                                          #  92    0x9d7b8  1      OPC=nop             
  nop                                                                          #  93    0x9d7b9  1      OPC=nop             
  nop                                                                          #  94    0x9d7ba  1      OPC=nop             
  nop                                                                          #  95    0x9d7bb  1      OPC=nop             
  nop                                                                          #  96    0x9d7bc  1      OPC=nop             
  nop                                                                          #  97    0x9d7bd  1      OPC=nop             
  nop                                                                          #  98    0x9d7be  1      OPC=nop             
  nop                                                                          #  99    0x9d7bf  1      OPC=nop             
  nop                                                                          #  100   0x9d7c0  1      OPC=nop             
  nop                                                                          #  101   0x9d7c1  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  102   0x9d7c2  5      OPC=callq_label     
                                                                                                                            
.size _ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE, .-_ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE

