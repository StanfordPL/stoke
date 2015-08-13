  .text
  .globl _ZNSiC2EPSt15basic_streambufIcSt11char_traitsIcEE
  .type _ZNSiC2EPSt15basic_streambufIcSt11char_traitsIcEE, @function

#! file-offset 0xa7980
#! rip-offset  0x67980
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSiC2EPSt15basic_streambufIcSt11char_traitsIcEE:                            #        0x67980  0      OPC=<label>         
  movl %esi, %eax                                                              #  1     0x67980  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x67982  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x67985  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x67988  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  5     0x6798a  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx                                                     #  6     0x6798c  4      OPC=movl_r32_m32    
  movl %edx, %esi                                                              #  7     0x67990  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  8     0x67992  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                                                  #  9     0x67994  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  10    0x67999  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdi,1)                                                     #  11    0x6799b  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x6799f  1      OPC=nop             
  subl $0xc, %ecx                                                              #  13    0x679a0  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                                              #  14    0x679a3  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %edx                                                     #  15    0x679a5  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  16    0x679a9  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                                                  #  17    0x679ab  9      OPC=movl_m32_imm32  
  addl %edi, %edx                                                              #  18    0x679b4  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                              #  19    0x679b6  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)                                                     #  20    0x679b8  4      OPC=movl_m32_r32    
  nop                                                                          #  21    0x679bc  1      OPC=nop             
  nop                                                                          #  22    0x679bd  1      OPC=nop             
  nop                                                                          #  23    0x679be  1      OPC=nop             
  nop                                                                          #  24    0x679bf  1      OPC=nop             
  movl %edi, %edi                                                              #  25    0x679c0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  26    0x679c2  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  27    0x679c6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  28    0x679c9  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  29    0x679cb  4      OPC=addl_r32_m32    
  nop                                                                          #  30    0x679cf  1      OPC=nop             
  nop                                                                          #  31    0x679d0  1      OPC=nop             
  nop                                                                          #  32    0x679d1  1      OPC=nop             
  nop                                                                          #  33    0x679d2  1      OPC=nop             
  nop                                                                          #  34    0x679d3  1      OPC=nop             
  nop                                                                          #  35    0x679d4  1      OPC=nop             
  nop                                                                          #  36    0x679d5  1      OPC=nop             
  nop                                                                          #  37    0x679d6  1      OPC=nop             
  nop                                                                          #  38    0x679d7  1      OPC=nop             
  nop                                                                          #  39    0x679d8  1      OPC=nop             
  nop                                                                          #  40    0x679d9  1      OPC=nop             
  nop                                                                          #  41    0x679da  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E  #  42    0x679db  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  43    0x679e0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  44    0x679e3  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  45    0x679e6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  46    0x679e8  7      OPC=andl_r32_imm32  
  nop                                                                          #  47    0x679ef  1      OPC=nop             
  nop                                                                          #  48    0x679f0  1      OPC=nop             
  nop                                                                          #  49    0x679f1  1      OPC=nop             
  nop                                                                          #  50    0x679f2  1      OPC=nop             
  addq %r15, %r11                                                              #  51    0x679f3  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  52    0x679f6  3      OPC=jmpq_r64        
  nop                                                                          #  53    0x679f9  1      OPC=nop             
  nop                                                                          #  54    0x679fa  1      OPC=nop             
  nop                                                                          #  55    0x679fb  1      OPC=nop             
  nop                                                                          #  56    0x679fc  1      OPC=nop             
  nop                                                                          #  57    0x679fd  1      OPC=nop             
  nop                                                                          #  58    0x679fe  1      OPC=nop             
  nop                                                                          #  59    0x679ff  1      OPC=nop             
  nop                                                                          #  60    0x67a00  1      OPC=nop             
  nop                                                                          #  61    0x67a01  1      OPC=nop             
  nop                                                                          #  62    0x67a02  1      OPC=nop             
  nop                                                                          #  63    0x67a03  1      OPC=nop             
  nop                                                                          #  64    0x67a04  1      OPC=nop             
  nop                                                                          #  65    0x67a05  1      OPC=nop             
  nop                                                                          #  66    0x67a06  1      OPC=nop             
  movl %eax, %edi                                                              #  67    0x67a07  2      OPC=movl_r32_r32    
  nop                                                                          #  68    0x67a09  1      OPC=nop             
  nop                                                                          #  69    0x67a0a  1      OPC=nop             
  nop                                                                          #  70    0x67a0b  1      OPC=nop             
  nop                                                                          #  71    0x67a0c  1      OPC=nop             
  nop                                                                          #  72    0x67a0d  1      OPC=nop             
  nop                                                                          #  73    0x67a0e  1      OPC=nop             
  nop                                                                          #  74    0x67a0f  1      OPC=nop             
  nop                                                                          #  75    0x67a10  1      OPC=nop             
  nop                                                                          #  76    0x67a11  1      OPC=nop             
  nop                                                                          #  77    0x67a12  1      OPC=nop             
  nop                                                                          #  78    0x67a13  1      OPC=nop             
  nop                                                                          #  79    0x67a14  1      OPC=nop             
  nop                                                                          #  80    0x67a15  1      OPC=nop             
  nop                                                                          #  81    0x67a16  1      OPC=nop             
  nop                                                                          #  82    0x67a17  1      OPC=nop             
  nop                                                                          #  83    0x67a18  1      OPC=nop             
  nop                                                                          #  84    0x67a19  1      OPC=nop             
  nop                                                                          #  85    0x67a1a  1      OPC=nop             
  nop                                                                          #  86    0x67a1b  1      OPC=nop             
  nop                                                                          #  87    0x67a1c  1      OPC=nop             
  nop                                                                          #  88    0x67a1d  1      OPC=nop             
  nop                                                                          #  89    0x67a1e  1      OPC=nop             
  nop                                                                          #  90    0x67a1f  1      OPC=nop             
  nop                                                                          #  91    0x67a20  1      OPC=nop             
  nop                                                                          #  92    0x67a21  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  93    0x67a22  5      OPC=callq_label     
                                                                                                                            
.size _ZNSiC2EPSt15basic_streambufIcSt11char_traitsIcEE, .-_ZNSiC2EPSt15basic_streambufIcSt11char_traitsIcEE

