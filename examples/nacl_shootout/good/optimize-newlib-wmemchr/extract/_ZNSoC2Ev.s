  .text
  .globl _ZNSoC2Ev
  .type _ZNSoC2Ev, @function

#! file-offset 0xdd560
#! rip-offset  0x9d560
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSoC2Ev:                                                                    #        0x9d560  0      OPC=<label>         
  movl %esi, %esi                                                              #  1     0x9d560  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x9d562  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x9d565  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x9d568  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                              #  5     0x9d56a  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                                     #  6     0x9d56c  4      OPC=movl_r32_m32    
  movl %esi, %esi                                                              #  7     0x9d570  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                                                  #  8     0x9d572  5      OPC=movl_r32_m32    
  xorl %esi, %esi                                                              #  9     0x9d577  2      OPC=xorl_r32_r32    
  movl %edi, %edi                                                              #  10    0x9d579  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                                     #  11    0x9d57b  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x9d57f  1      OPC=nop             
  subl $0xc, %eax                                                              #  13    0x9d580  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  14    0x9d583  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                     #  15    0x9d585  4      OPC=movl_r32_m32    
  addl %edi, %eax                                                              #  16    0x9d589  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                              #  17    0x9d58b  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                                                     #  18    0x9d58d  4      OPC=movl_m32_r32    
  movl %edi, %edi                                                              #  19    0x9d591  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  20    0x9d593  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  21    0x9d597  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  22    0x9d59a  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  23    0x9d59c  4      OPC=addl_r32_m32    
  nop                                                                          #  24    0x9d5a0  1      OPC=nop             
  nop                                                                          #  25    0x9d5a1  1      OPC=nop             
  nop                                                                          #  26    0x9d5a2  1      OPC=nop             
  nop                                                                          #  27    0x9d5a3  1      OPC=nop             
  nop                                                                          #  28    0x9d5a4  1      OPC=nop             
  nop                                                                          #  29    0x9d5a5  1      OPC=nop             
  nop                                                                          #  30    0x9d5a6  1      OPC=nop             
  nop                                                                          #  31    0x9d5a7  1      OPC=nop             
  nop                                                                          #  32    0x9d5a8  1      OPC=nop             
  nop                                                                          #  33    0x9d5a9  1      OPC=nop             
  nop                                                                          #  34    0x9d5aa  1      OPC=nop             
  nop                                                                          #  35    0x9d5ab  1      OPC=nop             
  nop                                                                          #  36    0x9d5ac  1      OPC=nop             
  nop                                                                          #  37    0x9d5ad  1      OPC=nop             
  nop                                                                          #  38    0x9d5ae  1      OPC=nop             
  nop                                                                          #  39    0x9d5af  1      OPC=nop             
  nop                                                                          #  40    0x9d5b0  1      OPC=nop             
  nop                                                                          #  41    0x9d5b1  1      OPC=nop             
  nop                                                                          #  42    0x9d5b2  1      OPC=nop             
  nop                                                                          #  43    0x9d5b3  1      OPC=nop             
  nop                                                                          #  44    0x9d5b4  1      OPC=nop             
  nop                                                                          #  45    0x9d5b5  1      OPC=nop             
  nop                                                                          #  46    0x9d5b6  1      OPC=nop             
  nop                                                                          #  47    0x9d5b7  1      OPC=nop             
  nop                                                                          #  48    0x9d5b8  1      OPC=nop             
  nop                                                                          #  49    0x9d5b9  1      OPC=nop             
  nop                                                                          #  50    0x9d5ba  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E  #  51    0x9d5bb  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  52    0x9d5c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  53    0x9d5c3  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  54    0x9d5c6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  55    0x9d5c8  7      OPC=andl_r32_imm32  
  nop                                                                          #  56    0x9d5cf  1      OPC=nop             
  nop                                                                          #  57    0x9d5d0  1      OPC=nop             
  nop                                                                          #  58    0x9d5d1  1      OPC=nop             
  nop                                                                          #  59    0x9d5d2  1      OPC=nop             
  addq %r15, %r11                                                              #  60    0x9d5d3  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  61    0x9d5d6  3      OPC=jmpq_r64        
  nop                                                                          #  62    0x9d5d9  1      OPC=nop             
  nop                                                                          #  63    0x9d5da  1      OPC=nop             
  nop                                                                          #  64    0x9d5db  1      OPC=nop             
  nop                                                                          #  65    0x9d5dc  1      OPC=nop             
  nop                                                                          #  66    0x9d5dd  1      OPC=nop             
  nop                                                                          #  67    0x9d5de  1      OPC=nop             
  nop                                                                          #  68    0x9d5df  1      OPC=nop             
  nop                                                                          #  69    0x9d5e0  1      OPC=nop             
  nop                                                                          #  70    0x9d5e1  1      OPC=nop             
  nop                                                                          #  71    0x9d5e2  1      OPC=nop             
  nop                                                                          #  72    0x9d5e3  1      OPC=nop             
  nop                                                                          #  73    0x9d5e4  1      OPC=nop             
  nop                                                                          #  74    0x9d5e5  1      OPC=nop             
  nop                                                                          #  75    0x9d5e6  1      OPC=nop             
  movl %eax, %edi                                                              #  76    0x9d5e7  2      OPC=movl_r32_r32    
  nop                                                                          #  77    0x9d5e9  1      OPC=nop             
  nop                                                                          #  78    0x9d5ea  1      OPC=nop             
  nop                                                                          #  79    0x9d5eb  1      OPC=nop             
  nop                                                                          #  80    0x9d5ec  1      OPC=nop             
  nop                                                                          #  81    0x9d5ed  1      OPC=nop             
  nop                                                                          #  82    0x9d5ee  1      OPC=nop             
  nop                                                                          #  83    0x9d5ef  1      OPC=nop             
  nop                                                                          #  84    0x9d5f0  1      OPC=nop             
  nop                                                                          #  85    0x9d5f1  1      OPC=nop             
  nop                                                                          #  86    0x9d5f2  1      OPC=nop             
  nop                                                                          #  87    0x9d5f3  1      OPC=nop             
  nop                                                                          #  88    0x9d5f4  1      OPC=nop             
  nop                                                                          #  89    0x9d5f5  1      OPC=nop             
  nop                                                                          #  90    0x9d5f6  1      OPC=nop             
  nop                                                                          #  91    0x9d5f7  1      OPC=nop             
  nop                                                                          #  92    0x9d5f8  1      OPC=nop             
  nop                                                                          #  93    0x9d5f9  1      OPC=nop             
  nop                                                                          #  94    0x9d5fa  1      OPC=nop             
  nop                                                                          #  95    0x9d5fb  1      OPC=nop             
  nop                                                                          #  96    0x9d5fc  1      OPC=nop             
  nop                                                                          #  97    0x9d5fd  1      OPC=nop             
  nop                                                                          #  98    0x9d5fe  1      OPC=nop             
  nop                                                                          #  99    0x9d5ff  1      OPC=nop             
  nop                                                                          #  100   0x9d600  1      OPC=nop             
  nop                                                                          #  101   0x9d601  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  102   0x9d602  5      OPC=callq_label     
                                                                                                                            
.size _ZNSoC2Ev, .-_ZNSoC2Ev

