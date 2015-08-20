  .text
  .globl _ZNKSt5ctypeIwE10do_toupperEPwPKw
  .type _ZNKSt5ctypeIwE10do_toupperEPwPKw, @function

#! file-offset 0x13d1e0
#! rip-offset  0xfd1e0
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIwE10do_toupperEPwPKw:  #        0xfd1e0  0      OPC=<label>         
  pushq %r12                         #  1     0xfd1e0  2      OPC=pushq_r64_1     
  movl %edx, %r12d                   #  2     0xfd1e2  3      OPC=movl_r32_r32    
  pushq %rbx                         #  3     0xfd1e5  1      OPC=pushq_r64_1     
  movl %esi, %ebx                    #  4     0xfd1e6  2      OPC=movl_r32_r32    
  subl $0x8, %esp                    #  5     0xfd1e8  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                    #  6     0xfd1eb  3      OPC=addq_r64_r64    
  cmpl %r12d, %ebx                   #  7     0xfd1ee  3      OPC=cmpl_r32_r32    
  jae .L_fd240                       #  8     0xfd1f1  2      OPC=jae_label       
  nop                                #  9     0xfd1f3  1      OPC=nop             
  nop                                #  10    0xfd1f4  1      OPC=nop             
  nop                                #  11    0xfd1f5  1      OPC=nop             
  nop                                #  12    0xfd1f6  1      OPC=nop             
  nop                                #  13    0xfd1f7  1      OPC=nop             
  nop                                #  14    0xfd1f8  1      OPC=nop             
  nop                                #  15    0xfd1f9  1      OPC=nop             
  nop                                #  16    0xfd1fa  1      OPC=nop             
  nop                                #  17    0xfd1fb  1      OPC=nop             
  nop                                #  18    0xfd1fc  1      OPC=nop             
  nop                                #  19    0xfd1fd  1      OPC=nop             
  nop                                #  20    0xfd1fe  1      OPC=nop             
  nop                                #  21    0xfd1ff  1      OPC=nop             
.L_fd200:                            #        0xfd200  0      OPC=<label>         
  movl %ebx, %ebx                    #  22    0xfd200  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edi           #  23    0xfd202  4      OPC=movl_r32_m32    
  nop                                #  24    0xfd206  1      OPC=nop             
  nop                                #  25    0xfd207  1      OPC=nop             
  nop                                #  26    0xfd208  1      OPC=nop             
  nop                                #  27    0xfd209  1      OPC=nop             
  nop                                #  28    0xfd20a  1      OPC=nop             
  nop                                #  29    0xfd20b  1      OPC=nop             
  nop                                #  30    0xfd20c  1      OPC=nop             
  nop                                #  31    0xfd20d  1      OPC=nop             
  nop                                #  32    0xfd20e  1      OPC=nop             
  nop                                #  33    0xfd20f  1      OPC=nop             
  nop                                #  34    0xfd210  1      OPC=nop             
  nop                                #  35    0xfd211  1      OPC=nop             
  nop                                #  36    0xfd212  1      OPC=nop             
  nop                                #  37    0xfd213  1      OPC=nop             
  nop                                #  38    0xfd214  1      OPC=nop             
  nop                                #  39    0xfd215  1      OPC=nop             
  nop                                #  40    0xfd216  1      OPC=nop             
  nop                                #  41    0xfd217  1      OPC=nop             
  nop                                #  42    0xfd218  1      OPC=nop             
  nop                                #  43    0xfd219  1      OPC=nop             
  nop                                #  44    0xfd21a  1      OPC=nop             
  callq .towupper                    #  45    0xfd21b  5      OPC=callq_label     
  movl %ebx, %ebx                    #  46    0xfd220  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)           #  47    0xfd222  4      OPC=movl_m32_r32    
  addl $0x4, %ebx                    #  48    0xfd226  3      OPC=addl_r32_imm8   
  cmpl %ebx, %r12d                   #  49    0xfd229  3      OPC=cmpl_r32_r32    
  ja .L_fd200                        #  50    0xfd22c  2      OPC=ja_label        
  nop                                #  51    0xfd22e  1      OPC=nop             
  nop                                #  52    0xfd22f  1      OPC=nop             
  nop                                #  53    0xfd230  1      OPC=nop             
  nop                                #  54    0xfd231  1      OPC=nop             
  nop                                #  55    0xfd232  1      OPC=nop             
  nop                                #  56    0xfd233  1      OPC=nop             
  nop                                #  57    0xfd234  1      OPC=nop             
  nop                                #  58    0xfd235  1      OPC=nop             
  nop                                #  59    0xfd236  1      OPC=nop             
  nop                                #  60    0xfd237  1      OPC=nop             
  nop                                #  61    0xfd238  1      OPC=nop             
  nop                                #  62    0xfd239  1      OPC=nop             
  nop                                #  63    0xfd23a  1      OPC=nop             
  nop                                #  64    0xfd23b  1      OPC=nop             
  nop                                #  65    0xfd23c  1      OPC=nop             
  nop                                #  66    0xfd23d  1      OPC=nop             
  nop                                #  67    0xfd23e  1      OPC=nop             
  nop                                #  68    0xfd23f  1      OPC=nop             
.L_fd240:                            #        0xfd240  0      OPC=<label>         
  addl $0x8, %esp                    #  69    0xfd240  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                    #  70    0xfd243  3      OPC=addq_r64_r64    
  movl %r12d, %eax                   #  71    0xfd246  3      OPC=movl_r32_r32    
  popq %rbx                          #  72    0xfd249  1      OPC=popq_r64_1      
  popq %r12                          #  73    0xfd24a  2      OPC=popq_r64_1      
  popq %r11                          #  74    0xfd24c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  75    0xfd24e  7      OPC=andl_r32_imm32  
  nop                                #  76    0xfd255  1      OPC=nop             
  nop                                #  77    0xfd256  1      OPC=nop             
  nop                                #  78    0xfd257  1      OPC=nop             
  nop                                #  79    0xfd258  1      OPC=nop             
  addq %r15, %r11                    #  80    0xfd259  3      OPC=addq_r64_r64    
  jmpq %r11                          #  81    0xfd25c  3      OPC=jmpq_r64        
  nop                                #  82    0xfd25f  1      OPC=nop             
  nop                                #  83    0xfd260  1      OPC=nop             
  nop                                #  84    0xfd261  1      OPC=nop             
  nop                                #  85    0xfd262  1      OPC=nop             
  nop                                #  86    0xfd263  1      OPC=nop             
  nop                                #  87    0xfd264  1      OPC=nop             
  nop                                #  88    0xfd265  1      OPC=nop             
  nop                                #  89    0xfd266  1      OPC=nop             
                                                                                  
.size _ZNKSt5ctypeIwE10do_toupperEPwPKw, .-_ZNKSt5ctypeIwE10do_toupperEPwPKw

