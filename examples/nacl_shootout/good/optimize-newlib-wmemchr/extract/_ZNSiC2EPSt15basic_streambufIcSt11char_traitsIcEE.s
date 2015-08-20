  .text
  .globl _ZNSiC2EPSt15basic_streambufIcSt11char_traitsIcEE
  .type _ZNSiC2EPSt15basic_streambufIcSt11char_traitsIcEE, @function

#! file-offset 0xa7c80
#! rip-offset  0x67c80
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSiC2EPSt15basic_streambufIcSt11char_traitsIcEE:                            #        0x67c80  0      OPC=<label>         
  movl %esi, %eax                                                              #  1     0x67c80  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x67c82  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x67c85  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x67c88  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  5     0x67c8a  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx                                                     #  6     0x67c8c  4      OPC=movl_r32_m32    
  movl %edx, %esi                                                              #  7     0x67c90  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  8     0x67c92  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                                                  #  9     0x67c94  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  10    0x67c99  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdi,1)                                                     #  11    0x67c9b  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x67c9f  1      OPC=nop             
  subl $0xc, %ecx                                                              #  13    0x67ca0  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                                              #  14    0x67ca3  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %edx                                                     #  15    0x67ca5  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  16    0x67ca9  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                                                  #  17    0x67cab  9      OPC=movl_m32_imm32  
  addl %edi, %edx                                                              #  18    0x67cb4  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                              #  19    0x67cb6  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)                                                     #  20    0x67cb8  4      OPC=movl_m32_r32    
  nop                                                                          #  21    0x67cbc  1      OPC=nop             
  nop                                                                          #  22    0x67cbd  1      OPC=nop             
  nop                                                                          #  23    0x67cbe  1      OPC=nop             
  nop                                                                          #  24    0x67cbf  1      OPC=nop             
  movl %edi, %edi                                                              #  25    0x67cc0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  26    0x67cc2  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  27    0x67cc6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  28    0x67cc9  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  29    0x67ccb  4      OPC=addl_r32_m32    
  nop                                                                          #  30    0x67ccf  1      OPC=nop             
  nop                                                                          #  31    0x67cd0  1      OPC=nop             
  nop                                                                          #  32    0x67cd1  1      OPC=nop             
  nop                                                                          #  33    0x67cd2  1      OPC=nop             
  nop                                                                          #  34    0x67cd3  1      OPC=nop             
  nop                                                                          #  35    0x67cd4  1      OPC=nop             
  nop                                                                          #  36    0x67cd5  1      OPC=nop             
  nop                                                                          #  37    0x67cd6  1      OPC=nop             
  nop                                                                          #  38    0x67cd7  1      OPC=nop             
  nop                                                                          #  39    0x67cd8  1      OPC=nop             
  nop                                                                          #  40    0x67cd9  1      OPC=nop             
  nop                                                                          #  41    0x67cda  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E  #  42    0x67cdb  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  43    0x67ce0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  44    0x67ce3  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  45    0x67ce6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  46    0x67ce8  7      OPC=andl_r32_imm32  
  nop                                                                          #  47    0x67cef  1      OPC=nop             
  nop                                                                          #  48    0x67cf0  1      OPC=nop             
  nop                                                                          #  49    0x67cf1  1      OPC=nop             
  nop                                                                          #  50    0x67cf2  1      OPC=nop             
  addq %r15, %r11                                                              #  51    0x67cf3  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  52    0x67cf6  3      OPC=jmpq_r64        
  nop                                                                          #  53    0x67cf9  1      OPC=nop             
  nop                                                                          #  54    0x67cfa  1      OPC=nop             
  nop                                                                          #  55    0x67cfb  1      OPC=nop             
  nop                                                                          #  56    0x67cfc  1      OPC=nop             
  nop                                                                          #  57    0x67cfd  1      OPC=nop             
  nop                                                                          #  58    0x67cfe  1      OPC=nop             
  nop                                                                          #  59    0x67cff  1      OPC=nop             
  nop                                                                          #  60    0x67d00  1      OPC=nop             
  nop                                                                          #  61    0x67d01  1      OPC=nop             
  nop                                                                          #  62    0x67d02  1      OPC=nop             
  nop                                                                          #  63    0x67d03  1      OPC=nop             
  nop                                                                          #  64    0x67d04  1      OPC=nop             
  nop                                                                          #  65    0x67d05  1      OPC=nop             
  nop                                                                          #  66    0x67d06  1      OPC=nop             
  movl %eax, %edi                                                              #  67    0x67d07  2      OPC=movl_r32_r32    
  nop                                                                          #  68    0x67d09  1      OPC=nop             
  nop                                                                          #  69    0x67d0a  1      OPC=nop             
  nop                                                                          #  70    0x67d0b  1      OPC=nop             
  nop                                                                          #  71    0x67d0c  1      OPC=nop             
  nop                                                                          #  72    0x67d0d  1      OPC=nop             
  nop                                                                          #  73    0x67d0e  1      OPC=nop             
  nop                                                                          #  74    0x67d0f  1      OPC=nop             
  nop                                                                          #  75    0x67d10  1      OPC=nop             
  nop                                                                          #  76    0x67d11  1      OPC=nop             
  nop                                                                          #  77    0x67d12  1      OPC=nop             
  nop                                                                          #  78    0x67d13  1      OPC=nop             
  nop                                                                          #  79    0x67d14  1      OPC=nop             
  nop                                                                          #  80    0x67d15  1      OPC=nop             
  nop                                                                          #  81    0x67d16  1      OPC=nop             
  nop                                                                          #  82    0x67d17  1      OPC=nop             
  nop                                                                          #  83    0x67d18  1      OPC=nop             
  nop                                                                          #  84    0x67d19  1      OPC=nop             
  nop                                                                          #  85    0x67d1a  1      OPC=nop             
  nop                                                                          #  86    0x67d1b  1      OPC=nop             
  nop                                                                          #  87    0x67d1c  1      OPC=nop             
  nop                                                                          #  88    0x67d1d  1      OPC=nop             
  nop                                                                          #  89    0x67d1e  1      OPC=nop             
  nop                                                                          #  90    0x67d1f  1      OPC=nop             
  nop                                                                          #  91    0x67d20  1      OPC=nop             
  nop                                                                          #  92    0x67d21  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  93    0x67d22  5      OPC=callq_label     
                                                                                                                            
.size _ZNSiC2EPSt15basic_streambufIcSt11char_traitsIcEE, .-_ZNSiC2EPSt15basic_streambufIcSt11char_traitsIcEE

