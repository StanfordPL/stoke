  .text
  .globl _ZNSt8numpunctIcEC2Ej
  .type _ZNSt8numpunctIcEC2Ej, @function

#! file-offset 0xbe040
#! rip-offset  0x7e040
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcEC2Ej:                                #        0x7e040  0      OPC=<label>         
  pushq %rbx                                           #  1     0x7e040  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0x7e041  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0x7e043  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0x7e045  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0x7e047  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0x7e04a  3      OPC=addq_r64_r64    
  testl %esi, %esi                                     #  7     0x7e04d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0x7e04f  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)                      #  9     0x7e051  8      OPC=movl_m32_imm32  
  setne %al                                            #  10    0x7e059  3      OPC=setne_r8        
  nop                                                  #  11    0x7e05c  1      OPC=nop             
  nop                                                  #  12    0x7e05d  1      OPC=nop             
  nop                                                  #  13    0x7e05e  1      OPC=nop             
  nop                                                  #  14    0x7e05f  1      OPC=nop             
  movl %ebx, %ebx                                      #  15    0x7e060  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  16    0x7e062  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  17    0x7e06b  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  18    0x7e06d  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  19    0x7e06f  5      OPC=movl_m32_r32    
  nop                                                  #  20    0x7e074  1      OPC=nop             
  nop                                                  #  21    0x7e075  1      OPC=nop             
  nop                                                  #  22    0x7e076  1      OPC=nop             
  nop                                                  #  23    0x7e077  1      OPC=nop             
  nop                                                  #  24    0x7e078  1      OPC=nop             
  nop                                                  #  25    0x7e079  1      OPC=nop             
  nop                                                  #  26    0x7e07a  1      OPC=nop             
  callq ._ZNSt8numpunctIcE22_M_initialize_numpunctEPi  #  27    0x7e07b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  28    0x7e080  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  29    0x7e083  3      OPC=addq_r64_r64    
  popq %rbx                                            #  30    0x7e086  1      OPC=popq_r64_1      
  popq %r11                                            #  31    0x7e087  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  32    0x7e089  7      OPC=andl_r32_imm32  
  nop                                                  #  33    0x7e090  1      OPC=nop             
  nop                                                  #  34    0x7e091  1      OPC=nop             
  nop                                                  #  35    0x7e092  1      OPC=nop             
  nop                                                  #  36    0x7e093  1      OPC=nop             
  addq %r15, %r11                                      #  37    0x7e094  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  38    0x7e097  3      OPC=jmpq_r64        
  nop                                                  #  39    0x7e09a  1      OPC=nop             
  nop                                                  #  40    0x7e09b  1      OPC=nop             
  nop                                                  #  41    0x7e09c  1      OPC=nop             
  nop                                                  #  42    0x7e09d  1      OPC=nop             
  nop                                                  #  43    0x7e09e  1      OPC=nop             
  nop                                                  #  44    0x7e09f  1      OPC=nop             
  nop                                                  #  45    0x7e0a0  1      OPC=nop             
  nop                                                  #  46    0x7e0a1  1      OPC=nop             
  nop                                                  #  47    0x7e0a2  1      OPC=nop             
  nop                                                  #  48    0x7e0a3  1      OPC=nop             
  nop                                                  #  49    0x7e0a4  1      OPC=nop             
  nop                                                  #  50    0x7e0a5  1      OPC=nop             
  nop                                                  #  51    0x7e0a6  1      OPC=nop             
  movl %ebx, %edi                                      #  52    0x7e0a7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  53    0x7e0a9  4      OPC=movl_m32_r32    
  nop                                                  #  54    0x7e0ad  1      OPC=nop             
  nop                                                  #  55    0x7e0ae  1      OPC=nop             
  nop                                                  #  56    0x7e0af  1      OPC=nop             
  nop                                                  #  57    0x7e0b0  1      OPC=nop             
  nop                                                  #  58    0x7e0b1  1      OPC=nop             
  nop                                                  #  59    0x7e0b2  1      OPC=nop             
  nop                                                  #  60    0x7e0b3  1      OPC=nop             
  nop                                                  #  61    0x7e0b4  1      OPC=nop             
  nop                                                  #  62    0x7e0b5  1      OPC=nop             
  nop                                                  #  63    0x7e0b6  1      OPC=nop             
  nop                                                  #  64    0x7e0b7  1      OPC=nop             
  nop                                                  #  65    0x7e0b8  1      OPC=nop             
  nop                                                  #  66    0x7e0b9  1      OPC=nop             
  nop                                                  #  67    0x7e0ba  1      OPC=nop             
  nop                                                  #  68    0x7e0bb  1      OPC=nop             
  nop                                                  #  69    0x7e0bc  1      OPC=nop             
  nop                                                  #  70    0x7e0bd  1      OPC=nop             
  nop                                                  #  71    0x7e0be  1      OPC=nop             
  nop                                                  #  72    0x7e0bf  1      OPC=nop             
  nop                                                  #  73    0x7e0c0  1      OPC=nop             
  nop                                                  #  74    0x7e0c1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  75    0x7e0c2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  76    0x7e0c7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  77    0x7e0cb  2      OPC=movl_r32_r32    
  nop                                                  #  78    0x7e0cd  1      OPC=nop             
  nop                                                  #  79    0x7e0ce  1      OPC=nop             
  nop                                                  #  80    0x7e0cf  1      OPC=nop             
  nop                                                  #  81    0x7e0d0  1      OPC=nop             
  nop                                                  #  82    0x7e0d1  1      OPC=nop             
  nop                                                  #  83    0x7e0d2  1      OPC=nop             
  nop                                                  #  84    0x7e0d3  1      OPC=nop             
  nop                                                  #  85    0x7e0d4  1      OPC=nop             
  nop                                                  #  86    0x7e0d5  1      OPC=nop             
  nop                                                  #  87    0x7e0d6  1      OPC=nop             
  nop                                                  #  88    0x7e0d7  1      OPC=nop             
  nop                                                  #  89    0x7e0d8  1      OPC=nop             
  nop                                                  #  90    0x7e0d9  1      OPC=nop             
  nop                                                  #  91    0x7e0da  1      OPC=nop             
  nop                                                  #  92    0x7e0db  1      OPC=nop             
  nop                                                  #  93    0x7e0dc  1      OPC=nop             
  nop                                                  #  94    0x7e0dd  1      OPC=nop             
  nop                                                  #  95    0x7e0de  1      OPC=nop             
  nop                                                  #  96    0x7e0df  1      OPC=nop             
  nop                                                  #  97    0x7e0e0  1      OPC=nop             
  nop                                                  #  98    0x7e0e1  1      OPC=nop             
  callq ._Unwind_Resume                                #  99    0x7e0e2  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIcEC2Ej, .-_ZNSt8numpunctIcEC2Ej

