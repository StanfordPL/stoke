  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E, @function

#! file-offset 0xddac0
#! rip-offset  0x9dac0
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E:       #        0x9dac0  0      OPC=<label>         
  movl %esi, %eax                                                              #  1     0x9dac0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x9dac2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x9dac5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x9dac8  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  5     0x9daca  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx                                                     #  6     0x9dacc  4      OPC=movl_r32_m32    
  movl %edx, %esi                                                              #  7     0x9dad0  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  8     0x9dad2  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                                                  #  9     0x9dad4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  10    0x9dad9  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdi,1)                                                     #  11    0x9dadb  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x9dadf  1      OPC=nop             
  subl $0xc, %ecx                                                              #  13    0x9dae0  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                                              #  14    0x9dae3  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %edx                                                     #  15    0x9dae5  4      OPC=movl_r32_m32    
  addl %edi, %edx                                                              #  16    0x9dae9  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                              #  17    0x9daeb  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)                                                     #  18    0x9daed  4      OPC=movl_m32_r32    
  movl %edi, %edi                                                              #  19    0x9daf1  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  20    0x9daf3  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  21    0x9daf7  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  22    0x9dafa  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  23    0x9dafc  4      OPC=addl_r32_m32    
  nop                                                                          #  24    0x9db00  1      OPC=nop             
  nop                                                                          #  25    0x9db01  1      OPC=nop             
  nop                                                                          #  26    0x9db02  1      OPC=nop             
  nop                                                                          #  27    0x9db03  1      OPC=nop             
  nop                                                                          #  28    0x9db04  1      OPC=nop             
  nop                                                                          #  29    0x9db05  1      OPC=nop             
  nop                                                                          #  30    0x9db06  1      OPC=nop             
  nop                                                                          #  31    0x9db07  1      OPC=nop             
  nop                                                                          #  32    0x9db08  1      OPC=nop             
  nop                                                                          #  33    0x9db09  1      OPC=nop             
  nop                                                                          #  34    0x9db0a  1      OPC=nop             
  nop                                                                          #  35    0x9db0b  1      OPC=nop             
  nop                                                                          #  36    0x9db0c  1      OPC=nop             
  nop                                                                          #  37    0x9db0d  1      OPC=nop             
  nop                                                                          #  38    0x9db0e  1      OPC=nop             
  nop                                                                          #  39    0x9db0f  1      OPC=nop             
  nop                                                                          #  40    0x9db10  1      OPC=nop             
  nop                                                                          #  41    0x9db11  1      OPC=nop             
  nop                                                                          #  42    0x9db12  1      OPC=nop             
  nop                                                                          #  43    0x9db13  1      OPC=nop             
  nop                                                                          #  44    0x9db14  1      OPC=nop             
  nop                                                                          #  45    0x9db15  1      OPC=nop             
  nop                                                                          #  46    0x9db16  1      OPC=nop             
  nop                                                                          #  47    0x9db17  1      OPC=nop             
  nop                                                                          #  48    0x9db18  1      OPC=nop             
  nop                                                                          #  49    0x9db19  1      OPC=nop             
  nop                                                                          #  50    0x9db1a  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E  #  51    0x9db1b  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  52    0x9db20  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  53    0x9db23  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  54    0x9db26  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  55    0x9db28  7      OPC=andl_r32_imm32  
  nop                                                                          #  56    0x9db2f  1      OPC=nop             
  nop                                                                          #  57    0x9db30  1      OPC=nop             
  nop                                                                          #  58    0x9db31  1      OPC=nop             
  nop                                                                          #  59    0x9db32  1      OPC=nop             
  addq %r15, %r11                                                              #  60    0x9db33  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  61    0x9db36  3      OPC=jmpq_r64        
  nop                                                                          #  62    0x9db39  1      OPC=nop             
  nop                                                                          #  63    0x9db3a  1      OPC=nop             
  nop                                                                          #  64    0x9db3b  1      OPC=nop             
  nop                                                                          #  65    0x9db3c  1      OPC=nop             
  nop                                                                          #  66    0x9db3d  1      OPC=nop             
  nop                                                                          #  67    0x9db3e  1      OPC=nop             
  nop                                                                          #  68    0x9db3f  1      OPC=nop             
  nop                                                                          #  69    0x9db40  1      OPC=nop             
  nop                                                                          #  70    0x9db41  1      OPC=nop             
  nop                                                                          #  71    0x9db42  1      OPC=nop             
  nop                                                                          #  72    0x9db43  1      OPC=nop             
  nop                                                                          #  73    0x9db44  1      OPC=nop             
  nop                                                                          #  74    0x9db45  1      OPC=nop             
  nop                                                                          #  75    0x9db46  1      OPC=nop             
  movl %eax, %edi                                                              #  76    0x9db47  2      OPC=movl_r32_r32    
  nop                                                                          #  77    0x9db49  1      OPC=nop             
  nop                                                                          #  78    0x9db4a  1      OPC=nop             
  nop                                                                          #  79    0x9db4b  1      OPC=nop             
  nop                                                                          #  80    0x9db4c  1      OPC=nop             
  nop                                                                          #  81    0x9db4d  1      OPC=nop             
  nop                                                                          #  82    0x9db4e  1      OPC=nop             
  nop                                                                          #  83    0x9db4f  1      OPC=nop             
  nop                                                                          #  84    0x9db50  1      OPC=nop             
  nop                                                                          #  85    0x9db51  1      OPC=nop             
  nop                                                                          #  86    0x9db52  1      OPC=nop             
  nop                                                                          #  87    0x9db53  1      OPC=nop             
  nop                                                                          #  88    0x9db54  1      OPC=nop             
  nop                                                                          #  89    0x9db55  1      OPC=nop             
  nop                                                                          #  90    0x9db56  1      OPC=nop             
  nop                                                                          #  91    0x9db57  1      OPC=nop             
  nop                                                                          #  92    0x9db58  1      OPC=nop             
  nop                                                                          #  93    0x9db59  1      OPC=nop             
  nop                                                                          #  94    0x9db5a  1      OPC=nop             
  nop                                                                          #  95    0x9db5b  1      OPC=nop             
  nop                                                                          #  96    0x9db5c  1      OPC=nop             
  nop                                                                          #  97    0x9db5d  1      OPC=nop             
  nop                                                                          #  98    0x9db5e  1      OPC=nop             
  nop                                                                          #  99    0x9db5f  1      OPC=nop             
  nop                                                                          #  100   0x9db60  1      OPC=nop             
  nop                                                                          #  101   0x9db61  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  102   0x9db62  5      OPC=callq_label     
                                                                                                                            
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEEC2EPSt15basic_streambufIwS1_E

