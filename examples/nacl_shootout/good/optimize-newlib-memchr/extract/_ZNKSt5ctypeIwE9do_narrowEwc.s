  .text
  .globl _ZNKSt5ctypeIwE9do_narrowEwc
  .type _ZNKSt5ctypeIwE9do_narrowEwc, @function

#! file-offset 0x13d600
#! rip-offset  0xfd600
#! capacity    128 bytes

# Text                           #  Line  RIP      Bytes  Opcode               
._ZNKSt5ctypeIwE9do_narrowEwc:   #        0xfd600  0      OPC=<label>          
  cmpl $0x7f, %esi               #  1     0xfd600  3      OPC=cmpl_r32_imm8    
  pushq %rbx                     #  2     0xfd603  1      OPC=pushq_r64_1      
  movl %edi, %edi                #  3     0xfd604  2      OPC=movl_r32_r32     
  movl %edx, %ebx                #  4     0xfd606  2      OPC=movl_r32_r32     
  ja .L_fd620                    #  5     0xfd608  2      OPC=ja_label         
  movl %edi, %edi                #  6     0xfd60a  2      OPC=movl_r32_r32     
  cmpb $0x0, 0xc(%r15,%rdi,1)    #  7     0xfd60c  6      OPC=cmpb_m8_imm8     
  jne .L_fd660                   #  8     0xfd612  2      OPC=jne_label        
  nop                            #  9     0xfd614  1      OPC=nop              
  nop                            #  10    0xfd615  1      OPC=nop              
  nop                            #  11    0xfd616  1      OPC=nop              
  nop                            #  12    0xfd617  1      OPC=nop              
  nop                            #  13    0xfd618  1      OPC=nop              
  nop                            #  14    0xfd619  1      OPC=nop              
  nop                            #  15    0xfd61a  1      OPC=nop              
  nop                            #  16    0xfd61b  1      OPC=nop              
  nop                            #  17    0xfd61c  1      OPC=nop              
  nop                            #  18    0xfd61d  1      OPC=nop              
  nop                            #  19    0xfd61e  1      OPC=nop              
  nop                            #  20    0xfd61f  1      OPC=nop              
.L_fd620:                        #        0xfd620  0      OPC=<label>          
  movl %esi, %edi                #  21    0xfd620  2      OPC=movl_r32_r32     
  nop                            #  22    0xfd622  1      OPC=nop              
  nop                            #  23    0xfd623  1      OPC=nop              
  nop                            #  24    0xfd624  1      OPC=nop              
  nop                            #  25    0xfd625  1      OPC=nop              
  nop                            #  26    0xfd626  1      OPC=nop              
  nop                            #  27    0xfd627  1      OPC=nop              
  nop                            #  28    0xfd628  1      OPC=nop              
  nop                            #  29    0xfd629  1      OPC=nop              
  nop                            #  30    0xfd62a  1      OPC=nop              
  nop                            #  31    0xfd62b  1      OPC=nop              
  nop                            #  32    0xfd62c  1      OPC=nop              
  nop                            #  33    0xfd62d  1      OPC=nop              
  nop                            #  34    0xfd62e  1      OPC=nop              
  nop                            #  35    0xfd62f  1      OPC=nop              
  nop                            #  36    0xfd630  1      OPC=nop              
  nop                            #  37    0xfd631  1      OPC=nop              
  nop                            #  38    0xfd632  1      OPC=nop              
  nop                            #  39    0xfd633  1      OPC=nop              
  nop                            #  40    0xfd634  1      OPC=nop              
  nop                            #  41    0xfd635  1      OPC=nop              
  nop                            #  42    0xfd636  1      OPC=nop              
  nop                            #  43    0xfd637  1      OPC=nop              
  nop                            #  44    0xfd638  1      OPC=nop              
  nop                            #  45    0xfd639  1      OPC=nop              
  nop                            #  46    0xfd63a  1      OPC=nop              
  callq .wctob                   #  47    0xfd63b  5      OPC=callq_label      
  cmpl $0xffffffff, %eax         #  48    0xfd640  6      OPC=cmpl_r32_imm32   
  nop                            #  49    0xfd646  1      OPC=nop              
  nop                            #  50    0xfd647  1      OPC=nop              
  nop                            #  51    0xfd648  1      OPC=nop              
  cmovnel %eax, %ebx             #  52    0xfd649  3      OPC=cmovnel_r32_r32  
  movl %ebx, %eax                #  53    0xfd64c  2      OPC=movl_r32_r32     
  popq %rbx                      #  54    0xfd64e  1      OPC=popq_r64_1       
  popq %r11                      #  55    0xfd64f  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d        #  56    0xfd651  7      OPC=andl_r32_imm32   
  nop                            #  57    0xfd658  1      OPC=nop              
  nop                            #  58    0xfd659  1      OPC=nop              
  nop                            #  59    0xfd65a  1      OPC=nop              
  nop                            #  60    0xfd65b  1      OPC=nop              
  addq %r15, %r11                #  61    0xfd65c  3      OPC=addq_r64_r64     
  jmpq %r11                      #  62    0xfd65f  3      OPC=jmpq_r64         
  nop                            #  63    0xfd662  1      OPC=nop              
  nop                            #  64    0xfd663  1      OPC=nop              
  nop                            #  65    0xfd664  1      OPC=nop              
  nop                            #  66    0xfd665  1      OPC=nop              
  nop                            #  67    0xfd666  1      OPC=nop              
  nop                            #  68    0xfd667  1      OPC=nop              
  nop                            #  69    0xfd668  1      OPC=nop              
  nop                            #  70    0xfd669  1      OPC=nop              
  nop                            #  71    0xfd66a  1      OPC=nop              
  nop                            #  72    0xfd66b  1      OPC=nop              
  nop                            #  73    0xfd66c  1      OPC=nop              
.L_fd660:                        #        0xfd66d  0      OPC=<label>          
  movslq %esi, %rsi              #  74    0xfd66d  3      OPC=movslq_r64_r32   
  addq %rsi, %rdi                #  75    0xfd670  3      OPC=addq_r64_r64     
  movl %edi, %edi                #  76    0xfd673  2      OPC=movl_r32_r32     
  movzbl 0xd(%r15,%rdi,1), %ebx  #  77    0xfd675  6      OPC=movzbl_r32_m8    
  movl %ebx, %eax                #  78    0xfd67b  2      OPC=movl_r32_r32     
  popq %rbx                      #  79    0xfd67d  1      OPC=popq_r64_1       
  popq %r11                      #  80    0xfd67e  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d        #  81    0xfd680  7      OPC=andl_r32_imm32   
  nop                            #  82    0xfd687  1      OPC=nop              
  nop                            #  83    0xfd688  1      OPC=nop              
  nop                            #  84    0xfd689  1      OPC=nop              
  nop                            #  85    0xfd68a  1      OPC=nop              
  addq %r15, %r11                #  86    0xfd68b  3      OPC=addq_r64_r64     
  jmpq %r11                      #  87    0xfd68e  3      OPC=jmpq_r64         
  nop                            #  88    0xfd691  1      OPC=nop              
  nop                            #  89    0xfd692  1      OPC=nop              
  nop                            #  90    0xfd693  1      OPC=nop              
                                                                               
.size _ZNKSt5ctypeIwE9do_narrowEwc, .-_ZNKSt5ctypeIwE9do_narrowEwc

