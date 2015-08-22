  .text
  .globl _ZNSiC2Ev
  .type _ZNSiC2Ev, @function

#! file-offset 0xa81c0
#! rip-offset  0x681c0
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSiC2Ev:                                                                    #        0x681c0  0      OPC=<label>         
  movl %esi, %esi                                                              #  1     0x681c0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x681c2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x681c5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x681c8  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                              #  5     0x681ca  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                                     #  6     0x681cc  4      OPC=movl_r32_m32    
  movl %esi, %esi                                                              #  7     0x681d0  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                                                  #  8     0x681d2  5      OPC=movl_r32_m32    
  xorl %esi, %esi                                                              #  9     0x681d7  2      OPC=xorl_r32_r32    
  movl %edi, %edi                                                              #  10    0x681d9  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                                     #  11    0x681db  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x681df  1      OPC=nop             
  subl $0xc, %eax                                                              #  13    0x681e0  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  14    0x681e3  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                     #  15    0x681e5  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  16    0x681e9  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                                                  #  17    0x681eb  9      OPC=movl_m32_imm32  
  addl %edi, %eax                                                              #  18    0x681f4  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                              #  19    0x681f6  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                                                     #  20    0x681f8  4      OPC=movl_m32_r32    
  nop                                                                          #  21    0x681fc  1      OPC=nop             
  nop                                                                          #  22    0x681fd  1      OPC=nop             
  nop                                                                          #  23    0x681fe  1      OPC=nop             
  nop                                                                          #  24    0x681ff  1      OPC=nop             
  movl %edi, %edi                                                              #  25    0x68200  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  26    0x68202  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  27    0x68206  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  28    0x68209  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  29    0x6820b  4      OPC=addl_r32_m32    
  nop                                                                          #  30    0x6820f  1      OPC=nop             
  nop                                                                          #  31    0x68210  1      OPC=nop             
  nop                                                                          #  32    0x68211  1      OPC=nop             
  nop                                                                          #  33    0x68212  1      OPC=nop             
  nop                                                                          #  34    0x68213  1      OPC=nop             
  nop                                                                          #  35    0x68214  1      OPC=nop             
  nop                                                                          #  36    0x68215  1      OPC=nop             
  nop                                                                          #  37    0x68216  1      OPC=nop             
  nop                                                                          #  38    0x68217  1      OPC=nop             
  nop                                                                          #  39    0x68218  1      OPC=nop             
  nop                                                                          #  40    0x68219  1      OPC=nop             
  nop                                                                          #  41    0x6821a  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E  #  42    0x6821b  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  43    0x68220  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  44    0x68223  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  45    0x68226  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  46    0x68228  7      OPC=andl_r32_imm32  
  nop                                                                          #  47    0x6822f  1      OPC=nop             
  nop                                                                          #  48    0x68230  1      OPC=nop             
  nop                                                                          #  49    0x68231  1      OPC=nop             
  nop                                                                          #  50    0x68232  1      OPC=nop             
  addq %r15, %r11                                                              #  51    0x68233  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  52    0x68236  3      OPC=jmpq_r64        
  nop                                                                          #  53    0x68239  1      OPC=nop             
  nop                                                                          #  54    0x6823a  1      OPC=nop             
  nop                                                                          #  55    0x6823b  1      OPC=nop             
  nop                                                                          #  56    0x6823c  1      OPC=nop             
  nop                                                                          #  57    0x6823d  1      OPC=nop             
  nop                                                                          #  58    0x6823e  1      OPC=nop             
  nop                                                                          #  59    0x6823f  1      OPC=nop             
  nop                                                                          #  60    0x68240  1      OPC=nop             
  nop                                                                          #  61    0x68241  1      OPC=nop             
  nop                                                                          #  62    0x68242  1      OPC=nop             
  nop                                                                          #  63    0x68243  1      OPC=nop             
  nop                                                                          #  64    0x68244  1      OPC=nop             
  nop                                                                          #  65    0x68245  1      OPC=nop             
  nop                                                                          #  66    0x68246  1      OPC=nop             
  movl %eax, %edi                                                              #  67    0x68247  2      OPC=movl_r32_r32    
  nop                                                                          #  68    0x68249  1      OPC=nop             
  nop                                                                          #  69    0x6824a  1      OPC=nop             
  nop                                                                          #  70    0x6824b  1      OPC=nop             
  nop                                                                          #  71    0x6824c  1      OPC=nop             
  nop                                                                          #  72    0x6824d  1      OPC=nop             
  nop                                                                          #  73    0x6824e  1      OPC=nop             
  nop                                                                          #  74    0x6824f  1      OPC=nop             
  nop                                                                          #  75    0x68250  1      OPC=nop             
  nop                                                                          #  76    0x68251  1      OPC=nop             
  nop                                                                          #  77    0x68252  1      OPC=nop             
  nop                                                                          #  78    0x68253  1      OPC=nop             
  nop                                                                          #  79    0x68254  1      OPC=nop             
  nop                                                                          #  80    0x68255  1      OPC=nop             
  nop                                                                          #  81    0x68256  1      OPC=nop             
  nop                                                                          #  82    0x68257  1      OPC=nop             
  nop                                                                          #  83    0x68258  1      OPC=nop             
  nop                                                                          #  84    0x68259  1      OPC=nop             
  nop                                                                          #  85    0x6825a  1      OPC=nop             
  nop                                                                          #  86    0x6825b  1      OPC=nop             
  nop                                                                          #  87    0x6825c  1      OPC=nop             
  nop                                                                          #  88    0x6825d  1      OPC=nop             
  nop                                                                          #  89    0x6825e  1      OPC=nop             
  nop                                                                          #  90    0x6825f  1      OPC=nop             
  nop                                                                          #  91    0x68260  1      OPC=nop             
  nop                                                                          #  92    0x68261  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  93    0x68262  5      OPC=callq_label     
                                                                                                                            
.size _ZNSiC2Ev, .-_ZNSiC2Ev

