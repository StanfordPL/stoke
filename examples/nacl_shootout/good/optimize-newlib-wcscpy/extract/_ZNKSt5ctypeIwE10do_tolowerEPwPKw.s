  .text
  .globl _ZNKSt5ctypeIwE10do_tolowerEPwPKw
  .type _ZNKSt5ctypeIwE10do_tolowerEPwPKw, @function

#! file-offset 0x13ce40
#! rip-offset  0xfce40
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIwE10do_tolowerEPwPKw:  #        0xfce40  0      OPC=<label>         
  pushq %r12                         #  1     0xfce40  2      OPC=pushq_r64_1     
  movl %edx, %r12d                   #  2     0xfce42  3      OPC=movl_r32_r32    
  pushq %rbx                         #  3     0xfce45  1      OPC=pushq_r64_1     
  movl %esi, %ebx                    #  4     0xfce46  2      OPC=movl_r32_r32    
  subl $0x8, %esp                    #  5     0xfce48  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                    #  6     0xfce4b  3      OPC=addq_r64_r64    
  cmpl %r12d, %ebx                   #  7     0xfce4e  3      OPC=cmpl_r32_r32    
  jae .L_fcea0                       #  8     0xfce51  2      OPC=jae_label       
  nop                                #  9     0xfce53  1      OPC=nop             
  nop                                #  10    0xfce54  1      OPC=nop             
  nop                                #  11    0xfce55  1      OPC=nop             
  nop                                #  12    0xfce56  1      OPC=nop             
  nop                                #  13    0xfce57  1      OPC=nop             
  nop                                #  14    0xfce58  1      OPC=nop             
  nop                                #  15    0xfce59  1      OPC=nop             
  nop                                #  16    0xfce5a  1      OPC=nop             
  nop                                #  17    0xfce5b  1      OPC=nop             
  nop                                #  18    0xfce5c  1      OPC=nop             
  nop                                #  19    0xfce5d  1      OPC=nop             
  nop                                #  20    0xfce5e  1      OPC=nop             
  nop                                #  21    0xfce5f  1      OPC=nop             
.L_fce60:                            #        0xfce60  0      OPC=<label>         
  movl %ebx, %ebx                    #  22    0xfce60  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edi           #  23    0xfce62  4      OPC=movl_r32_m32    
  nop                                #  24    0xfce66  1      OPC=nop             
  nop                                #  25    0xfce67  1      OPC=nop             
  nop                                #  26    0xfce68  1      OPC=nop             
  nop                                #  27    0xfce69  1      OPC=nop             
  nop                                #  28    0xfce6a  1      OPC=nop             
  nop                                #  29    0xfce6b  1      OPC=nop             
  nop                                #  30    0xfce6c  1      OPC=nop             
  nop                                #  31    0xfce6d  1      OPC=nop             
  nop                                #  32    0xfce6e  1      OPC=nop             
  nop                                #  33    0xfce6f  1      OPC=nop             
  nop                                #  34    0xfce70  1      OPC=nop             
  nop                                #  35    0xfce71  1      OPC=nop             
  nop                                #  36    0xfce72  1      OPC=nop             
  nop                                #  37    0xfce73  1      OPC=nop             
  nop                                #  38    0xfce74  1      OPC=nop             
  nop                                #  39    0xfce75  1      OPC=nop             
  nop                                #  40    0xfce76  1      OPC=nop             
  nop                                #  41    0xfce77  1      OPC=nop             
  nop                                #  42    0xfce78  1      OPC=nop             
  nop                                #  43    0xfce79  1      OPC=nop             
  nop                                #  44    0xfce7a  1      OPC=nop             
  callq .towlower                    #  45    0xfce7b  5      OPC=callq_label     
  movl %ebx, %ebx                    #  46    0xfce80  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)           #  47    0xfce82  4      OPC=movl_m32_r32    
  addl $0x4, %ebx                    #  48    0xfce86  3      OPC=addl_r32_imm8   
  cmpl %ebx, %r12d                   #  49    0xfce89  3      OPC=cmpl_r32_r32    
  ja .L_fce60                        #  50    0xfce8c  2      OPC=ja_label        
  nop                                #  51    0xfce8e  1      OPC=nop             
  nop                                #  52    0xfce8f  1      OPC=nop             
  nop                                #  53    0xfce90  1      OPC=nop             
  nop                                #  54    0xfce91  1      OPC=nop             
  nop                                #  55    0xfce92  1      OPC=nop             
  nop                                #  56    0xfce93  1      OPC=nop             
  nop                                #  57    0xfce94  1      OPC=nop             
  nop                                #  58    0xfce95  1      OPC=nop             
  nop                                #  59    0xfce96  1      OPC=nop             
  nop                                #  60    0xfce97  1      OPC=nop             
  nop                                #  61    0xfce98  1      OPC=nop             
  nop                                #  62    0xfce99  1      OPC=nop             
  nop                                #  63    0xfce9a  1      OPC=nop             
  nop                                #  64    0xfce9b  1      OPC=nop             
  nop                                #  65    0xfce9c  1      OPC=nop             
  nop                                #  66    0xfce9d  1      OPC=nop             
  nop                                #  67    0xfce9e  1      OPC=nop             
  nop                                #  68    0xfce9f  1      OPC=nop             
.L_fcea0:                            #        0xfcea0  0      OPC=<label>         
  addl $0x8, %esp                    #  69    0xfcea0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                    #  70    0xfcea3  3      OPC=addq_r64_r64    
  movl %r12d, %eax                   #  71    0xfcea6  3      OPC=movl_r32_r32    
  popq %rbx                          #  72    0xfcea9  1      OPC=popq_r64_1      
  popq %r12                          #  73    0xfceaa  2      OPC=popq_r64_1      
  popq %r11                          #  74    0xfceac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  75    0xfceae  7      OPC=andl_r32_imm32  
  nop                                #  76    0xfceb5  1      OPC=nop             
  nop                                #  77    0xfceb6  1      OPC=nop             
  nop                                #  78    0xfceb7  1      OPC=nop             
  nop                                #  79    0xfceb8  1      OPC=nop             
  addq %r15, %r11                    #  80    0xfceb9  3      OPC=addq_r64_r64    
  jmpq %r11                          #  81    0xfcebc  3      OPC=jmpq_r64        
  nop                                #  82    0xfcebf  1      OPC=nop             
  nop                                #  83    0xfcec0  1      OPC=nop             
  nop                                #  84    0xfcec1  1      OPC=nop             
  nop                                #  85    0xfcec2  1      OPC=nop             
  nop                                #  86    0xfcec3  1      OPC=nop             
  nop                                #  87    0xfcec4  1      OPC=nop             
  nop                                #  88    0xfcec5  1      OPC=nop             
  nop                                #  89    0xfcec6  1      OPC=nop             
                                                                                  
.size _ZNKSt5ctypeIwE10do_tolowerEPwPKw, .-_ZNKSt5ctypeIwE10do_tolowerEPwPKw

