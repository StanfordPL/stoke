  .text
  .globl _ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv
  .type _ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv, @function

#! file-offset 0x132fc0
#! rip-offset  0xf2fc0
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv:                 #        0xf2fc0  0      OPC=<label>         
  pushq %rbx                                                         #  1     0xf2fc0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  2     0xf2fc1  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi                                               #  3     0xf2fc3  3      OPC=leal_r32_m16    
  nop                                                                #  4     0xf2fc6  1      OPC=nop             
  nop                                                                #  5     0xf2fc7  1      OPC=nop             
  nop                                                                #  6     0xf2fc8  1      OPC=nop             
  nop                                                                #  7     0xf2fc9  1      OPC=nop             
  nop                                                                #  8     0xf2fca  1      OPC=nop             
  nop                                                                #  9     0xf2fcb  1      OPC=nop             
  nop                                                                #  10    0xf2fcc  1      OPC=nop             
  nop                                                                #  11    0xf2fcd  1      OPC=nop             
  nop                                                                #  12    0xf2fce  1      OPC=nop             
  nop                                                                #  13    0xf2fcf  1      OPC=nop             
  nop                                                                #  14    0xf2fd0  1      OPC=nop             
  nop                                                                #  15    0xf2fd1  1      OPC=nop             
  nop                                                                #  16    0xf2fd2  1      OPC=nop             
  nop                                                                #  17    0xf2fd3  1      OPC=nop             
  nop                                                                #  18    0xf2fd4  1      OPC=nop             
  nop                                                                #  19    0xf2fd5  1      OPC=nop             
  nop                                                                #  20    0xf2fd6  1      OPC=nop             
  nop                                                                #  21    0xf2fd7  1      OPC=nop             
  nop                                                                #  22    0xf2fd8  1      OPC=nop             
  nop                                                                #  23    0xf2fd9  1      OPC=nop             
  nop                                                                #  24    0xf2fda  1      OPC=nop             
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE5closeEv           #  25    0xf2fdb  5      OPC=callq_label     
  testl %eax, %eax                                                   #  26    0xf2fe0  2      OPC=testl_r32_r32   
  je .L_f3000                                                        #  27    0xf2fe2  2      OPC=je_label        
  popq %rbx                                                          #  28    0xf2fe4  1      OPC=popq_r64_1      
  popq %r11                                                          #  29    0xf2fe5  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  30    0xf2fe7  7      OPC=andl_r32_imm32  
  nop                                                                #  31    0xf2fee  1      OPC=nop             
  nop                                                                #  32    0xf2fef  1      OPC=nop             
  nop                                                                #  33    0xf2ff0  1      OPC=nop             
  nop                                                                #  34    0xf2ff1  1      OPC=nop             
  addq %r15, %r11                                                    #  35    0xf2ff2  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  36    0xf2ff5  3      OPC=jmpq_r64        
  nop                                                                #  37    0xf2ff8  1      OPC=nop             
  nop                                                                #  38    0xf2ff9  1      OPC=nop             
  nop                                                                #  39    0xf2ffa  1      OPC=nop             
  nop                                                                #  40    0xf2ffb  1      OPC=nop             
  nop                                                                #  41    0xf2ffc  1      OPC=nop             
  nop                                                                #  42    0xf2ffd  1      OPC=nop             
  nop                                                                #  43    0xf2ffe  1      OPC=nop             
  nop                                                                #  44    0xf2fff  1      OPC=nop             
  nop                                                                #  45    0xf3000  1      OPC=nop             
  nop                                                                #  46    0xf3001  1      OPC=nop             
  nop                                                                #  47    0xf3002  1      OPC=nop             
  nop                                                                #  48    0xf3003  1      OPC=nop             
  nop                                                                #  49    0xf3004  1      OPC=nop             
  nop                                                                #  50    0xf3005  1      OPC=nop             
  nop                                                                #  51    0xf3006  1      OPC=nop             
.L_f3000:                                                            #        0xf3007  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  52    0xf3007  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  53    0xf3009  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  54    0xf300d  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  55    0xf3010  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  56    0xf3012  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  57    0xf3016  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  58    0xf3018  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  59    0xf301a  5      OPC=movl_r32_m32    
  popq %rbx                                                          #  60    0xf301f  1      OPC=popq_r64_1      
  orl $0x4, %esi                                                     #  61    0xf3020  3      OPC=orl_r32_imm8    
  nop                                                                #  62    0xf3023  1      OPC=nop             
  nop                                                                #  63    0xf3024  1      OPC=nop             
  nop                                                                #  64    0xf3025  1      OPC=nop             
  nop                                                                #  65    0xf3026  1      OPC=nop             
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate  #  66    0xf3027  5      OPC=jmpq_label_1    
  nop                                                                #  67    0xf302c  1      OPC=nop             
  nop                                                                #  68    0xf302d  1      OPC=nop             
  nop                                                                #  69    0xf302e  1      OPC=nop             
  nop                                                                #  70    0xf302f  1      OPC=nop             
  nop                                                                #  71    0xf3030  1      OPC=nop             
  nop                                                                #  72    0xf3031  1      OPC=nop             
  nop                                                                #  73    0xf3032  1      OPC=nop             
  nop                                                                #  74    0xf3033  1      OPC=nop             
  nop                                                                #  75    0xf3034  1      OPC=nop             
  nop                                                                #  76    0xf3035  1      OPC=nop             
  nop                                                                #  77    0xf3036  1      OPC=nop             
  nop                                                                #  78    0xf3037  1      OPC=nop             
  nop                                                                #  79    0xf3038  1      OPC=nop             
  nop                                                                #  80    0xf3039  1      OPC=nop             
  nop                                                                #  81    0xf303a  1      OPC=nop             
  nop                                                                #  82    0xf303b  1      OPC=nop             
  nop                                                                #  83    0xf303c  1      OPC=nop             
  nop                                                                #  84    0xf303d  1      OPC=nop             
  nop                                                                #  85    0xf303e  1      OPC=nop             
  nop                                                                #  86    0xf303f  1      OPC=nop             
  nop                                                                #  87    0xf3040  1      OPC=nop             
  nop                                                                #  88    0xf3041  1      OPC=nop             
  nop                                                                #  89    0xf3042  1      OPC=nop             
  nop                                                                #  90    0xf3043  1      OPC=nop             
  nop                                                                #  91    0xf3044  1      OPC=nop             
  nop                                                                #  92    0xf3045  1      OPC=nop             
  nop                                                                #  93    0xf3046  1      OPC=nop             
                                                                                                                  
.size _ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv, .-_ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv

