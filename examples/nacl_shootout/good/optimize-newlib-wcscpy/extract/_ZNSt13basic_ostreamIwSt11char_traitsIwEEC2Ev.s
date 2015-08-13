  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2Ev
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2Ev, @function

#! file-offset 0xdd000
#! rip-offset  0x9d000
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEEC2Ev:                                #        0x9d000  0      OPC=<label>         
  movl %esi, %esi                                                              #  1     0x9d000  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x9d002  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x9d005  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x9d008  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                              #  5     0x9d00a  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                                     #  6     0x9d00c  4      OPC=movl_r32_m32    
  movl %esi, %esi                                                              #  7     0x9d010  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                                                  #  8     0x9d012  5      OPC=movl_r32_m32    
  xorl %esi, %esi                                                              #  9     0x9d017  2      OPC=xorl_r32_r32    
  movl %edi, %edi                                                              #  10    0x9d019  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                                     #  11    0x9d01b  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x9d01f  1      OPC=nop             
  subl $0xc, %eax                                                              #  13    0x9d020  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  14    0x9d023  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                     #  15    0x9d025  4      OPC=movl_r32_m32    
  addl %edi, %eax                                                              #  16    0x9d029  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                              #  17    0x9d02b  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                                                     #  18    0x9d02d  4      OPC=movl_m32_r32    
  movl %edi, %edi                                                              #  19    0x9d031  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  20    0x9d033  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  21    0x9d037  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  22    0x9d03a  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  23    0x9d03c  4      OPC=addl_r32_m32    
  nop                                                                          #  24    0x9d040  1      OPC=nop             
  nop                                                                          #  25    0x9d041  1      OPC=nop             
  nop                                                                          #  26    0x9d042  1      OPC=nop             
  nop                                                                          #  27    0x9d043  1      OPC=nop             
  nop                                                                          #  28    0x9d044  1      OPC=nop             
  nop                                                                          #  29    0x9d045  1      OPC=nop             
  nop                                                                          #  30    0x9d046  1      OPC=nop             
  nop                                                                          #  31    0x9d047  1      OPC=nop             
  nop                                                                          #  32    0x9d048  1      OPC=nop             
  nop                                                                          #  33    0x9d049  1      OPC=nop             
  nop                                                                          #  34    0x9d04a  1      OPC=nop             
  nop                                                                          #  35    0x9d04b  1      OPC=nop             
  nop                                                                          #  36    0x9d04c  1      OPC=nop             
  nop                                                                          #  37    0x9d04d  1      OPC=nop             
  nop                                                                          #  38    0x9d04e  1      OPC=nop             
  nop                                                                          #  39    0x9d04f  1      OPC=nop             
  nop                                                                          #  40    0x9d050  1      OPC=nop             
  nop                                                                          #  41    0x9d051  1      OPC=nop             
  nop                                                                          #  42    0x9d052  1      OPC=nop             
  nop                                                                          #  43    0x9d053  1      OPC=nop             
  nop                                                                          #  44    0x9d054  1      OPC=nop             
  nop                                                                          #  45    0x9d055  1      OPC=nop             
  nop                                                                          #  46    0x9d056  1      OPC=nop             
  nop                                                                          #  47    0x9d057  1      OPC=nop             
  nop                                                                          #  48    0x9d058  1      OPC=nop             
  nop                                                                          #  49    0x9d059  1      OPC=nop             
  nop                                                                          #  50    0x9d05a  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E  #  51    0x9d05b  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  52    0x9d060  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  53    0x9d063  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  54    0x9d066  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  55    0x9d068  7      OPC=andl_r32_imm32  
  nop                                                                          #  56    0x9d06f  1      OPC=nop             
  nop                                                                          #  57    0x9d070  1      OPC=nop             
  nop                                                                          #  58    0x9d071  1      OPC=nop             
  nop                                                                          #  59    0x9d072  1      OPC=nop             
  addq %r15, %r11                                                              #  60    0x9d073  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  61    0x9d076  3      OPC=jmpq_r64        
  nop                                                                          #  62    0x9d079  1      OPC=nop             
  nop                                                                          #  63    0x9d07a  1      OPC=nop             
  nop                                                                          #  64    0x9d07b  1      OPC=nop             
  nop                                                                          #  65    0x9d07c  1      OPC=nop             
  nop                                                                          #  66    0x9d07d  1      OPC=nop             
  nop                                                                          #  67    0x9d07e  1      OPC=nop             
  nop                                                                          #  68    0x9d07f  1      OPC=nop             
  nop                                                                          #  69    0x9d080  1      OPC=nop             
  nop                                                                          #  70    0x9d081  1      OPC=nop             
  nop                                                                          #  71    0x9d082  1      OPC=nop             
  nop                                                                          #  72    0x9d083  1      OPC=nop             
  nop                                                                          #  73    0x9d084  1      OPC=nop             
  nop                                                                          #  74    0x9d085  1      OPC=nop             
  nop                                                                          #  75    0x9d086  1      OPC=nop             
  movl %eax, %edi                                                              #  76    0x9d087  2      OPC=movl_r32_r32    
  nop                                                                          #  77    0x9d089  1      OPC=nop             
  nop                                                                          #  78    0x9d08a  1      OPC=nop             
  nop                                                                          #  79    0x9d08b  1      OPC=nop             
  nop                                                                          #  80    0x9d08c  1      OPC=nop             
  nop                                                                          #  81    0x9d08d  1      OPC=nop             
  nop                                                                          #  82    0x9d08e  1      OPC=nop             
  nop                                                                          #  83    0x9d08f  1      OPC=nop             
  nop                                                                          #  84    0x9d090  1      OPC=nop             
  nop                                                                          #  85    0x9d091  1      OPC=nop             
  nop                                                                          #  86    0x9d092  1      OPC=nop             
  nop                                                                          #  87    0x9d093  1      OPC=nop             
  nop                                                                          #  88    0x9d094  1      OPC=nop             
  nop                                                                          #  89    0x9d095  1      OPC=nop             
  nop                                                                          #  90    0x9d096  1      OPC=nop             
  nop                                                                          #  91    0x9d097  1      OPC=nop             
  nop                                                                          #  92    0x9d098  1      OPC=nop             
  nop                                                                          #  93    0x9d099  1      OPC=nop             
  nop                                                                          #  94    0x9d09a  1      OPC=nop             
  nop                                                                          #  95    0x9d09b  1      OPC=nop             
  nop                                                                          #  96    0x9d09c  1      OPC=nop             
  nop                                                                          #  97    0x9d09d  1      OPC=nop             
  nop                                                                          #  98    0x9d09e  1      OPC=nop             
  nop                                                                          #  99    0x9d09f  1      OPC=nop             
  nop                                                                          #  100   0x9d0a0  1      OPC=nop             
  nop                                                                          #  101   0x9d0a1  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  102   0x9d0a2  5      OPC=callq_label     
                                                                                                                            
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2Ev, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEEC2Ev

