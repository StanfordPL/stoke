  .text
  .globl _ZNSt8numpunctIwEC1EPSt16__numpunct_cacheIwEj
  .type _ZNSt8numpunctIwEC1EPSt16__numpunct_cacheIwEj, @function

#! file-offset 0xf6980
#! rip-offset  0xb6980
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC1EPSt16__numpunct_cacheIwEj:        #        0xb6980  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb6980  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb6981  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb6983  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0xb6985  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0xb6987  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0xb698a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  7     0xb698d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0xb698f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                          #  9     0xb6991  5      OPC=movl_m32_r32    
  setne %al                                            #  10    0xb6996  3      OPC=setne_r8        
  nop                                                  #  11    0xb6999  1      OPC=nop             
  nop                                                  #  12    0xb699a  1      OPC=nop             
  nop                                                  #  13    0xb699b  1      OPC=nop             
  nop                                                  #  14    0xb699c  1      OPC=nop             
  nop                                                  #  15    0xb699d  1      OPC=nop             
  nop                                                  #  16    0xb699e  1      OPC=nop             
  nop                                                  #  17    0xb699f  1      OPC=nop             
  movl %ebx, %ebx                                      #  18    0xb69a0  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  19    0xb69a2  8      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  20    0xb69aa  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  21    0xb69ac  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  22    0xb69ae  5      OPC=movl_m32_r32    
  nop                                                  #  23    0xb69b3  1      OPC=nop             
  nop                                                  #  24    0xb69b4  1      OPC=nop             
  nop                                                  #  25    0xb69b5  1      OPC=nop             
  nop                                                  #  26    0xb69b6  1      OPC=nop             
  nop                                                  #  27    0xb69b7  1      OPC=nop             
  nop                                                  #  28    0xb69b8  1      OPC=nop             
  nop                                                  #  29    0xb69b9  1      OPC=nop             
  nop                                                  #  30    0xb69ba  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  31    0xb69bb  5      OPC=callq_label     
  addl $0x10, %esp                                     #  32    0xb69c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  33    0xb69c3  3      OPC=addq_r64_r64    
  popq %rbx                                            #  34    0xb69c6  1      OPC=popq_r64_1      
  popq %r11                                            #  35    0xb69c7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  36    0xb69c9  7      OPC=andl_r32_imm32  
  nop                                                  #  37    0xb69d0  1      OPC=nop             
  nop                                                  #  38    0xb69d1  1      OPC=nop             
  nop                                                  #  39    0xb69d2  1      OPC=nop             
  nop                                                  #  40    0xb69d3  1      OPC=nop             
  addq %r15, %r11                                      #  41    0xb69d4  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  42    0xb69d7  3      OPC=jmpq_r64        
  nop                                                  #  43    0xb69da  1      OPC=nop             
  nop                                                  #  44    0xb69db  1      OPC=nop             
  nop                                                  #  45    0xb69dc  1      OPC=nop             
  nop                                                  #  46    0xb69dd  1      OPC=nop             
  nop                                                  #  47    0xb69de  1      OPC=nop             
  nop                                                  #  48    0xb69df  1      OPC=nop             
  nop                                                  #  49    0xb69e0  1      OPC=nop             
  nop                                                  #  50    0xb69e1  1      OPC=nop             
  nop                                                  #  51    0xb69e2  1      OPC=nop             
  nop                                                  #  52    0xb69e3  1      OPC=nop             
  nop                                                  #  53    0xb69e4  1      OPC=nop             
  nop                                                  #  54    0xb69e5  1      OPC=nop             
  nop                                                  #  55    0xb69e6  1      OPC=nop             
  movl %ebx, %edi                                      #  56    0xb69e7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  57    0xb69e9  4      OPC=movl_m32_r32    
  nop                                                  #  58    0xb69ed  1      OPC=nop             
  nop                                                  #  59    0xb69ee  1      OPC=nop             
  nop                                                  #  60    0xb69ef  1      OPC=nop             
  nop                                                  #  61    0xb69f0  1      OPC=nop             
  nop                                                  #  62    0xb69f1  1      OPC=nop             
  nop                                                  #  63    0xb69f2  1      OPC=nop             
  nop                                                  #  64    0xb69f3  1      OPC=nop             
  nop                                                  #  65    0xb69f4  1      OPC=nop             
  nop                                                  #  66    0xb69f5  1      OPC=nop             
  nop                                                  #  67    0xb69f6  1      OPC=nop             
  nop                                                  #  68    0xb69f7  1      OPC=nop             
  nop                                                  #  69    0xb69f8  1      OPC=nop             
  nop                                                  #  70    0xb69f9  1      OPC=nop             
  nop                                                  #  71    0xb69fa  1      OPC=nop             
  nop                                                  #  72    0xb69fb  1      OPC=nop             
  nop                                                  #  73    0xb69fc  1      OPC=nop             
  nop                                                  #  74    0xb69fd  1      OPC=nop             
  nop                                                  #  75    0xb69fe  1      OPC=nop             
  nop                                                  #  76    0xb69ff  1      OPC=nop             
  nop                                                  #  77    0xb6a00  1      OPC=nop             
  nop                                                  #  78    0xb6a01  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  79    0xb6a02  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  80    0xb6a07  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  81    0xb6a0b  2      OPC=movl_r32_r32    
  nop                                                  #  82    0xb6a0d  1      OPC=nop             
  nop                                                  #  83    0xb6a0e  1      OPC=nop             
  nop                                                  #  84    0xb6a0f  1      OPC=nop             
  nop                                                  #  85    0xb6a10  1      OPC=nop             
  nop                                                  #  86    0xb6a11  1      OPC=nop             
  nop                                                  #  87    0xb6a12  1      OPC=nop             
  nop                                                  #  88    0xb6a13  1      OPC=nop             
  nop                                                  #  89    0xb6a14  1      OPC=nop             
  nop                                                  #  90    0xb6a15  1      OPC=nop             
  nop                                                  #  91    0xb6a16  1      OPC=nop             
  nop                                                  #  92    0xb6a17  1      OPC=nop             
  nop                                                  #  93    0xb6a18  1      OPC=nop             
  nop                                                  #  94    0xb6a19  1      OPC=nop             
  nop                                                  #  95    0xb6a1a  1      OPC=nop             
  nop                                                  #  96    0xb6a1b  1      OPC=nop             
  nop                                                  #  97    0xb6a1c  1      OPC=nop             
  nop                                                  #  98    0xb6a1d  1      OPC=nop             
  nop                                                  #  99    0xb6a1e  1      OPC=nop             
  nop                                                  #  100   0xb6a1f  1      OPC=nop             
  nop                                                  #  101   0xb6a20  1      OPC=nop             
  nop                                                  #  102   0xb6a21  1      OPC=nop             
  callq ._Unwind_Resume                                #  103   0xb6a22  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC1EPSt16__numpunct_cacheIwEj, .-_ZNSt8numpunctIwEC1EPSt16__numpunct_cacheIwEj

