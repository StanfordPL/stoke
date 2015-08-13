  .text
  .globl _ZNKSt5ctypeIwE10do_toupperEPwPKw
  .type _ZNKSt5ctypeIwE10do_toupperEPwPKw, @function

#! file-offset 0x13cee0
#! rip-offset  0xfcee0
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIwE10do_toupperEPwPKw:  #        0xfcee0  0      OPC=<label>         
  pushq %r12                         #  1     0xfcee0  2      OPC=pushq_r64_1     
  movl %edx, %r12d                   #  2     0xfcee2  3      OPC=movl_r32_r32    
  pushq %rbx                         #  3     0xfcee5  1      OPC=pushq_r64_1     
  movl %esi, %ebx                    #  4     0xfcee6  2      OPC=movl_r32_r32    
  subl $0x8, %esp                    #  5     0xfcee8  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                    #  6     0xfceeb  3      OPC=addq_r64_r64    
  cmpl %r12d, %ebx                   #  7     0xfceee  3      OPC=cmpl_r32_r32    
  jae .L_fcf40                       #  8     0xfcef1  2      OPC=jae_label       
  nop                                #  9     0xfcef3  1      OPC=nop             
  nop                                #  10    0xfcef4  1      OPC=nop             
  nop                                #  11    0xfcef5  1      OPC=nop             
  nop                                #  12    0xfcef6  1      OPC=nop             
  nop                                #  13    0xfcef7  1      OPC=nop             
  nop                                #  14    0xfcef8  1      OPC=nop             
  nop                                #  15    0xfcef9  1      OPC=nop             
  nop                                #  16    0xfcefa  1      OPC=nop             
  nop                                #  17    0xfcefb  1      OPC=nop             
  nop                                #  18    0xfcefc  1      OPC=nop             
  nop                                #  19    0xfcefd  1      OPC=nop             
  nop                                #  20    0xfcefe  1      OPC=nop             
  nop                                #  21    0xfceff  1      OPC=nop             
.L_fcf00:                            #        0xfcf00  0      OPC=<label>         
  movl %ebx, %ebx                    #  22    0xfcf00  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edi           #  23    0xfcf02  4      OPC=movl_r32_m32    
  nop                                #  24    0xfcf06  1      OPC=nop             
  nop                                #  25    0xfcf07  1      OPC=nop             
  nop                                #  26    0xfcf08  1      OPC=nop             
  nop                                #  27    0xfcf09  1      OPC=nop             
  nop                                #  28    0xfcf0a  1      OPC=nop             
  nop                                #  29    0xfcf0b  1      OPC=nop             
  nop                                #  30    0xfcf0c  1      OPC=nop             
  nop                                #  31    0xfcf0d  1      OPC=nop             
  nop                                #  32    0xfcf0e  1      OPC=nop             
  nop                                #  33    0xfcf0f  1      OPC=nop             
  nop                                #  34    0xfcf10  1      OPC=nop             
  nop                                #  35    0xfcf11  1      OPC=nop             
  nop                                #  36    0xfcf12  1      OPC=nop             
  nop                                #  37    0xfcf13  1      OPC=nop             
  nop                                #  38    0xfcf14  1      OPC=nop             
  nop                                #  39    0xfcf15  1      OPC=nop             
  nop                                #  40    0xfcf16  1      OPC=nop             
  nop                                #  41    0xfcf17  1      OPC=nop             
  nop                                #  42    0xfcf18  1      OPC=nop             
  nop                                #  43    0xfcf19  1      OPC=nop             
  nop                                #  44    0xfcf1a  1      OPC=nop             
  callq .towupper                    #  45    0xfcf1b  5      OPC=callq_label     
  movl %ebx, %ebx                    #  46    0xfcf20  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)           #  47    0xfcf22  4      OPC=movl_m32_r32    
  addl $0x4, %ebx                    #  48    0xfcf26  3      OPC=addl_r32_imm8   
  cmpl %ebx, %r12d                   #  49    0xfcf29  3      OPC=cmpl_r32_r32    
  ja .L_fcf00                        #  50    0xfcf2c  2      OPC=ja_label        
  nop                                #  51    0xfcf2e  1      OPC=nop             
  nop                                #  52    0xfcf2f  1      OPC=nop             
  nop                                #  53    0xfcf30  1      OPC=nop             
  nop                                #  54    0xfcf31  1      OPC=nop             
  nop                                #  55    0xfcf32  1      OPC=nop             
  nop                                #  56    0xfcf33  1      OPC=nop             
  nop                                #  57    0xfcf34  1      OPC=nop             
  nop                                #  58    0xfcf35  1      OPC=nop             
  nop                                #  59    0xfcf36  1      OPC=nop             
  nop                                #  60    0xfcf37  1      OPC=nop             
  nop                                #  61    0xfcf38  1      OPC=nop             
  nop                                #  62    0xfcf39  1      OPC=nop             
  nop                                #  63    0xfcf3a  1      OPC=nop             
  nop                                #  64    0xfcf3b  1      OPC=nop             
  nop                                #  65    0xfcf3c  1      OPC=nop             
  nop                                #  66    0xfcf3d  1      OPC=nop             
  nop                                #  67    0xfcf3e  1      OPC=nop             
  nop                                #  68    0xfcf3f  1      OPC=nop             
.L_fcf40:                            #        0xfcf40  0      OPC=<label>         
  addl $0x8, %esp                    #  69    0xfcf40  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                    #  70    0xfcf43  3      OPC=addq_r64_r64    
  movl %r12d, %eax                   #  71    0xfcf46  3      OPC=movl_r32_r32    
  popq %rbx                          #  72    0xfcf49  1      OPC=popq_r64_1      
  popq %r12                          #  73    0xfcf4a  2      OPC=popq_r64_1      
  popq %r11                          #  74    0xfcf4c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  75    0xfcf4e  7      OPC=andl_r32_imm32  
  nop                                #  76    0xfcf55  1      OPC=nop             
  nop                                #  77    0xfcf56  1      OPC=nop             
  nop                                #  78    0xfcf57  1      OPC=nop             
  nop                                #  79    0xfcf58  1      OPC=nop             
  addq %r15, %r11                    #  80    0xfcf59  3      OPC=addq_r64_r64    
  jmpq %r11                          #  81    0xfcf5c  3      OPC=jmpq_r64        
  nop                                #  82    0xfcf5f  1      OPC=nop             
  nop                                #  83    0xfcf60  1      OPC=nop             
  nop                                #  84    0xfcf61  1      OPC=nop             
  nop                                #  85    0xfcf62  1      OPC=nop             
  nop                                #  86    0xfcf63  1      OPC=nop             
  nop                                #  87    0xfcf64  1      OPC=nop             
  nop                                #  88    0xfcf65  1      OPC=nop             
  nop                                #  89    0xfcf66  1      OPC=nop             
                                                                                  
.size _ZNKSt5ctypeIwE10do_toupperEPwPKw, .-_ZNKSt5ctypeIwE10do_toupperEPwPKw

