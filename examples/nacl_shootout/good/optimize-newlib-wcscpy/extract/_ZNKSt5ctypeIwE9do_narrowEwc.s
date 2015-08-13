  .text
  .globl _ZNKSt5ctypeIwE9do_narrowEwc
  .type _ZNKSt5ctypeIwE9do_narrowEwc, @function

#! file-offset 0x13cbe0
#! rip-offset  0xfcbe0
#! capacity    128 bytes

# Text                           #  Line  RIP      Bytes  Opcode               
._ZNKSt5ctypeIwE9do_narrowEwc:   #        0xfcbe0  0      OPC=<label>          
  cmpl $0x7f, %esi               #  1     0xfcbe0  3      OPC=cmpl_r32_imm8    
  pushq %rbx                     #  2     0xfcbe3  1      OPC=pushq_r64_1      
  movl %edi, %edi                #  3     0xfcbe4  2      OPC=movl_r32_r32     
  movl %edx, %ebx                #  4     0xfcbe6  2      OPC=movl_r32_r32     
  ja .L_fcc00                    #  5     0xfcbe8  2      OPC=ja_label         
  movl %edi, %edi                #  6     0xfcbea  2      OPC=movl_r32_r32     
  cmpb $0x0, 0xc(%r15,%rdi,1)    #  7     0xfcbec  6      OPC=cmpb_m8_imm8     
  jne .L_fcc40                   #  8     0xfcbf2  2      OPC=jne_label        
  nop                            #  9     0xfcbf4  1      OPC=nop              
  nop                            #  10    0xfcbf5  1      OPC=nop              
  nop                            #  11    0xfcbf6  1      OPC=nop              
  nop                            #  12    0xfcbf7  1      OPC=nop              
  nop                            #  13    0xfcbf8  1      OPC=nop              
  nop                            #  14    0xfcbf9  1      OPC=nop              
  nop                            #  15    0xfcbfa  1      OPC=nop              
  nop                            #  16    0xfcbfb  1      OPC=nop              
  nop                            #  17    0xfcbfc  1      OPC=nop              
  nop                            #  18    0xfcbfd  1      OPC=nop              
  nop                            #  19    0xfcbfe  1      OPC=nop              
  nop                            #  20    0xfcbff  1      OPC=nop              
.L_fcc00:                        #        0xfcc00  0      OPC=<label>          
  movl %esi, %edi                #  21    0xfcc00  2      OPC=movl_r32_r32     
  nop                            #  22    0xfcc02  1      OPC=nop              
  nop                            #  23    0xfcc03  1      OPC=nop              
  nop                            #  24    0xfcc04  1      OPC=nop              
  nop                            #  25    0xfcc05  1      OPC=nop              
  nop                            #  26    0xfcc06  1      OPC=nop              
  nop                            #  27    0xfcc07  1      OPC=nop              
  nop                            #  28    0xfcc08  1      OPC=nop              
  nop                            #  29    0xfcc09  1      OPC=nop              
  nop                            #  30    0xfcc0a  1      OPC=nop              
  nop                            #  31    0xfcc0b  1      OPC=nop              
  nop                            #  32    0xfcc0c  1      OPC=nop              
  nop                            #  33    0xfcc0d  1      OPC=nop              
  nop                            #  34    0xfcc0e  1      OPC=nop              
  nop                            #  35    0xfcc0f  1      OPC=nop              
  nop                            #  36    0xfcc10  1      OPC=nop              
  nop                            #  37    0xfcc11  1      OPC=nop              
  nop                            #  38    0xfcc12  1      OPC=nop              
  nop                            #  39    0xfcc13  1      OPC=nop              
  nop                            #  40    0xfcc14  1      OPC=nop              
  nop                            #  41    0xfcc15  1      OPC=nop              
  nop                            #  42    0xfcc16  1      OPC=nop              
  nop                            #  43    0xfcc17  1      OPC=nop              
  nop                            #  44    0xfcc18  1      OPC=nop              
  nop                            #  45    0xfcc19  1      OPC=nop              
  nop                            #  46    0xfcc1a  1      OPC=nop              
  callq .wctob                   #  47    0xfcc1b  5      OPC=callq_label      
  cmpl $0xffffffff, %eax         #  48    0xfcc20  6      OPC=cmpl_r32_imm32   
  nop                            #  49    0xfcc26  1      OPC=nop              
  nop                            #  50    0xfcc27  1      OPC=nop              
  nop                            #  51    0xfcc28  1      OPC=nop              
  cmovnel %eax, %ebx             #  52    0xfcc29  3      OPC=cmovnel_r32_r32  
  movl %ebx, %eax                #  53    0xfcc2c  2      OPC=movl_r32_r32     
  popq %rbx                      #  54    0xfcc2e  1      OPC=popq_r64_1       
  popq %r11                      #  55    0xfcc2f  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d        #  56    0xfcc31  7      OPC=andl_r32_imm32   
  nop                            #  57    0xfcc38  1      OPC=nop              
  nop                            #  58    0xfcc39  1      OPC=nop              
  nop                            #  59    0xfcc3a  1      OPC=nop              
  nop                            #  60    0xfcc3b  1      OPC=nop              
  addq %r15, %r11                #  61    0xfcc3c  3      OPC=addq_r64_r64     
  jmpq %r11                      #  62    0xfcc3f  3      OPC=jmpq_r64         
  nop                            #  63    0xfcc42  1      OPC=nop              
  nop                            #  64    0xfcc43  1      OPC=nop              
  nop                            #  65    0xfcc44  1      OPC=nop              
  nop                            #  66    0xfcc45  1      OPC=nop              
  nop                            #  67    0xfcc46  1      OPC=nop              
  nop                            #  68    0xfcc47  1      OPC=nop              
  nop                            #  69    0xfcc48  1      OPC=nop              
  nop                            #  70    0xfcc49  1      OPC=nop              
  nop                            #  71    0xfcc4a  1      OPC=nop              
  nop                            #  72    0xfcc4b  1      OPC=nop              
  nop                            #  73    0xfcc4c  1      OPC=nop              
.L_fcc40:                        #        0xfcc4d  0      OPC=<label>          
  movslq %esi, %rsi              #  74    0xfcc4d  3      OPC=movslq_r64_r32   
  addq %rsi, %rdi                #  75    0xfcc50  3      OPC=addq_r64_r64     
  movl %edi, %edi                #  76    0xfcc53  2      OPC=movl_r32_r32     
  movzbl 0xd(%r15,%rdi,1), %ebx  #  77    0xfcc55  6      OPC=movzbl_r32_m8    
  movl %ebx, %eax                #  78    0xfcc5b  2      OPC=movl_r32_r32     
  popq %rbx                      #  79    0xfcc5d  1      OPC=popq_r64_1       
  popq %r11                      #  80    0xfcc5e  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d        #  81    0xfcc60  7      OPC=andl_r32_imm32   
  nop                            #  82    0xfcc67  1      OPC=nop              
  nop                            #  83    0xfcc68  1      OPC=nop              
  nop                            #  84    0xfcc69  1      OPC=nop              
  nop                            #  85    0xfcc6a  1      OPC=nop              
  addq %r15, %r11                #  86    0xfcc6b  3      OPC=addq_r64_r64     
  jmpq %r11                      #  87    0xfcc6e  3      OPC=jmpq_r64         
  nop                            #  88    0xfcc71  1      OPC=nop              
  nop                            #  89    0xfcc72  1      OPC=nop              
  nop                            #  90    0xfcc73  1      OPC=nop              
                                                                               
.size _ZNKSt5ctypeIwE9do_narrowEwc, .-_ZNKSt5ctypeIwE9do_narrowEwc

