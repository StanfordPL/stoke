  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2Ev
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2Ev, @function

#! file-offset 0xdd300
#! rip-offset  0x9d300
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEEC2Ev:                                #        0x9d300  0      OPC=<label>         
  movl %esi, %esi                                                              #  1     0x9d300  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x9d302  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x9d305  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x9d308  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                              #  5     0x9d30a  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                                     #  6     0x9d30c  4      OPC=movl_r32_m32    
  movl %esi, %esi                                                              #  7     0x9d310  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                                                  #  8     0x9d312  5      OPC=movl_r32_m32    
  xorl %esi, %esi                                                              #  9     0x9d317  2      OPC=xorl_r32_r32    
  movl %edi, %edi                                                              #  10    0x9d319  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                                     #  11    0x9d31b  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x9d31f  1      OPC=nop             
  subl $0xc, %eax                                                              #  13    0x9d320  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  14    0x9d323  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                     #  15    0x9d325  4      OPC=movl_r32_m32    
  addl %edi, %eax                                                              #  16    0x9d329  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                              #  17    0x9d32b  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                                                     #  18    0x9d32d  4      OPC=movl_m32_r32    
  movl %edi, %edi                                                              #  19    0x9d331  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  20    0x9d333  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  21    0x9d337  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  22    0x9d33a  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  23    0x9d33c  4      OPC=addl_r32_m32    
  nop                                                                          #  24    0x9d340  1      OPC=nop             
  nop                                                                          #  25    0x9d341  1      OPC=nop             
  nop                                                                          #  26    0x9d342  1      OPC=nop             
  nop                                                                          #  27    0x9d343  1      OPC=nop             
  nop                                                                          #  28    0x9d344  1      OPC=nop             
  nop                                                                          #  29    0x9d345  1      OPC=nop             
  nop                                                                          #  30    0x9d346  1      OPC=nop             
  nop                                                                          #  31    0x9d347  1      OPC=nop             
  nop                                                                          #  32    0x9d348  1      OPC=nop             
  nop                                                                          #  33    0x9d349  1      OPC=nop             
  nop                                                                          #  34    0x9d34a  1      OPC=nop             
  nop                                                                          #  35    0x9d34b  1      OPC=nop             
  nop                                                                          #  36    0x9d34c  1      OPC=nop             
  nop                                                                          #  37    0x9d34d  1      OPC=nop             
  nop                                                                          #  38    0x9d34e  1      OPC=nop             
  nop                                                                          #  39    0x9d34f  1      OPC=nop             
  nop                                                                          #  40    0x9d350  1      OPC=nop             
  nop                                                                          #  41    0x9d351  1      OPC=nop             
  nop                                                                          #  42    0x9d352  1      OPC=nop             
  nop                                                                          #  43    0x9d353  1      OPC=nop             
  nop                                                                          #  44    0x9d354  1      OPC=nop             
  nop                                                                          #  45    0x9d355  1      OPC=nop             
  nop                                                                          #  46    0x9d356  1      OPC=nop             
  nop                                                                          #  47    0x9d357  1      OPC=nop             
  nop                                                                          #  48    0x9d358  1      OPC=nop             
  nop                                                                          #  49    0x9d359  1      OPC=nop             
  nop                                                                          #  50    0x9d35a  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E  #  51    0x9d35b  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  52    0x9d360  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  53    0x9d363  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  54    0x9d366  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  55    0x9d368  7      OPC=andl_r32_imm32  
  nop                                                                          #  56    0x9d36f  1      OPC=nop             
  nop                                                                          #  57    0x9d370  1      OPC=nop             
  nop                                                                          #  58    0x9d371  1      OPC=nop             
  nop                                                                          #  59    0x9d372  1      OPC=nop             
  addq %r15, %r11                                                              #  60    0x9d373  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  61    0x9d376  3      OPC=jmpq_r64        
  nop                                                                          #  62    0x9d379  1      OPC=nop             
  nop                                                                          #  63    0x9d37a  1      OPC=nop             
  nop                                                                          #  64    0x9d37b  1      OPC=nop             
  nop                                                                          #  65    0x9d37c  1      OPC=nop             
  nop                                                                          #  66    0x9d37d  1      OPC=nop             
  nop                                                                          #  67    0x9d37e  1      OPC=nop             
  nop                                                                          #  68    0x9d37f  1      OPC=nop             
  nop                                                                          #  69    0x9d380  1      OPC=nop             
  nop                                                                          #  70    0x9d381  1      OPC=nop             
  nop                                                                          #  71    0x9d382  1      OPC=nop             
  nop                                                                          #  72    0x9d383  1      OPC=nop             
  nop                                                                          #  73    0x9d384  1      OPC=nop             
  nop                                                                          #  74    0x9d385  1      OPC=nop             
  nop                                                                          #  75    0x9d386  1      OPC=nop             
  movl %eax, %edi                                                              #  76    0x9d387  2      OPC=movl_r32_r32    
  nop                                                                          #  77    0x9d389  1      OPC=nop             
  nop                                                                          #  78    0x9d38a  1      OPC=nop             
  nop                                                                          #  79    0x9d38b  1      OPC=nop             
  nop                                                                          #  80    0x9d38c  1      OPC=nop             
  nop                                                                          #  81    0x9d38d  1      OPC=nop             
  nop                                                                          #  82    0x9d38e  1      OPC=nop             
  nop                                                                          #  83    0x9d38f  1      OPC=nop             
  nop                                                                          #  84    0x9d390  1      OPC=nop             
  nop                                                                          #  85    0x9d391  1      OPC=nop             
  nop                                                                          #  86    0x9d392  1      OPC=nop             
  nop                                                                          #  87    0x9d393  1      OPC=nop             
  nop                                                                          #  88    0x9d394  1      OPC=nop             
  nop                                                                          #  89    0x9d395  1      OPC=nop             
  nop                                                                          #  90    0x9d396  1      OPC=nop             
  nop                                                                          #  91    0x9d397  1      OPC=nop             
  nop                                                                          #  92    0x9d398  1      OPC=nop             
  nop                                                                          #  93    0x9d399  1      OPC=nop             
  nop                                                                          #  94    0x9d39a  1      OPC=nop             
  nop                                                                          #  95    0x9d39b  1      OPC=nop             
  nop                                                                          #  96    0x9d39c  1      OPC=nop             
  nop                                                                          #  97    0x9d39d  1      OPC=nop             
  nop                                                                          #  98    0x9d39e  1      OPC=nop             
  nop                                                                          #  99    0x9d39f  1      OPC=nop             
  nop                                                                          #  100   0x9d3a0  1      OPC=nop             
  nop                                                                          #  101   0x9d3a1  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  102   0x9d3a2  5      OPC=callq_label     
                                                                                                                            
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEEC2Ev, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEEC2Ev

