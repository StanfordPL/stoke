  .text
  .globl _ZNSt8numpunctIwEC1EPSt16__numpunct_cacheIwEj
  .type _ZNSt8numpunctIwEC1EPSt16__numpunct_cacheIwEj, @function

#! file-offset 0xf70a0
#! rip-offset  0xb70a0
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC1EPSt16__numpunct_cacheIwEj:        #        0xb70a0  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb70a0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb70a1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb70a3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0xb70a5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0xb70a7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0xb70aa  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  7     0xb70ad  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0xb70af  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                          #  9     0xb70b1  5      OPC=movl_m32_r32    
  setne %al                                            #  10    0xb70b6  3      OPC=setne_r8        
  nop                                                  #  11    0xb70b9  1      OPC=nop             
  nop                                                  #  12    0xb70ba  1      OPC=nop             
  nop                                                  #  13    0xb70bb  1      OPC=nop             
  nop                                                  #  14    0xb70bc  1      OPC=nop             
  nop                                                  #  15    0xb70bd  1      OPC=nop             
  nop                                                  #  16    0xb70be  1      OPC=nop             
  nop                                                  #  17    0xb70bf  1      OPC=nop             
  movl %ebx, %ebx                                      #  18    0xb70c0  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  19    0xb70c2  8      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  20    0xb70ca  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  21    0xb70cc  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  22    0xb70ce  5      OPC=movl_m32_r32    
  nop                                                  #  23    0xb70d3  1      OPC=nop             
  nop                                                  #  24    0xb70d4  1      OPC=nop             
  nop                                                  #  25    0xb70d5  1      OPC=nop             
  nop                                                  #  26    0xb70d6  1      OPC=nop             
  nop                                                  #  27    0xb70d7  1      OPC=nop             
  nop                                                  #  28    0xb70d8  1      OPC=nop             
  nop                                                  #  29    0xb70d9  1      OPC=nop             
  nop                                                  #  30    0xb70da  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  31    0xb70db  5      OPC=callq_label     
  addl $0x10, %esp                                     #  32    0xb70e0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  33    0xb70e3  3      OPC=addq_r64_r64    
  popq %rbx                                            #  34    0xb70e6  1      OPC=popq_r64_1      
  popq %r11                                            #  35    0xb70e7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  36    0xb70e9  7      OPC=andl_r32_imm32  
  nop                                                  #  37    0xb70f0  1      OPC=nop             
  nop                                                  #  38    0xb70f1  1      OPC=nop             
  nop                                                  #  39    0xb70f2  1      OPC=nop             
  nop                                                  #  40    0xb70f3  1      OPC=nop             
  addq %r15, %r11                                      #  41    0xb70f4  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  42    0xb70f7  3      OPC=jmpq_r64        
  nop                                                  #  43    0xb70fa  1      OPC=nop             
  nop                                                  #  44    0xb70fb  1      OPC=nop             
  nop                                                  #  45    0xb70fc  1      OPC=nop             
  nop                                                  #  46    0xb70fd  1      OPC=nop             
  nop                                                  #  47    0xb70fe  1      OPC=nop             
  nop                                                  #  48    0xb70ff  1      OPC=nop             
  nop                                                  #  49    0xb7100  1      OPC=nop             
  nop                                                  #  50    0xb7101  1      OPC=nop             
  nop                                                  #  51    0xb7102  1      OPC=nop             
  nop                                                  #  52    0xb7103  1      OPC=nop             
  nop                                                  #  53    0xb7104  1      OPC=nop             
  nop                                                  #  54    0xb7105  1      OPC=nop             
  nop                                                  #  55    0xb7106  1      OPC=nop             
  movl %ebx, %edi                                      #  56    0xb7107  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  57    0xb7109  4      OPC=movl_m32_r32    
  nop                                                  #  58    0xb710d  1      OPC=nop             
  nop                                                  #  59    0xb710e  1      OPC=nop             
  nop                                                  #  60    0xb710f  1      OPC=nop             
  nop                                                  #  61    0xb7110  1      OPC=nop             
  nop                                                  #  62    0xb7111  1      OPC=nop             
  nop                                                  #  63    0xb7112  1      OPC=nop             
  nop                                                  #  64    0xb7113  1      OPC=nop             
  nop                                                  #  65    0xb7114  1      OPC=nop             
  nop                                                  #  66    0xb7115  1      OPC=nop             
  nop                                                  #  67    0xb7116  1      OPC=nop             
  nop                                                  #  68    0xb7117  1      OPC=nop             
  nop                                                  #  69    0xb7118  1      OPC=nop             
  nop                                                  #  70    0xb7119  1      OPC=nop             
  nop                                                  #  71    0xb711a  1      OPC=nop             
  nop                                                  #  72    0xb711b  1      OPC=nop             
  nop                                                  #  73    0xb711c  1      OPC=nop             
  nop                                                  #  74    0xb711d  1      OPC=nop             
  nop                                                  #  75    0xb711e  1      OPC=nop             
  nop                                                  #  76    0xb711f  1      OPC=nop             
  nop                                                  #  77    0xb7120  1      OPC=nop             
  nop                                                  #  78    0xb7121  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  79    0xb7122  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  80    0xb7127  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  81    0xb712b  2      OPC=movl_r32_r32    
  nop                                                  #  82    0xb712d  1      OPC=nop             
  nop                                                  #  83    0xb712e  1      OPC=nop             
  nop                                                  #  84    0xb712f  1      OPC=nop             
  nop                                                  #  85    0xb7130  1      OPC=nop             
  nop                                                  #  86    0xb7131  1      OPC=nop             
  nop                                                  #  87    0xb7132  1      OPC=nop             
  nop                                                  #  88    0xb7133  1      OPC=nop             
  nop                                                  #  89    0xb7134  1      OPC=nop             
  nop                                                  #  90    0xb7135  1      OPC=nop             
  nop                                                  #  91    0xb7136  1      OPC=nop             
  nop                                                  #  92    0xb7137  1      OPC=nop             
  nop                                                  #  93    0xb7138  1      OPC=nop             
  nop                                                  #  94    0xb7139  1      OPC=nop             
  nop                                                  #  95    0xb713a  1      OPC=nop             
  nop                                                  #  96    0xb713b  1      OPC=nop             
  nop                                                  #  97    0xb713c  1      OPC=nop             
  nop                                                  #  98    0xb713d  1      OPC=nop             
  nop                                                  #  99    0xb713e  1      OPC=nop             
  nop                                                  #  100   0xb713f  1      OPC=nop             
  nop                                                  #  101   0xb7140  1      OPC=nop             
  nop                                                  #  102   0xb7141  1      OPC=nop             
  callq ._Unwind_Resume                                #  103   0xb7142  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC1EPSt16__numpunct_cacheIwEj, .-_ZNSt8numpunctIwEC1EPSt16__numpunct_cacheIwEj

