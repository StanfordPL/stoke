  .text
  .globl _ZNSoC2Ev
  .type _ZNSoC2Ev, @function

#! file-offset 0xdd260
#! rip-offset  0x9d260
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSoC2Ev:                                                                    #        0x9d260  0      OPC=<label>         
  movl %esi, %esi                                                              #  1     0x9d260  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x9d262  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x9d265  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x9d268  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                              #  5     0x9d26a  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                                     #  6     0x9d26c  4      OPC=movl_r32_m32    
  movl %esi, %esi                                                              #  7     0x9d270  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                                                  #  8     0x9d272  5      OPC=movl_r32_m32    
  xorl %esi, %esi                                                              #  9     0x9d277  2      OPC=xorl_r32_r32    
  movl %edi, %edi                                                              #  10    0x9d279  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                                     #  11    0x9d27b  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x9d27f  1      OPC=nop             
  subl $0xc, %eax                                                              #  13    0x9d280  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  14    0x9d283  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                     #  15    0x9d285  4      OPC=movl_r32_m32    
  addl %edi, %eax                                                              #  16    0x9d289  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                              #  17    0x9d28b  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                                                     #  18    0x9d28d  4      OPC=movl_m32_r32    
  movl %edi, %edi                                                              #  19    0x9d291  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  20    0x9d293  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  21    0x9d297  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  22    0x9d29a  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  23    0x9d29c  4      OPC=addl_r32_m32    
  nop                                                                          #  24    0x9d2a0  1      OPC=nop             
  nop                                                                          #  25    0x9d2a1  1      OPC=nop             
  nop                                                                          #  26    0x9d2a2  1      OPC=nop             
  nop                                                                          #  27    0x9d2a3  1      OPC=nop             
  nop                                                                          #  28    0x9d2a4  1      OPC=nop             
  nop                                                                          #  29    0x9d2a5  1      OPC=nop             
  nop                                                                          #  30    0x9d2a6  1      OPC=nop             
  nop                                                                          #  31    0x9d2a7  1      OPC=nop             
  nop                                                                          #  32    0x9d2a8  1      OPC=nop             
  nop                                                                          #  33    0x9d2a9  1      OPC=nop             
  nop                                                                          #  34    0x9d2aa  1      OPC=nop             
  nop                                                                          #  35    0x9d2ab  1      OPC=nop             
  nop                                                                          #  36    0x9d2ac  1      OPC=nop             
  nop                                                                          #  37    0x9d2ad  1      OPC=nop             
  nop                                                                          #  38    0x9d2ae  1      OPC=nop             
  nop                                                                          #  39    0x9d2af  1      OPC=nop             
  nop                                                                          #  40    0x9d2b0  1      OPC=nop             
  nop                                                                          #  41    0x9d2b1  1      OPC=nop             
  nop                                                                          #  42    0x9d2b2  1      OPC=nop             
  nop                                                                          #  43    0x9d2b3  1      OPC=nop             
  nop                                                                          #  44    0x9d2b4  1      OPC=nop             
  nop                                                                          #  45    0x9d2b5  1      OPC=nop             
  nop                                                                          #  46    0x9d2b6  1      OPC=nop             
  nop                                                                          #  47    0x9d2b7  1      OPC=nop             
  nop                                                                          #  48    0x9d2b8  1      OPC=nop             
  nop                                                                          #  49    0x9d2b9  1      OPC=nop             
  nop                                                                          #  50    0x9d2ba  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E  #  51    0x9d2bb  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  52    0x9d2c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  53    0x9d2c3  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  54    0x9d2c6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  55    0x9d2c8  7      OPC=andl_r32_imm32  
  nop                                                                          #  56    0x9d2cf  1      OPC=nop             
  nop                                                                          #  57    0x9d2d0  1      OPC=nop             
  nop                                                                          #  58    0x9d2d1  1      OPC=nop             
  nop                                                                          #  59    0x9d2d2  1      OPC=nop             
  addq %r15, %r11                                                              #  60    0x9d2d3  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  61    0x9d2d6  3      OPC=jmpq_r64        
  nop                                                                          #  62    0x9d2d9  1      OPC=nop             
  nop                                                                          #  63    0x9d2da  1      OPC=nop             
  nop                                                                          #  64    0x9d2db  1      OPC=nop             
  nop                                                                          #  65    0x9d2dc  1      OPC=nop             
  nop                                                                          #  66    0x9d2dd  1      OPC=nop             
  nop                                                                          #  67    0x9d2de  1      OPC=nop             
  nop                                                                          #  68    0x9d2df  1      OPC=nop             
  nop                                                                          #  69    0x9d2e0  1      OPC=nop             
  nop                                                                          #  70    0x9d2e1  1      OPC=nop             
  nop                                                                          #  71    0x9d2e2  1      OPC=nop             
  nop                                                                          #  72    0x9d2e3  1      OPC=nop             
  nop                                                                          #  73    0x9d2e4  1      OPC=nop             
  nop                                                                          #  74    0x9d2e5  1      OPC=nop             
  nop                                                                          #  75    0x9d2e6  1      OPC=nop             
  movl %eax, %edi                                                              #  76    0x9d2e7  2      OPC=movl_r32_r32    
  nop                                                                          #  77    0x9d2e9  1      OPC=nop             
  nop                                                                          #  78    0x9d2ea  1      OPC=nop             
  nop                                                                          #  79    0x9d2eb  1      OPC=nop             
  nop                                                                          #  80    0x9d2ec  1      OPC=nop             
  nop                                                                          #  81    0x9d2ed  1      OPC=nop             
  nop                                                                          #  82    0x9d2ee  1      OPC=nop             
  nop                                                                          #  83    0x9d2ef  1      OPC=nop             
  nop                                                                          #  84    0x9d2f0  1      OPC=nop             
  nop                                                                          #  85    0x9d2f1  1      OPC=nop             
  nop                                                                          #  86    0x9d2f2  1      OPC=nop             
  nop                                                                          #  87    0x9d2f3  1      OPC=nop             
  nop                                                                          #  88    0x9d2f4  1      OPC=nop             
  nop                                                                          #  89    0x9d2f5  1      OPC=nop             
  nop                                                                          #  90    0x9d2f6  1      OPC=nop             
  nop                                                                          #  91    0x9d2f7  1      OPC=nop             
  nop                                                                          #  92    0x9d2f8  1      OPC=nop             
  nop                                                                          #  93    0x9d2f9  1      OPC=nop             
  nop                                                                          #  94    0x9d2fa  1      OPC=nop             
  nop                                                                          #  95    0x9d2fb  1      OPC=nop             
  nop                                                                          #  96    0x9d2fc  1      OPC=nop             
  nop                                                                          #  97    0x9d2fd  1      OPC=nop             
  nop                                                                          #  98    0x9d2fe  1      OPC=nop             
  nop                                                                          #  99    0x9d2ff  1      OPC=nop             
  nop                                                                          #  100   0x9d300  1      OPC=nop             
  nop                                                                          #  101   0x9d301  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  102   0x9d302  5      OPC=callq_label     
                                                                                                                            
.size _ZNSoC2Ev, .-_ZNSoC2Ev

