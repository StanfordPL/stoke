  .text
  .globl _ZNSt8numpunctIcEC1Ej
  .type _ZNSt8numpunctIcEC1Ej, @function

#! file-offset 0xbdca0
#! rip-offset  0x7dca0
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcEC1Ej:                                #        0x7dca0  0      OPC=<label>         
  pushq %rbx                                           #  1     0x7dca0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0x7dca1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0x7dca3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0x7dca5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0x7dca7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0x7dcaa  3      OPC=addq_r64_r64    
  testl %esi, %esi                                     #  7     0x7dcad  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0x7dcaf  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)                      #  9     0x7dcb1  8      OPC=movl_m32_imm32  
  setne %al                                            #  10    0x7dcb9  3      OPC=setne_r8        
  nop                                                  #  11    0x7dcbc  1      OPC=nop             
  nop                                                  #  12    0x7dcbd  1      OPC=nop             
  nop                                                  #  13    0x7dcbe  1      OPC=nop             
  nop                                                  #  14    0x7dcbf  1      OPC=nop             
  movl %ebx, %ebx                                      #  15    0x7dcc0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  16    0x7dcc2  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  17    0x7dccb  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  18    0x7dccd  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  19    0x7dccf  5      OPC=movl_m32_r32    
  nop                                                  #  20    0x7dcd4  1      OPC=nop             
  nop                                                  #  21    0x7dcd5  1      OPC=nop             
  nop                                                  #  22    0x7dcd6  1      OPC=nop             
  nop                                                  #  23    0x7dcd7  1      OPC=nop             
  nop                                                  #  24    0x7dcd8  1      OPC=nop             
  nop                                                  #  25    0x7dcd9  1      OPC=nop             
  nop                                                  #  26    0x7dcda  1      OPC=nop             
  callq ._ZNSt8numpunctIcE22_M_initialize_numpunctEPi  #  27    0x7dcdb  5      OPC=callq_label     
  addl $0x10, %esp                                     #  28    0x7dce0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  29    0x7dce3  3      OPC=addq_r64_r64    
  popq %rbx                                            #  30    0x7dce6  1      OPC=popq_r64_1      
  popq %r11                                            #  31    0x7dce7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  32    0x7dce9  7      OPC=andl_r32_imm32  
  nop                                                  #  33    0x7dcf0  1      OPC=nop             
  nop                                                  #  34    0x7dcf1  1      OPC=nop             
  nop                                                  #  35    0x7dcf2  1      OPC=nop             
  nop                                                  #  36    0x7dcf3  1      OPC=nop             
  addq %r15, %r11                                      #  37    0x7dcf4  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  38    0x7dcf7  3      OPC=jmpq_r64        
  nop                                                  #  39    0x7dcfa  1      OPC=nop             
  nop                                                  #  40    0x7dcfb  1      OPC=nop             
  nop                                                  #  41    0x7dcfc  1      OPC=nop             
  nop                                                  #  42    0x7dcfd  1      OPC=nop             
  nop                                                  #  43    0x7dcfe  1      OPC=nop             
  nop                                                  #  44    0x7dcff  1      OPC=nop             
  nop                                                  #  45    0x7dd00  1      OPC=nop             
  nop                                                  #  46    0x7dd01  1      OPC=nop             
  nop                                                  #  47    0x7dd02  1      OPC=nop             
  nop                                                  #  48    0x7dd03  1      OPC=nop             
  nop                                                  #  49    0x7dd04  1      OPC=nop             
  nop                                                  #  50    0x7dd05  1      OPC=nop             
  nop                                                  #  51    0x7dd06  1      OPC=nop             
  movl %ebx, %edi                                      #  52    0x7dd07  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  53    0x7dd09  4      OPC=movl_m32_r32    
  nop                                                  #  54    0x7dd0d  1      OPC=nop             
  nop                                                  #  55    0x7dd0e  1      OPC=nop             
  nop                                                  #  56    0x7dd0f  1      OPC=nop             
  nop                                                  #  57    0x7dd10  1      OPC=nop             
  nop                                                  #  58    0x7dd11  1      OPC=nop             
  nop                                                  #  59    0x7dd12  1      OPC=nop             
  nop                                                  #  60    0x7dd13  1      OPC=nop             
  nop                                                  #  61    0x7dd14  1      OPC=nop             
  nop                                                  #  62    0x7dd15  1      OPC=nop             
  nop                                                  #  63    0x7dd16  1      OPC=nop             
  nop                                                  #  64    0x7dd17  1      OPC=nop             
  nop                                                  #  65    0x7dd18  1      OPC=nop             
  nop                                                  #  66    0x7dd19  1      OPC=nop             
  nop                                                  #  67    0x7dd1a  1      OPC=nop             
  nop                                                  #  68    0x7dd1b  1      OPC=nop             
  nop                                                  #  69    0x7dd1c  1      OPC=nop             
  nop                                                  #  70    0x7dd1d  1      OPC=nop             
  nop                                                  #  71    0x7dd1e  1      OPC=nop             
  nop                                                  #  72    0x7dd1f  1      OPC=nop             
  nop                                                  #  73    0x7dd20  1      OPC=nop             
  nop                                                  #  74    0x7dd21  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  75    0x7dd22  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  76    0x7dd27  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  77    0x7dd2b  2      OPC=movl_r32_r32    
  nop                                                  #  78    0x7dd2d  1      OPC=nop             
  nop                                                  #  79    0x7dd2e  1      OPC=nop             
  nop                                                  #  80    0x7dd2f  1      OPC=nop             
  nop                                                  #  81    0x7dd30  1      OPC=nop             
  nop                                                  #  82    0x7dd31  1      OPC=nop             
  nop                                                  #  83    0x7dd32  1      OPC=nop             
  nop                                                  #  84    0x7dd33  1      OPC=nop             
  nop                                                  #  85    0x7dd34  1      OPC=nop             
  nop                                                  #  86    0x7dd35  1      OPC=nop             
  nop                                                  #  87    0x7dd36  1      OPC=nop             
  nop                                                  #  88    0x7dd37  1      OPC=nop             
  nop                                                  #  89    0x7dd38  1      OPC=nop             
  nop                                                  #  90    0x7dd39  1      OPC=nop             
  nop                                                  #  91    0x7dd3a  1      OPC=nop             
  nop                                                  #  92    0x7dd3b  1      OPC=nop             
  nop                                                  #  93    0x7dd3c  1      OPC=nop             
  nop                                                  #  94    0x7dd3d  1      OPC=nop             
  nop                                                  #  95    0x7dd3e  1      OPC=nop             
  nop                                                  #  96    0x7dd3f  1      OPC=nop             
  nop                                                  #  97    0x7dd40  1      OPC=nop             
  nop                                                  #  98    0x7dd41  1      OPC=nop             
  callq ._Unwind_Resume                                #  99    0x7dd42  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIcEC1Ej, .-_ZNSt8numpunctIcEC1Ej

