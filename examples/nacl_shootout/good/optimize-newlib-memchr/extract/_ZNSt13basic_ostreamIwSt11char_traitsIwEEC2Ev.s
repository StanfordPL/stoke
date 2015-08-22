  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2Ev
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2Ev, @function

#! file-offset 0xdda20
#! rip-offset  0x9da20
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEEC2Ev:                                #        0x9da20  0      OPC=<label>         
  movl %esi, %esi                                                              #  1     0x9da20  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x9da22  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x9da25  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x9da28  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                              #  5     0x9da2a  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                                     #  6     0x9da2c  4      OPC=movl_r32_m32    
  movl %esi, %esi                                                              #  7     0x9da30  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                                                  #  8     0x9da32  5      OPC=movl_r32_m32    
  xorl %esi, %esi                                                              #  9     0x9da37  2      OPC=xorl_r32_r32    
  movl %edi, %edi                                                              #  10    0x9da39  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                                     #  11    0x9da3b  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x9da3f  1      OPC=nop             
  subl $0xc, %eax                                                              #  13    0x9da40  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  14    0x9da43  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                     #  15    0x9da45  4      OPC=movl_r32_m32    
  addl %edi, %eax                                                              #  16    0x9da49  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                              #  17    0x9da4b  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                                                     #  18    0x9da4d  4      OPC=movl_m32_r32    
  movl %edi, %edi                                                              #  19    0x9da51  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  20    0x9da53  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  21    0x9da57  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  22    0x9da5a  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  23    0x9da5c  4      OPC=addl_r32_m32    
  nop                                                                          #  24    0x9da60  1      OPC=nop             
  nop                                                                          #  25    0x9da61  1      OPC=nop             
  nop                                                                          #  26    0x9da62  1      OPC=nop             
  nop                                                                          #  27    0x9da63  1      OPC=nop             
  nop                                                                          #  28    0x9da64  1      OPC=nop             
  nop                                                                          #  29    0x9da65  1      OPC=nop             
  nop                                                                          #  30    0x9da66  1      OPC=nop             
  nop                                                                          #  31    0x9da67  1      OPC=nop             
  nop                                                                          #  32    0x9da68  1      OPC=nop             
  nop                                                                          #  33    0x9da69  1      OPC=nop             
  nop                                                                          #  34    0x9da6a  1      OPC=nop             
  nop                                                                          #  35    0x9da6b  1      OPC=nop             
  nop                                                                          #  36    0x9da6c  1      OPC=nop             
  nop                                                                          #  37    0x9da6d  1      OPC=nop             
  nop                                                                          #  38    0x9da6e  1      OPC=nop             
  nop                                                                          #  39    0x9da6f  1      OPC=nop             
  nop                                                                          #  40    0x9da70  1      OPC=nop             
  nop                                                                          #  41    0x9da71  1      OPC=nop             
  nop                                                                          #  42    0x9da72  1      OPC=nop             
  nop                                                                          #  43    0x9da73  1      OPC=nop             
  nop                                                                          #  44    0x9da74  1      OPC=nop             
  nop                                                                          #  45    0x9da75  1      OPC=nop             
  nop                                                                          #  46    0x9da76  1      OPC=nop             
  nop                                                                          #  47    0x9da77  1      OPC=nop             
  nop                                                                          #  48    0x9da78  1      OPC=nop             
  nop                                                                          #  49    0x9da79  1      OPC=nop             
  nop                                                                          #  50    0x9da7a  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E  #  51    0x9da7b  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  52    0x9da80  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  53    0x9da83  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  54    0x9da86  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  55    0x9da88  7      OPC=andl_r32_imm32  
  nop                                                                          #  56    0x9da8f  1      OPC=nop             
  nop                                                                          #  57    0x9da90  1      OPC=nop             
  nop                                                                          #  58    0x9da91  1      OPC=nop             
  nop                                                                          #  59    0x9da92  1      OPC=nop             
  addq %r15, %r11                                                              #  60    0x9da93  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  61    0x9da96  3      OPC=jmpq_r64        
  nop                                                                          #  62    0x9da99  1      OPC=nop             
  nop                                                                          #  63    0x9da9a  1      OPC=nop             
  nop                                                                          #  64    0x9da9b  1      OPC=nop             
  nop                                                                          #  65    0x9da9c  1      OPC=nop             
  nop                                                                          #  66    0x9da9d  1      OPC=nop             
  nop                                                                          #  67    0x9da9e  1      OPC=nop             
  nop                                                                          #  68    0x9da9f  1      OPC=nop             
  nop                                                                          #  69    0x9daa0  1      OPC=nop             
  nop                                                                          #  70    0x9daa1  1      OPC=nop             
  nop                                                                          #  71    0x9daa2  1      OPC=nop             
  nop                                                                          #  72    0x9daa3  1      OPC=nop             
  nop                                                                          #  73    0x9daa4  1      OPC=nop             
  nop                                                                          #  74    0x9daa5  1      OPC=nop             
  nop                                                                          #  75    0x9daa6  1      OPC=nop             
  movl %eax, %edi                                                              #  76    0x9daa7  2      OPC=movl_r32_r32    
  nop                                                                          #  77    0x9daa9  1      OPC=nop             
  nop                                                                          #  78    0x9daaa  1      OPC=nop             
  nop                                                                          #  79    0x9daab  1      OPC=nop             
  nop                                                                          #  80    0x9daac  1      OPC=nop             
  nop                                                                          #  81    0x9daad  1      OPC=nop             
  nop                                                                          #  82    0x9daae  1      OPC=nop             
  nop                                                                          #  83    0x9daaf  1      OPC=nop             
  nop                                                                          #  84    0x9dab0  1      OPC=nop             
  nop                                                                          #  85    0x9dab1  1      OPC=nop             
  nop                                                                          #  86    0x9dab2  1      OPC=nop             
  nop                                                                          #  87    0x9dab3  1      OPC=nop             
  nop                                                                          #  88    0x9dab4  1      OPC=nop             
  nop                                                                          #  89    0x9dab5  1      OPC=nop             
  nop                                                                          #  90    0x9dab6  1      OPC=nop             
  nop                                                                          #  91    0x9dab7  1      OPC=nop             
  nop                                                                          #  92    0x9dab8  1      OPC=nop             
  nop                                                                          #  93    0x9dab9  1      OPC=nop             
  nop                                                                          #  94    0x9daba  1      OPC=nop             
  nop                                                                          #  95    0x9dabb  1      OPC=nop             
  nop                                                                          #  96    0x9dabc  1      OPC=nop             
  nop                                                                          #  97    0x9dabd  1      OPC=nop             
  nop                                                                          #  98    0x9dabe  1      OPC=nop             
  nop                                                                          #  99    0x9dabf  1      OPC=nop             
  nop                                                                          #  100   0x9dac0  1      OPC=nop             
  nop                                                                          #  101   0x9dac1  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  102   0x9dac2  5      OPC=callq_label     
                                                                                                                            
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2Ev, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEEC2Ev

