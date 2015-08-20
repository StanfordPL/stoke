  .text
  .globl _ZNSiC2Ev
  .type _ZNSiC2Ev, @function

#! file-offset 0xa7aa0
#! rip-offset  0x67aa0
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSiC2Ev:                                                                    #        0x67aa0  0      OPC=<label>         
  movl %esi, %esi                                                              #  1     0x67aa0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x67aa2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x67aa5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x67aa8  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                              #  5     0x67aaa  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                                     #  6     0x67aac  4      OPC=movl_r32_m32    
  movl %esi, %esi                                                              #  7     0x67ab0  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                                                  #  8     0x67ab2  5      OPC=movl_r32_m32    
  xorl %esi, %esi                                                              #  9     0x67ab7  2      OPC=xorl_r32_r32    
  movl %edi, %edi                                                              #  10    0x67ab9  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                                     #  11    0x67abb  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x67abf  1      OPC=nop             
  subl $0xc, %eax                                                              #  13    0x67ac0  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  14    0x67ac3  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                     #  15    0x67ac5  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  16    0x67ac9  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                                                  #  17    0x67acb  9      OPC=movl_m32_imm32  
  addl %edi, %eax                                                              #  18    0x67ad4  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                              #  19    0x67ad6  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                                                     #  20    0x67ad8  4      OPC=movl_m32_r32    
  nop                                                                          #  21    0x67adc  1      OPC=nop             
  nop                                                                          #  22    0x67add  1      OPC=nop             
  nop                                                                          #  23    0x67ade  1      OPC=nop             
  nop                                                                          #  24    0x67adf  1      OPC=nop             
  movl %edi, %edi                                                              #  25    0x67ae0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  26    0x67ae2  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  27    0x67ae6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  28    0x67ae9  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  29    0x67aeb  4      OPC=addl_r32_m32    
  nop                                                                          #  30    0x67aef  1      OPC=nop             
  nop                                                                          #  31    0x67af0  1      OPC=nop             
  nop                                                                          #  32    0x67af1  1      OPC=nop             
  nop                                                                          #  33    0x67af2  1      OPC=nop             
  nop                                                                          #  34    0x67af3  1      OPC=nop             
  nop                                                                          #  35    0x67af4  1      OPC=nop             
  nop                                                                          #  36    0x67af5  1      OPC=nop             
  nop                                                                          #  37    0x67af6  1      OPC=nop             
  nop                                                                          #  38    0x67af7  1      OPC=nop             
  nop                                                                          #  39    0x67af8  1      OPC=nop             
  nop                                                                          #  40    0x67af9  1      OPC=nop             
  nop                                                                          #  41    0x67afa  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E  #  42    0x67afb  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  43    0x67b00  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  44    0x67b03  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  45    0x67b06  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  46    0x67b08  7      OPC=andl_r32_imm32  
  nop                                                                          #  47    0x67b0f  1      OPC=nop             
  nop                                                                          #  48    0x67b10  1      OPC=nop             
  nop                                                                          #  49    0x67b11  1      OPC=nop             
  nop                                                                          #  50    0x67b12  1      OPC=nop             
  addq %r15, %r11                                                              #  51    0x67b13  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  52    0x67b16  3      OPC=jmpq_r64        
  nop                                                                          #  53    0x67b19  1      OPC=nop             
  nop                                                                          #  54    0x67b1a  1      OPC=nop             
  nop                                                                          #  55    0x67b1b  1      OPC=nop             
  nop                                                                          #  56    0x67b1c  1      OPC=nop             
  nop                                                                          #  57    0x67b1d  1      OPC=nop             
  nop                                                                          #  58    0x67b1e  1      OPC=nop             
  nop                                                                          #  59    0x67b1f  1      OPC=nop             
  nop                                                                          #  60    0x67b20  1      OPC=nop             
  nop                                                                          #  61    0x67b21  1      OPC=nop             
  nop                                                                          #  62    0x67b22  1      OPC=nop             
  nop                                                                          #  63    0x67b23  1      OPC=nop             
  nop                                                                          #  64    0x67b24  1      OPC=nop             
  nop                                                                          #  65    0x67b25  1      OPC=nop             
  nop                                                                          #  66    0x67b26  1      OPC=nop             
  movl %eax, %edi                                                              #  67    0x67b27  2      OPC=movl_r32_r32    
  nop                                                                          #  68    0x67b29  1      OPC=nop             
  nop                                                                          #  69    0x67b2a  1      OPC=nop             
  nop                                                                          #  70    0x67b2b  1      OPC=nop             
  nop                                                                          #  71    0x67b2c  1      OPC=nop             
  nop                                                                          #  72    0x67b2d  1      OPC=nop             
  nop                                                                          #  73    0x67b2e  1      OPC=nop             
  nop                                                                          #  74    0x67b2f  1      OPC=nop             
  nop                                                                          #  75    0x67b30  1      OPC=nop             
  nop                                                                          #  76    0x67b31  1      OPC=nop             
  nop                                                                          #  77    0x67b32  1      OPC=nop             
  nop                                                                          #  78    0x67b33  1      OPC=nop             
  nop                                                                          #  79    0x67b34  1      OPC=nop             
  nop                                                                          #  80    0x67b35  1      OPC=nop             
  nop                                                                          #  81    0x67b36  1      OPC=nop             
  nop                                                                          #  82    0x67b37  1      OPC=nop             
  nop                                                                          #  83    0x67b38  1      OPC=nop             
  nop                                                                          #  84    0x67b39  1      OPC=nop             
  nop                                                                          #  85    0x67b3a  1      OPC=nop             
  nop                                                                          #  86    0x67b3b  1      OPC=nop             
  nop                                                                          #  87    0x67b3c  1      OPC=nop             
  nop                                                                          #  88    0x67b3d  1      OPC=nop             
  nop                                                                          #  89    0x67b3e  1      OPC=nop             
  nop                                                                          #  90    0x67b3f  1      OPC=nop             
  nop                                                                          #  91    0x67b40  1      OPC=nop             
  nop                                                                          #  92    0x67b41  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  93    0x67b42  5      OPC=callq_label     
                                                                                                                            
.size _ZNSiC2Ev, .-_ZNSiC2Ev

