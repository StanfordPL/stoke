  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev, @function

#! file-offset 0xa7da0
#! rip-offset  0x67da0
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev:                                #        0x67da0  0      OPC=<label>         
  movl %esi, %esi                                                              #  1     0x67da0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x67da2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x67da5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x67da8  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                              #  5     0x67daa  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                                     #  6     0x67dac  4      OPC=movl_r32_m32    
  movl %esi, %esi                                                              #  7     0x67db0  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                                                  #  8     0x67db2  5      OPC=movl_r32_m32    
  xorl %esi, %esi                                                              #  9     0x67db7  2      OPC=xorl_r32_r32    
  movl %edi, %edi                                                              #  10    0x67db9  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                                     #  11    0x67dbb  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x67dbf  1      OPC=nop             
  subl $0xc, %eax                                                              #  13    0x67dc0  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  14    0x67dc3  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                     #  15    0x67dc5  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  16    0x67dc9  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                                                  #  17    0x67dcb  9      OPC=movl_m32_imm32  
  addl %edi, %eax                                                              #  18    0x67dd4  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                              #  19    0x67dd6  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                                                     #  20    0x67dd8  4      OPC=movl_m32_r32    
  nop                                                                          #  21    0x67ddc  1      OPC=nop             
  nop                                                                          #  22    0x67ddd  1      OPC=nop             
  nop                                                                          #  23    0x67dde  1      OPC=nop             
  nop                                                                          #  24    0x67ddf  1      OPC=nop             
  movl %edi, %edi                                                              #  25    0x67de0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  26    0x67de2  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  27    0x67de6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  28    0x67de9  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  29    0x67deb  4      OPC=addl_r32_m32    
  nop                                                                          #  30    0x67def  1      OPC=nop             
  nop                                                                          #  31    0x67df0  1      OPC=nop             
  nop                                                                          #  32    0x67df1  1      OPC=nop             
  nop                                                                          #  33    0x67df2  1      OPC=nop             
  nop                                                                          #  34    0x67df3  1      OPC=nop             
  nop                                                                          #  35    0x67df4  1      OPC=nop             
  nop                                                                          #  36    0x67df5  1      OPC=nop             
  nop                                                                          #  37    0x67df6  1      OPC=nop             
  nop                                                                          #  38    0x67df7  1      OPC=nop             
  nop                                                                          #  39    0x67df8  1      OPC=nop             
  nop                                                                          #  40    0x67df9  1      OPC=nop             
  nop                                                                          #  41    0x67dfa  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E  #  42    0x67dfb  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  43    0x67e00  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  44    0x67e03  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  45    0x67e06  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  46    0x67e08  7      OPC=andl_r32_imm32  
  nop                                                                          #  47    0x67e0f  1      OPC=nop             
  nop                                                                          #  48    0x67e10  1      OPC=nop             
  nop                                                                          #  49    0x67e11  1      OPC=nop             
  nop                                                                          #  50    0x67e12  1      OPC=nop             
  addq %r15, %r11                                                              #  51    0x67e13  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  52    0x67e16  3      OPC=jmpq_r64        
  nop                                                                          #  53    0x67e19  1      OPC=nop             
  nop                                                                          #  54    0x67e1a  1      OPC=nop             
  nop                                                                          #  55    0x67e1b  1      OPC=nop             
  nop                                                                          #  56    0x67e1c  1      OPC=nop             
  nop                                                                          #  57    0x67e1d  1      OPC=nop             
  nop                                                                          #  58    0x67e1e  1      OPC=nop             
  nop                                                                          #  59    0x67e1f  1      OPC=nop             
  nop                                                                          #  60    0x67e20  1      OPC=nop             
  nop                                                                          #  61    0x67e21  1      OPC=nop             
  nop                                                                          #  62    0x67e22  1      OPC=nop             
  nop                                                                          #  63    0x67e23  1      OPC=nop             
  nop                                                                          #  64    0x67e24  1      OPC=nop             
  nop                                                                          #  65    0x67e25  1      OPC=nop             
  nop                                                                          #  66    0x67e26  1      OPC=nop             
  movl %eax, %edi                                                              #  67    0x67e27  2      OPC=movl_r32_r32    
  nop                                                                          #  68    0x67e29  1      OPC=nop             
  nop                                                                          #  69    0x67e2a  1      OPC=nop             
  nop                                                                          #  70    0x67e2b  1      OPC=nop             
  nop                                                                          #  71    0x67e2c  1      OPC=nop             
  nop                                                                          #  72    0x67e2d  1      OPC=nop             
  nop                                                                          #  73    0x67e2e  1      OPC=nop             
  nop                                                                          #  74    0x67e2f  1      OPC=nop             
  nop                                                                          #  75    0x67e30  1      OPC=nop             
  nop                                                                          #  76    0x67e31  1      OPC=nop             
  nop                                                                          #  77    0x67e32  1      OPC=nop             
  nop                                                                          #  78    0x67e33  1      OPC=nop             
  nop                                                                          #  79    0x67e34  1      OPC=nop             
  nop                                                                          #  80    0x67e35  1      OPC=nop             
  nop                                                                          #  81    0x67e36  1      OPC=nop             
  nop                                                                          #  82    0x67e37  1      OPC=nop             
  nop                                                                          #  83    0x67e38  1      OPC=nop             
  nop                                                                          #  84    0x67e39  1      OPC=nop             
  nop                                                                          #  85    0x67e3a  1      OPC=nop             
  nop                                                                          #  86    0x67e3b  1      OPC=nop             
  nop                                                                          #  87    0x67e3c  1      OPC=nop             
  nop                                                                          #  88    0x67e3d  1      OPC=nop             
  nop                                                                          #  89    0x67e3e  1      OPC=nop             
  nop                                                                          #  90    0x67e3f  1      OPC=nop             
  nop                                                                          #  91    0x67e40  1      OPC=nop             
  nop                                                                          #  92    0x67e41  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  93    0x67e42  5      OPC=callq_label     
                                                                                                                            
.size _ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev, .-_ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev

