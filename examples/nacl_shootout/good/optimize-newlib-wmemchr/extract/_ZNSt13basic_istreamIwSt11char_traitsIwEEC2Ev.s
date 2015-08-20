  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev, @function

#! file-offset 0xa7680
#! rip-offset  0x67680
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev:                                #        0x67680  0      OPC=<label>         
  movl %esi, %esi                                                              #  1     0x67680  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x67682  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x67685  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x67688  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                              #  5     0x6768a  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                                     #  6     0x6768c  4      OPC=movl_r32_m32    
  movl %esi, %esi                                                              #  7     0x67690  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                                                  #  8     0x67692  5      OPC=movl_r32_m32    
  xorl %esi, %esi                                                              #  9     0x67697  2      OPC=xorl_r32_r32    
  movl %edi, %edi                                                              #  10    0x67699  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                                     #  11    0x6769b  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x6769f  1      OPC=nop             
  subl $0xc, %eax                                                              #  13    0x676a0  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  14    0x676a3  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                     #  15    0x676a5  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  16    0x676a9  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                                                  #  17    0x676ab  9      OPC=movl_m32_imm32  
  addl %edi, %eax                                                              #  18    0x676b4  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                              #  19    0x676b6  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                                                     #  20    0x676b8  4      OPC=movl_m32_r32    
  nop                                                                          #  21    0x676bc  1      OPC=nop             
  nop                                                                          #  22    0x676bd  1      OPC=nop             
  nop                                                                          #  23    0x676be  1      OPC=nop             
  nop                                                                          #  24    0x676bf  1      OPC=nop             
  movl %edi, %edi                                                              #  25    0x676c0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  26    0x676c2  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  27    0x676c6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  28    0x676c9  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  29    0x676cb  4      OPC=addl_r32_m32    
  nop                                                                          #  30    0x676cf  1      OPC=nop             
  nop                                                                          #  31    0x676d0  1      OPC=nop             
  nop                                                                          #  32    0x676d1  1      OPC=nop             
  nop                                                                          #  33    0x676d2  1      OPC=nop             
  nop                                                                          #  34    0x676d3  1      OPC=nop             
  nop                                                                          #  35    0x676d4  1      OPC=nop             
  nop                                                                          #  36    0x676d5  1      OPC=nop             
  nop                                                                          #  37    0x676d6  1      OPC=nop             
  nop                                                                          #  38    0x676d7  1      OPC=nop             
  nop                                                                          #  39    0x676d8  1      OPC=nop             
  nop                                                                          #  40    0x676d9  1      OPC=nop             
  nop                                                                          #  41    0x676da  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E  #  42    0x676db  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  43    0x676e0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  44    0x676e3  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  45    0x676e6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  46    0x676e8  7      OPC=andl_r32_imm32  
  nop                                                                          #  47    0x676ef  1      OPC=nop             
  nop                                                                          #  48    0x676f0  1      OPC=nop             
  nop                                                                          #  49    0x676f1  1      OPC=nop             
  nop                                                                          #  50    0x676f2  1      OPC=nop             
  addq %r15, %r11                                                              #  51    0x676f3  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  52    0x676f6  3      OPC=jmpq_r64        
  nop                                                                          #  53    0x676f9  1      OPC=nop             
  nop                                                                          #  54    0x676fa  1      OPC=nop             
  nop                                                                          #  55    0x676fb  1      OPC=nop             
  nop                                                                          #  56    0x676fc  1      OPC=nop             
  nop                                                                          #  57    0x676fd  1      OPC=nop             
  nop                                                                          #  58    0x676fe  1      OPC=nop             
  nop                                                                          #  59    0x676ff  1      OPC=nop             
  nop                                                                          #  60    0x67700  1      OPC=nop             
  nop                                                                          #  61    0x67701  1      OPC=nop             
  nop                                                                          #  62    0x67702  1      OPC=nop             
  nop                                                                          #  63    0x67703  1      OPC=nop             
  nop                                                                          #  64    0x67704  1      OPC=nop             
  nop                                                                          #  65    0x67705  1      OPC=nop             
  nop                                                                          #  66    0x67706  1      OPC=nop             
  movl %eax, %edi                                                              #  67    0x67707  2      OPC=movl_r32_r32    
  nop                                                                          #  68    0x67709  1      OPC=nop             
  nop                                                                          #  69    0x6770a  1      OPC=nop             
  nop                                                                          #  70    0x6770b  1      OPC=nop             
  nop                                                                          #  71    0x6770c  1      OPC=nop             
  nop                                                                          #  72    0x6770d  1      OPC=nop             
  nop                                                                          #  73    0x6770e  1      OPC=nop             
  nop                                                                          #  74    0x6770f  1      OPC=nop             
  nop                                                                          #  75    0x67710  1      OPC=nop             
  nop                                                                          #  76    0x67711  1      OPC=nop             
  nop                                                                          #  77    0x67712  1      OPC=nop             
  nop                                                                          #  78    0x67713  1      OPC=nop             
  nop                                                                          #  79    0x67714  1      OPC=nop             
  nop                                                                          #  80    0x67715  1      OPC=nop             
  nop                                                                          #  81    0x67716  1      OPC=nop             
  nop                                                                          #  82    0x67717  1      OPC=nop             
  nop                                                                          #  83    0x67718  1      OPC=nop             
  nop                                                                          #  84    0x67719  1      OPC=nop             
  nop                                                                          #  85    0x6771a  1      OPC=nop             
  nop                                                                          #  86    0x6771b  1      OPC=nop             
  nop                                                                          #  87    0x6771c  1      OPC=nop             
  nop                                                                          #  88    0x6771d  1      OPC=nop             
  nop                                                                          #  89    0x6771e  1      OPC=nop             
  nop                                                                          #  90    0x6771f  1      OPC=nop             
  nop                                                                          #  91    0x67720  1      OPC=nop             
  nop                                                                          #  92    0x67721  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  93    0x67722  5      OPC=callq_label     
                                                                                                                            
.size _ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev, .-_ZNSt13basic_istreamIwSt11char_traitsIwEEC2Ev

