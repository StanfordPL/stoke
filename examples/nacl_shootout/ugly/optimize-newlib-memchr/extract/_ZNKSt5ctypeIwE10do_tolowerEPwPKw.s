  .text
  .globl _ZNKSt5ctypeIwE10do_tolowerEPwPKw
  .type _ZNKSt5ctypeIwE10do_tolowerEPwPKw, @function

#! file-offset 0x13d860
#! rip-offset  0xfd860
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIwE10do_tolowerEPwPKw:  #        0xfd860  0      OPC=<label>         
  pushq %r12                         #  1     0xfd860  2      OPC=pushq_r64_1     
  movl %edx, %r12d                   #  2     0xfd862  3      OPC=movl_r32_r32    
  pushq %rbx                         #  3     0xfd865  1      OPC=pushq_r64_1     
  movl %esi, %ebx                    #  4     0xfd866  2      OPC=movl_r32_r32    
  subl $0x8, %esp                    #  5     0xfd868  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                    #  6     0xfd86b  3      OPC=addq_r64_r64    
  cmpl %r12d, %ebx                   #  7     0xfd86e  3      OPC=cmpl_r32_r32    
  jae .L_fd8c0                       #  8     0xfd871  2      OPC=jae_label       
  nop                                #  9     0xfd873  1      OPC=nop             
  nop                                #  10    0xfd874  1      OPC=nop             
  nop                                #  11    0xfd875  1      OPC=nop             
  nop                                #  12    0xfd876  1      OPC=nop             
  nop                                #  13    0xfd877  1      OPC=nop             
  nop                                #  14    0xfd878  1      OPC=nop             
  nop                                #  15    0xfd879  1      OPC=nop             
  nop                                #  16    0xfd87a  1      OPC=nop             
  nop                                #  17    0xfd87b  1      OPC=nop             
  nop                                #  18    0xfd87c  1      OPC=nop             
  nop                                #  19    0xfd87d  1      OPC=nop             
  nop                                #  20    0xfd87e  1      OPC=nop             
  nop                                #  21    0xfd87f  1      OPC=nop             
.L_fd880:                            #        0xfd880  0      OPC=<label>         
  movl %ebx, %ebx                    #  22    0xfd880  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edi           #  23    0xfd882  4      OPC=movl_r32_m32    
  nop                                #  24    0xfd886  1      OPC=nop             
  nop                                #  25    0xfd887  1      OPC=nop             
  nop                                #  26    0xfd888  1      OPC=nop             
  nop                                #  27    0xfd889  1      OPC=nop             
  nop                                #  28    0xfd88a  1      OPC=nop             
  nop                                #  29    0xfd88b  1      OPC=nop             
  nop                                #  30    0xfd88c  1      OPC=nop             
  nop                                #  31    0xfd88d  1      OPC=nop             
  nop                                #  32    0xfd88e  1      OPC=nop             
  nop                                #  33    0xfd88f  1      OPC=nop             
  nop                                #  34    0xfd890  1      OPC=nop             
  nop                                #  35    0xfd891  1      OPC=nop             
  nop                                #  36    0xfd892  1      OPC=nop             
  nop                                #  37    0xfd893  1      OPC=nop             
  nop                                #  38    0xfd894  1      OPC=nop             
  nop                                #  39    0xfd895  1      OPC=nop             
  nop                                #  40    0xfd896  1      OPC=nop             
  nop                                #  41    0xfd897  1      OPC=nop             
  nop                                #  42    0xfd898  1      OPC=nop             
  nop                                #  43    0xfd899  1      OPC=nop             
  nop                                #  44    0xfd89a  1      OPC=nop             
  callq .towlower                    #  45    0xfd89b  5      OPC=callq_label     
  movl %ebx, %ebx                    #  46    0xfd8a0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)           #  47    0xfd8a2  4      OPC=movl_m32_r32    
  addl $0x4, %ebx                    #  48    0xfd8a6  3      OPC=addl_r32_imm8   
  cmpl %ebx, %r12d                   #  49    0xfd8a9  3      OPC=cmpl_r32_r32    
  ja .L_fd880                        #  50    0xfd8ac  2      OPC=ja_label        
  nop                                #  51    0xfd8ae  1      OPC=nop             
  nop                                #  52    0xfd8af  1      OPC=nop             
  nop                                #  53    0xfd8b0  1      OPC=nop             
  nop                                #  54    0xfd8b1  1      OPC=nop             
  nop                                #  55    0xfd8b2  1      OPC=nop             
  nop                                #  56    0xfd8b3  1      OPC=nop             
  nop                                #  57    0xfd8b4  1      OPC=nop             
  nop                                #  58    0xfd8b5  1      OPC=nop             
  nop                                #  59    0xfd8b6  1      OPC=nop             
  nop                                #  60    0xfd8b7  1      OPC=nop             
  nop                                #  61    0xfd8b8  1      OPC=nop             
  nop                                #  62    0xfd8b9  1      OPC=nop             
  nop                                #  63    0xfd8ba  1      OPC=nop             
  nop                                #  64    0xfd8bb  1      OPC=nop             
  nop                                #  65    0xfd8bc  1      OPC=nop             
  nop                                #  66    0xfd8bd  1      OPC=nop             
  nop                                #  67    0xfd8be  1      OPC=nop             
  nop                                #  68    0xfd8bf  1      OPC=nop             
.L_fd8c0:                            #        0xfd8c0  0      OPC=<label>         
  addl $0x8, %esp                    #  69    0xfd8c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                    #  70    0xfd8c3  3      OPC=addq_r64_r64    
  movl %r12d, %eax                   #  71    0xfd8c6  3      OPC=movl_r32_r32    
  popq %rbx                          #  72    0xfd8c9  1      OPC=popq_r64_1      
  popq %r12                          #  73    0xfd8ca  2      OPC=popq_r64_1      
  popq %r11                          #  74    0xfd8cc  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  75    0xfd8ce  7      OPC=andl_r32_imm32  
  nop                                #  76    0xfd8d5  1      OPC=nop             
  nop                                #  77    0xfd8d6  1      OPC=nop             
  nop                                #  78    0xfd8d7  1      OPC=nop             
  nop                                #  79    0xfd8d8  1      OPC=nop             
  addq %r15, %r11                    #  80    0xfd8d9  3      OPC=addq_r64_r64    
  jmpq %r11                          #  81    0xfd8dc  3      OPC=jmpq_r64        
  nop                                #  82    0xfd8df  1      OPC=nop             
  nop                                #  83    0xfd8e0  1      OPC=nop             
  nop                                #  84    0xfd8e1  1      OPC=nop             
  nop                                #  85    0xfd8e2  1      OPC=nop             
  nop                                #  86    0xfd8e3  1      OPC=nop             
  nop                                #  87    0xfd8e4  1      OPC=nop             
  nop                                #  88    0xfd8e5  1      OPC=nop             
  nop                                #  89    0xfd8e6  1      OPC=nop             
                                                                                  
.size _ZNKSt5ctypeIwE10do_tolowerEPwPKw, .-_ZNKSt5ctypeIwE10do_tolowerEPwPKw

