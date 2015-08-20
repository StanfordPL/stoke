  .text
  .globl _ZNKSt5ctypeIwE9do_narrowEwc
  .type _ZNKSt5ctypeIwE9do_narrowEwc, @function

#! file-offset 0x13cee0
#! rip-offset  0xfcee0
#! capacity    128 bytes

# Text                           #  Line  RIP      Bytes  Opcode               
._ZNKSt5ctypeIwE9do_narrowEwc:   #        0xfcee0  0      OPC=<label>          
  cmpl $0x7f, %esi               #  1     0xfcee0  3      OPC=cmpl_r32_imm8    
  pushq %rbx                     #  2     0xfcee3  1      OPC=pushq_r64_1      
  movl %edi, %edi                #  3     0xfcee4  2      OPC=movl_r32_r32     
  movl %edx, %ebx                #  4     0xfcee6  2      OPC=movl_r32_r32     
  ja .L_fcf00                    #  5     0xfcee8  2      OPC=ja_label         
  movl %edi, %edi                #  6     0xfceea  2      OPC=movl_r32_r32     
  cmpb $0x0, 0xc(%r15,%rdi,1)    #  7     0xfceec  6      OPC=cmpb_m8_imm8     
  jne .L_fcf40                   #  8     0xfcef2  2      OPC=jne_label        
  nop                            #  9     0xfcef4  1      OPC=nop              
  nop                            #  10    0xfcef5  1      OPC=nop              
  nop                            #  11    0xfcef6  1      OPC=nop              
  nop                            #  12    0xfcef7  1      OPC=nop              
  nop                            #  13    0xfcef8  1      OPC=nop              
  nop                            #  14    0xfcef9  1      OPC=nop              
  nop                            #  15    0xfcefa  1      OPC=nop              
  nop                            #  16    0xfcefb  1      OPC=nop              
  nop                            #  17    0xfcefc  1      OPC=nop              
  nop                            #  18    0xfcefd  1      OPC=nop              
  nop                            #  19    0xfcefe  1      OPC=nop              
  nop                            #  20    0xfceff  1      OPC=nop              
.L_fcf00:                        #        0xfcf00  0      OPC=<label>          
  movl %esi, %edi                #  21    0xfcf00  2      OPC=movl_r32_r32     
  nop                            #  22    0xfcf02  1      OPC=nop              
  nop                            #  23    0xfcf03  1      OPC=nop              
  nop                            #  24    0xfcf04  1      OPC=nop              
  nop                            #  25    0xfcf05  1      OPC=nop              
  nop                            #  26    0xfcf06  1      OPC=nop              
  nop                            #  27    0xfcf07  1      OPC=nop              
  nop                            #  28    0xfcf08  1      OPC=nop              
  nop                            #  29    0xfcf09  1      OPC=nop              
  nop                            #  30    0xfcf0a  1      OPC=nop              
  nop                            #  31    0xfcf0b  1      OPC=nop              
  nop                            #  32    0xfcf0c  1      OPC=nop              
  nop                            #  33    0xfcf0d  1      OPC=nop              
  nop                            #  34    0xfcf0e  1      OPC=nop              
  nop                            #  35    0xfcf0f  1      OPC=nop              
  nop                            #  36    0xfcf10  1      OPC=nop              
  nop                            #  37    0xfcf11  1      OPC=nop              
  nop                            #  38    0xfcf12  1      OPC=nop              
  nop                            #  39    0xfcf13  1      OPC=nop              
  nop                            #  40    0xfcf14  1      OPC=nop              
  nop                            #  41    0xfcf15  1      OPC=nop              
  nop                            #  42    0xfcf16  1      OPC=nop              
  nop                            #  43    0xfcf17  1      OPC=nop              
  nop                            #  44    0xfcf18  1      OPC=nop              
  nop                            #  45    0xfcf19  1      OPC=nop              
  nop                            #  46    0xfcf1a  1      OPC=nop              
  callq .wctob                   #  47    0xfcf1b  5      OPC=callq_label      
  cmpl $0xffffffff, %eax         #  48    0xfcf20  6      OPC=cmpl_r32_imm32   
  nop                            #  49    0xfcf26  1      OPC=nop              
  nop                            #  50    0xfcf27  1      OPC=nop              
  nop                            #  51    0xfcf28  1      OPC=nop              
  cmovnel %eax, %ebx             #  52    0xfcf29  3      OPC=cmovnel_r32_r32  
  movl %ebx, %eax                #  53    0xfcf2c  2      OPC=movl_r32_r32     
  popq %rbx                      #  54    0xfcf2e  1      OPC=popq_r64_1       
  popq %r11                      #  55    0xfcf2f  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d        #  56    0xfcf31  7      OPC=andl_r32_imm32   
  nop                            #  57    0xfcf38  1      OPC=nop              
  nop                            #  58    0xfcf39  1      OPC=nop              
  nop                            #  59    0xfcf3a  1      OPC=nop              
  nop                            #  60    0xfcf3b  1      OPC=nop              
  addq %r15, %r11                #  61    0xfcf3c  3      OPC=addq_r64_r64     
  jmpq %r11                      #  62    0xfcf3f  3      OPC=jmpq_r64         
  nop                            #  63    0xfcf42  1      OPC=nop              
  nop                            #  64    0xfcf43  1      OPC=nop              
  nop                            #  65    0xfcf44  1      OPC=nop              
  nop                            #  66    0xfcf45  1      OPC=nop              
  nop                            #  67    0xfcf46  1      OPC=nop              
  nop                            #  68    0xfcf47  1      OPC=nop              
  nop                            #  69    0xfcf48  1      OPC=nop              
  nop                            #  70    0xfcf49  1      OPC=nop              
  nop                            #  71    0xfcf4a  1      OPC=nop              
  nop                            #  72    0xfcf4b  1      OPC=nop              
  nop                            #  73    0xfcf4c  1      OPC=nop              
.L_fcf40:                        #        0xfcf4d  0      OPC=<label>          
  movslq %esi, %rsi              #  74    0xfcf4d  3      OPC=movslq_r64_r32   
  addq %rsi, %rdi                #  75    0xfcf50  3      OPC=addq_r64_r64     
  movl %edi, %edi                #  76    0xfcf53  2      OPC=movl_r32_r32     
  movzbl 0xd(%r15,%rdi,1), %ebx  #  77    0xfcf55  6      OPC=movzbl_r32_m8    
  movl %ebx, %eax                #  78    0xfcf5b  2      OPC=movl_r32_r32     
  popq %rbx                      #  79    0xfcf5d  1      OPC=popq_r64_1       
  popq %r11                      #  80    0xfcf5e  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d        #  81    0xfcf60  7      OPC=andl_r32_imm32   
  nop                            #  82    0xfcf67  1      OPC=nop              
  nop                            #  83    0xfcf68  1      OPC=nop              
  nop                            #  84    0xfcf69  1      OPC=nop              
  nop                            #  85    0xfcf6a  1      OPC=nop              
  addq %r15, %r11                #  86    0xfcf6b  3      OPC=addq_r64_r64     
  jmpq %r11                      #  87    0xfcf6e  3      OPC=jmpq_r64         
  nop                            #  88    0xfcf71  1      OPC=nop              
  nop                            #  89    0xfcf72  1      OPC=nop              
  nop                            #  90    0xfcf73  1      OPC=nop              
                                                                               
.size _ZNKSt5ctypeIwE9do_narrowEwc, .-_ZNKSt5ctypeIwE9do_narrowEwc

