  .text
  .globl _ZNSt8numpunctIwEC2Ej
  .type _ZNSt8numpunctIwEC2Ej, @function

#! file-offset 0xf6860
#! rip-offset  0xb6860
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC2Ej:                                #        0xb6860  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb6860  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb6861  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb6863  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0xb6865  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0xb6867  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0xb686a  3      OPC=addq_r64_r64    
  testl %esi, %esi                                     #  7     0xb686d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0xb686f  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  9     0xb6871  8      OPC=movl_m32_imm32  
  setne %al                                            #  10    0xb6879  3      OPC=setne_r8        
  nop                                                  #  11    0xb687c  1      OPC=nop             
  nop                                                  #  12    0xb687d  1      OPC=nop             
  nop                                                  #  13    0xb687e  1      OPC=nop             
  nop                                                  #  14    0xb687f  1      OPC=nop             
  movl %ebx, %ebx                                      #  15    0xb6880  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  16    0xb6882  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  17    0xb688b  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  18    0xb688d  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  19    0xb688f  5      OPC=movl_m32_r32    
  nop                                                  #  20    0xb6894  1      OPC=nop             
  nop                                                  #  21    0xb6895  1      OPC=nop             
  nop                                                  #  22    0xb6896  1      OPC=nop             
  nop                                                  #  23    0xb6897  1      OPC=nop             
  nop                                                  #  24    0xb6898  1      OPC=nop             
  nop                                                  #  25    0xb6899  1      OPC=nop             
  nop                                                  #  26    0xb689a  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  27    0xb689b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  28    0xb68a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  29    0xb68a3  3      OPC=addq_r64_r64    
  popq %rbx                                            #  30    0xb68a6  1      OPC=popq_r64_1      
  popq %r11                                            #  31    0xb68a7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  32    0xb68a9  7      OPC=andl_r32_imm32  
  nop                                                  #  33    0xb68b0  1      OPC=nop             
  nop                                                  #  34    0xb68b1  1      OPC=nop             
  nop                                                  #  35    0xb68b2  1      OPC=nop             
  nop                                                  #  36    0xb68b3  1      OPC=nop             
  addq %r15, %r11                                      #  37    0xb68b4  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  38    0xb68b7  3      OPC=jmpq_r64        
  nop                                                  #  39    0xb68ba  1      OPC=nop             
  nop                                                  #  40    0xb68bb  1      OPC=nop             
  nop                                                  #  41    0xb68bc  1      OPC=nop             
  nop                                                  #  42    0xb68bd  1      OPC=nop             
  nop                                                  #  43    0xb68be  1      OPC=nop             
  nop                                                  #  44    0xb68bf  1      OPC=nop             
  nop                                                  #  45    0xb68c0  1      OPC=nop             
  nop                                                  #  46    0xb68c1  1      OPC=nop             
  nop                                                  #  47    0xb68c2  1      OPC=nop             
  nop                                                  #  48    0xb68c3  1      OPC=nop             
  nop                                                  #  49    0xb68c4  1      OPC=nop             
  nop                                                  #  50    0xb68c5  1      OPC=nop             
  nop                                                  #  51    0xb68c6  1      OPC=nop             
  movl %ebx, %edi                                      #  52    0xb68c7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  53    0xb68c9  4      OPC=movl_m32_r32    
  nop                                                  #  54    0xb68cd  1      OPC=nop             
  nop                                                  #  55    0xb68ce  1      OPC=nop             
  nop                                                  #  56    0xb68cf  1      OPC=nop             
  nop                                                  #  57    0xb68d0  1      OPC=nop             
  nop                                                  #  58    0xb68d1  1      OPC=nop             
  nop                                                  #  59    0xb68d2  1      OPC=nop             
  nop                                                  #  60    0xb68d3  1      OPC=nop             
  nop                                                  #  61    0xb68d4  1      OPC=nop             
  nop                                                  #  62    0xb68d5  1      OPC=nop             
  nop                                                  #  63    0xb68d6  1      OPC=nop             
  nop                                                  #  64    0xb68d7  1      OPC=nop             
  nop                                                  #  65    0xb68d8  1      OPC=nop             
  nop                                                  #  66    0xb68d9  1      OPC=nop             
  nop                                                  #  67    0xb68da  1      OPC=nop             
  nop                                                  #  68    0xb68db  1      OPC=nop             
  nop                                                  #  69    0xb68dc  1      OPC=nop             
  nop                                                  #  70    0xb68dd  1      OPC=nop             
  nop                                                  #  71    0xb68de  1      OPC=nop             
  nop                                                  #  72    0xb68df  1      OPC=nop             
  nop                                                  #  73    0xb68e0  1      OPC=nop             
  nop                                                  #  74    0xb68e1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  75    0xb68e2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  76    0xb68e7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  77    0xb68eb  2      OPC=movl_r32_r32    
  nop                                                  #  78    0xb68ed  1      OPC=nop             
  nop                                                  #  79    0xb68ee  1      OPC=nop             
  nop                                                  #  80    0xb68ef  1      OPC=nop             
  nop                                                  #  81    0xb68f0  1      OPC=nop             
  nop                                                  #  82    0xb68f1  1      OPC=nop             
  nop                                                  #  83    0xb68f2  1      OPC=nop             
  nop                                                  #  84    0xb68f3  1      OPC=nop             
  nop                                                  #  85    0xb68f4  1      OPC=nop             
  nop                                                  #  86    0xb68f5  1      OPC=nop             
  nop                                                  #  87    0xb68f6  1      OPC=nop             
  nop                                                  #  88    0xb68f7  1      OPC=nop             
  nop                                                  #  89    0xb68f8  1      OPC=nop             
  nop                                                  #  90    0xb68f9  1      OPC=nop             
  nop                                                  #  91    0xb68fa  1      OPC=nop             
  nop                                                  #  92    0xb68fb  1      OPC=nop             
  nop                                                  #  93    0xb68fc  1      OPC=nop             
  nop                                                  #  94    0xb68fd  1      OPC=nop             
  nop                                                  #  95    0xb68fe  1      OPC=nop             
  nop                                                  #  96    0xb68ff  1      OPC=nop             
  nop                                                  #  97    0xb6900  1      OPC=nop             
  nop                                                  #  98    0xb6901  1      OPC=nop             
  callq ._Unwind_Resume                                #  99    0xb6902  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC2Ej, .-_ZNSt8numpunctIwEC2Ej

