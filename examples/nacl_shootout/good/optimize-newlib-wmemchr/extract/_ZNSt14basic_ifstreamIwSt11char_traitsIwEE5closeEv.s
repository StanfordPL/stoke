  .text
  .globl _ZNSt14basic_ifstreamIwSt11char_traitsIwEE5closeEv
  .type _ZNSt14basic_ifstreamIwSt11char_traitsIwEE5closeEv, @function

#! file-offset 0x133040
#! rip-offset  0xf3040
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_ifstreamIwSt11char_traitsIwEE5closeEv:                 #        0xf3040  0      OPC=<label>         
  pushq %rbx                                                         #  1     0xf3040  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  2     0xf3041  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                               #  3     0xf3043  3      OPC=leal_r32_m16    
  nop                                                                #  4     0xf3046  1      OPC=nop             
  nop                                                                #  5     0xf3047  1      OPC=nop             
  nop                                                                #  6     0xf3048  1      OPC=nop             
  nop                                                                #  7     0xf3049  1      OPC=nop             
  nop                                                                #  8     0xf304a  1      OPC=nop             
  nop                                                                #  9     0xf304b  1      OPC=nop             
  nop                                                                #  10    0xf304c  1      OPC=nop             
  nop                                                                #  11    0xf304d  1      OPC=nop             
  nop                                                                #  12    0xf304e  1      OPC=nop             
  nop                                                                #  13    0xf304f  1      OPC=nop             
  nop                                                                #  14    0xf3050  1      OPC=nop             
  nop                                                                #  15    0xf3051  1      OPC=nop             
  nop                                                                #  16    0xf3052  1      OPC=nop             
  nop                                                                #  17    0xf3053  1      OPC=nop             
  nop                                                                #  18    0xf3054  1      OPC=nop             
  nop                                                                #  19    0xf3055  1      OPC=nop             
  nop                                                                #  20    0xf3056  1      OPC=nop             
  nop                                                                #  21    0xf3057  1      OPC=nop             
  nop                                                                #  22    0xf3058  1      OPC=nop             
  nop                                                                #  23    0xf3059  1      OPC=nop             
  nop                                                                #  24    0xf305a  1      OPC=nop             
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE5closeEv           #  25    0xf305b  5      OPC=callq_label     
  testl %eax, %eax                                                   #  26    0xf3060  2      OPC=testl_r32_r32   
  je .L_f3080                                                        #  27    0xf3062  2      OPC=je_label        
  popq %rbx                                                          #  28    0xf3064  1      OPC=popq_r64_1      
  popq %r11                                                          #  29    0xf3065  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  30    0xf3067  7      OPC=andl_r32_imm32  
  nop                                                                #  31    0xf306e  1      OPC=nop             
  nop                                                                #  32    0xf306f  1      OPC=nop             
  nop                                                                #  33    0xf3070  1      OPC=nop             
  nop                                                                #  34    0xf3071  1      OPC=nop             
  addq %r15, %r11                                                    #  35    0xf3072  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  36    0xf3075  3      OPC=jmpq_r64        
  nop                                                                #  37    0xf3078  1      OPC=nop             
  nop                                                                #  38    0xf3079  1      OPC=nop             
  nop                                                                #  39    0xf307a  1      OPC=nop             
  nop                                                                #  40    0xf307b  1      OPC=nop             
  nop                                                                #  41    0xf307c  1      OPC=nop             
  nop                                                                #  42    0xf307d  1      OPC=nop             
  nop                                                                #  43    0xf307e  1      OPC=nop             
  nop                                                                #  44    0xf307f  1      OPC=nop             
  nop                                                                #  45    0xf3080  1      OPC=nop             
  nop                                                                #  46    0xf3081  1      OPC=nop             
  nop                                                                #  47    0xf3082  1      OPC=nop             
  nop                                                                #  48    0xf3083  1      OPC=nop             
  nop                                                                #  49    0xf3084  1      OPC=nop             
  nop                                                                #  50    0xf3085  1      OPC=nop             
  nop                                                                #  51    0xf3086  1      OPC=nop             
.L_f3080:                                                            #        0xf3087  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  52    0xf3087  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  53    0xf3089  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  54    0xf308d  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  55    0xf3090  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  56    0xf3092  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  57    0xf3096  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  58    0xf3098  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  59    0xf309a  5      OPC=movl_r32_m32    
  popq %rbx                                                          #  60    0xf309f  1      OPC=popq_r64_1      
  orl $0x4, %esi                                                     #  61    0xf30a0  3      OPC=orl_r32_imm8    
  nop                                                                #  62    0xf30a3  1      OPC=nop             
  nop                                                                #  63    0xf30a4  1      OPC=nop             
  nop                                                                #  64    0xf30a5  1      OPC=nop             
  nop                                                                #  65    0xf30a6  1      OPC=nop             
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate  #  66    0xf30a7  5      OPC=jmpq_label_1    
  nop                                                                #  67    0xf30ac  1      OPC=nop             
  nop                                                                #  68    0xf30ad  1      OPC=nop             
  nop                                                                #  69    0xf30ae  1      OPC=nop             
  nop                                                                #  70    0xf30af  1      OPC=nop             
  nop                                                                #  71    0xf30b0  1      OPC=nop             
  nop                                                                #  72    0xf30b1  1      OPC=nop             
  nop                                                                #  73    0xf30b2  1      OPC=nop             
  nop                                                                #  74    0xf30b3  1      OPC=nop             
  nop                                                                #  75    0xf30b4  1      OPC=nop             
  nop                                                                #  76    0xf30b5  1      OPC=nop             
  nop                                                                #  77    0xf30b6  1      OPC=nop             
  nop                                                                #  78    0xf30b7  1      OPC=nop             
  nop                                                                #  79    0xf30b8  1      OPC=nop             
  nop                                                                #  80    0xf30b9  1      OPC=nop             
  nop                                                                #  81    0xf30ba  1      OPC=nop             
  nop                                                                #  82    0xf30bb  1      OPC=nop             
  nop                                                                #  83    0xf30bc  1      OPC=nop             
  nop                                                                #  84    0xf30bd  1      OPC=nop             
  nop                                                                #  85    0xf30be  1      OPC=nop             
  nop                                                                #  86    0xf30bf  1      OPC=nop             
  nop                                                                #  87    0xf30c0  1      OPC=nop             
  nop                                                                #  88    0xf30c1  1      OPC=nop             
  nop                                                                #  89    0xf30c2  1      OPC=nop             
  nop                                                                #  90    0xf30c3  1      OPC=nop             
  nop                                                                #  91    0xf30c4  1      OPC=nop             
  nop                                                                #  92    0xf30c5  1      OPC=nop             
  nop                                                                #  93    0xf30c6  1      OPC=nop             
                                                                                                                  
.size _ZNSt14basic_ifstreamIwSt11char_traitsIwEE5closeEv, .-_ZNSt14basic_ifstreamIwSt11char_traitsIwEE5closeEv

