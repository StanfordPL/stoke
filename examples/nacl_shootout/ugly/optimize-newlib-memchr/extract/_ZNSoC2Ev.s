  .text
  .globl _ZNSoC2Ev
  .type _ZNSoC2Ev, @function

#! file-offset 0xddc80
#! rip-offset  0x9dc80
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSoC2Ev:                                                                    #        0x9dc80  0      OPC=<label>         
  movl %esi, %esi                                                              #  1     0x9dc80  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x9dc82  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x9dc85  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x9dc88  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                              #  5     0x9dc8a  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                                     #  6     0x9dc8c  4      OPC=movl_r32_m32    
  movl %esi, %esi                                                              #  7     0x9dc90  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                                                  #  8     0x9dc92  5      OPC=movl_r32_m32    
  xorl %esi, %esi                                                              #  9     0x9dc97  2      OPC=xorl_r32_r32    
  movl %edi, %edi                                                              #  10    0x9dc99  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                                     #  11    0x9dc9b  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x9dc9f  1      OPC=nop             
  subl $0xc, %eax                                                              #  13    0x9dca0  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  14    0x9dca3  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                                     #  15    0x9dca5  4      OPC=movl_r32_m32    
  addl %edi, %eax                                                              #  16    0x9dca9  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                              #  17    0x9dcab  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                                                     #  18    0x9dcad  4      OPC=movl_m32_r32    
  movl %edi, %edi                                                              #  19    0x9dcb1  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  20    0x9dcb3  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  21    0x9dcb7  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  22    0x9dcba  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  23    0x9dcbc  4      OPC=addl_r32_m32    
  nop                                                                          #  24    0x9dcc0  1      OPC=nop             
  nop                                                                          #  25    0x9dcc1  1      OPC=nop             
  nop                                                                          #  26    0x9dcc2  1      OPC=nop             
  nop                                                                          #  27    0x9dcc3  1      OPC=nop             
  nop                                                                          #  28    0x9dcc4  1      OPC=nop             
  nop                                                                          #  29    0x9dcc5  1      OPC=nop             
  nop                                                                          #  30    0x9dcc6  1      OPC=nop             
  nop                                                                          #  31    0x9dcc7  1      OPC=nop             
  nop                                                                          #  32    0x9dcc8  1      OPC=nop             
  nop                                                                          #  33    0x9dcc9  1      OPC=nop             
  nop                                                                          #  34    0x9dcca  1      OPC=nop             
  nop                                                                          #  35    0x9dccb  1      OPC=nop             
  nop                                                                          #  36    0x9dccc  1      OPC=nop             
  nop                                                                          #  37    0x9dccd  1      OPC=nop             
  nop                                                                          #  38    0x9dcce  1      OPC=nop             
  nop                                                                          #  39    0x9dccf  1      OPC=nop             
  nop                                                                          #  40    0x9dcd0  1      OPC=nop             
  nop                                                                          #  41    0x9dcd1  1      OPC=nop             
  nop                                                                          #  42    0x9dcd2  1      OPC=nop             
  nop                                                                          #  43    0x9dcd3  1      OPC=nop             
  nop                                                                          #  44    0x9dcd4  1      OPC=nop             
  nop                                                                          #  45    0x9dcd5  1      OPC=nop             
  nop                                                                          #  46    0x9dcd6  1      OPC=nop             
  nop                                                                          #  47    0x9dcd7  1      OPC=nop             
  nop                                                                          #  48    0x9dcd8  1      OPC=nop             
  nop                                                                          #  49    0x9dcd9  1      OPC=nop             
  nop                                                                          #  50    0x9dcda  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E  #  51    0x9dcdb  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  52    0x9dce0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  53    0x9dce3  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  54    0x9dce6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  55    0x9dce8  7      OPC=andl_r32_imm32  
  nop                                                                          #  56    0x9dcef  1      OPC=nop             
  nop                                                                          #  57    0x9dcf0  1      OPC=nop             
  nop                                                                          #  58    0x9dcf1  1      OPC=nop             
  nop                                                                          #  59    0x9dcf2  1      OPC=nop             
  addq %r15, %r11                                                              #  60    0x9dcf3  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  61    0x9dcf6  3      OPC=jmpq_r64        
  nop                                                                          #  62    0x9dcf9  1      OPC=nop             
  nop                                                                          #  63    0x9dcfa  1      OPC=nop             
  nop                                                                          #  64    0x9dcfb  1      OPC=nop             
  nop                                                                          #  65    0x9dcfc  1      OPC=nop             
  nop                                                                          #  66    0x9dcfd  1      OPC=nop             
  nop                                                                          #  67    0x9dcfe  1      OPC=nop             
  nop                                                                          #  68    0x9dcff  1      OPC=nop             
  nop                                                                          #  69    0x9dd00  1      OPC=nop             
  nop                                                                          #  70    0x9dd01  1      OPC=nop             
  nop                                                                          #  71    0x9dd02  1      OPC=nop             
  nop                                                                          #  72    0x9dd03  1      OPC=nop             
  nop                                                                          #  73    0x9dd04  1      OPC=nop             
  nop                                                                          #  74    0x9dd05  1      OPC=nop             
  nop                                                                          #  75    0x9dd06  1      OPC=nop             
  movl %eax, %edi                                                              #  76    0x9dd07  2      OPC=movl_r32_r32    
  nop                                                                          #  77    0x9dd09  1      OPC=nop             
  nop                                                                          #  78    0x9dd0a  1      OPC=nop             
  nop                                                                          #  79    0x9dd0b  1      OPC=nop             
  nop                                                                          #  80    0x9dd0c  1      OPC=nop             
  nop                                                                          #  81    0x9dd0d  1      OPC=nop             
  nop                                                                          #  82    0x9dd0e  1      OPC=nop             
  nop                                                                          #  83    0x9dd0f  1      OPC=nop             
  nop                                                                          #  84    0x9dd10  1      OPC=nop             
  nop                                                                          #  85    0x9dd11  1      OPC=nop             
  nop                                                                          #  86    0x9dd12  1      OPC=nop             
  nop                                                                          #  87    0x9dd13  1      OPC=nop             
  nop                                                                          #  88    0x9dd14  1      OPC=nop             
  nop                                                                          #  89    0x9dd15  1      OPC=nop             
  nop                                                                          #  90    0x9dd16  1      OPC=nop             
  nop                                                                          #  91    0x9dd17  1      OPC=nop             
  nop                                                                          #  92    0x9dd18  1      OPC=nop             
  nop                                                                          #  93    0x9dd19  1      OPC=nop             
  nop                                                                          #  94    0x9dd1a  1      OPC=nop             
  nop                                                                          #  95    0x9dd1b  1      OPC=nop             
  nop                                                                          #  96    0x9dd1c  1      OPC=nop             
  nop                                                                          #  97    0x9dd1d  1      OPC=nop             
  nop                                                                          #  98    0x9dd1e  1      OPC=nop             
  nop                                                                          #  99    0x9dd1f  1      OPC=nop             
  nop                                                                          #  100   0x9dd20  1      OPC=nop             
  nop                                                                          #  101   0x9dd21  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  102   0x9dd22  5      OPC=callq_label     
                                                                                                                            
.size _ZNSoC2Ev, .-_ZNSoC2Ev

