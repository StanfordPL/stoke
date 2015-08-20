  .text
  .globl _ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
  .type _ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv, @function

#! file-offset 0x131d80
#! rip-offset  0xf1d80
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv:                 #        0xf1d80  0      OPC=<label>         
  pushq %rbx                                                         #  1     0xf1d80  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  2     0xf1d81  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi                                               #  3     0xf1d83  3      OPC=leal_r32_m16    
  nop                                                                #  4     0xf1d86  1      OPC=nop             
  nop                                                                #  5     0xf1d87  1      OPC=nop             
  nop                                                                #  6     0xf1d88  1      OPC=nop             
  nop                                                                #  7     0xf1d89  1      OPC=nop             
  nop                                                                #  8     0xf1d8a  1      OPC=nop             
  nop                                                                #  9     0xf1d8b  1      OPC=nop             
  nop                                                                #  10    0xf1d8c  1      OPC=nop             
  nop                                                                #  11    0xf1d8d  1      OPC=nop             
  nop                                                                #  12    0xf1d8e  1      OPC=nop             
  nop                                                                #  13    0xf1d8f  1      OPC=nop             
  nop                                                                #  14    0xf1d90  1      OPC=nop             
  nop                                                                #  15    0xf1d91  1      OPC=nop             
  nop                                                                #  16    0xf1d92  1      OPC=nop             
  nop                                                                #  17    0xf1d93  1      OPC=nop             
  nop                                                                #  18    0xf1d94  1      OPC=nop             
  nop                                                                #  19    0xf1d95  1      OPC=nop             
  nop                                                                #  20    0xf1d96  1      OPC=nop             
  nop                                                                #  21    0xf1d97  1      OPC=nop             
  nop                                                                #  22    0xf1d98  1      OPC=nop             
  nop                                                                #  23    0xf1d99  1      OPC=nop             
  nop                                                                #  24    0xf1d9a  1      OPC=nop             
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv           #  25    0xf1d9b  5      OPC=callq_label     
  testl %eax, %eax                                                   #  26    0xf1da0  2      OPC=testl_r32_r32   
  je .L_f1dc0                                                        #  27    0xf1da2  2      OPC=je_label        
  popq %rbx                                                          #  28    0xf1da4  1      OPC=popq_r64_1      
  popq %r11                                                          #  29    0xf1da5  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  30    0xf1da7  7      OPC=andl_r32_imm32  
  nop                                                                #  31    0xf1dae  1      OPC=nop             
  nop                                                                #  32    0xf1daf  1      OPC=nop             
  nop                                                                #  33    0xf1db0  1      OPC=nop             
  nop                                                                #  34    0xf1db1  1      OPC=nop             
  addq %r15, %r11                                                    #  35    0xf1db2  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  36    0xf1db5  3      OPC=jmpq_r64        
  nop                                                                #  37    0xf1db8  1      OPC=nop             
  nop                                                                #  38    0xf1db9  1      OPC=nop             
  nop                                                                #  39    0xf1dba  1      OPC=nop             
  nop                                                                #  40    0xf1dbb  1      OPC=nop             
  nop                                                                #  41    0xf1dbc  1      OPC=nop             
  nop                                                                #  42    0xf1dbd  1      OPC=nop             
  nop                                                                #  43    0xf1dbe  1      OPC=nop             
  nop                                                                #  44    0xf1dbf  1      OPC=nop             
  nop                                                                #  45    0xf1dc0  1      OPC=nop             
  nop                                                                #  46    0xf1dc1  1      OPC=nop             
  nop                                                                #  47    0xf1dc2  1      OPC=nop             
  nop                                                                #  48    0xf1dc3  1      OPC=nop             
  nop                                                                #  49    0xf1dc4  1      OPC=nop             
  nop                                                                #  50    0xf1dc5  1      OPC=nop             
  nop                                                                #  51    0xf1dc6  1      OPC=nop             
.L_f1dc0:                                                            #        0xf1dc7  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  52    0xf1dc7  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  53    0xf1dc9  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  54    0xf1dcd  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  55    0xf1dd0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  56    0xf1dd2  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  57    0xf1dd6  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  58    0xf1dd8  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  59    0xf1dda  5      OPC=movl_r32_m32    
  popq %rbx                                                          #  60    0xf1ddf  1      OPC=popq_r64_1      
  orl $0x4, %esi                                                     #  61    0xf1de0  3      OPC=orl_r32_imm8    
  nop                                                                #  62    0xf1de3  1      OPC=nop             
  nop                                                                #  63    0xf1de4  1      OPC=nop             
  nop                                                                #  64    0xf1de5  1      OPC=nop             
  nop                                                                #  65    0xf1de6  1      OPC=nop             
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate  #  66    0xf1de7  5      OPC=jmpq_label_1    
  nop                                                                #  67    0xf1dec  1      OPC=nop             
  nop                                                                #  68    0xf1ded  1      OPC=nop             
  nop                                                                #  69    0xf1dee  1      OPC=nop             
  nop                                                                #  70    0xf1def  1      OPC=nop             
  nop                                                                #  71    0xf1df0  1      OPC=nop             
  nop                                                                #  72    0xf1df1  1      OPC=nop             
  nop                                                                #  73    0xf1df2  1      OPC=nop             
  nop                                                                #  74    0xf1df3  1      OPC=nop             
  nop                                                                #  75    0xf1df4  1      OPC=nop             
  nop                                                                #  76    0xf1df5  1      OPC=nop             
  nop                                                                #  77    0xf1df6  1      OPC=nop             
  nop                                                                #  78    0xf1df7  1      OPC=nop             
  nop                                                                #  79    0xf1df8  1      OPC=nop             
  nop                                                                #  80    0xf1df9  1      OPC=nop             
  nop                                                                #  81    0xf1dfa  1      OPC=nop             
  nop                                                                #  82    0xf1dfb  1      OPC=nop             
  nop                                                                #  83    0xf1dfc  1      OPC=nop             
  nop                                                                #  84    0xf1dfd  1      OPC=nop             
  nop                                                                #  85    0xf1dfe  1      OPC=nop             
  nop                                                                #  86    0xf1dff  1      OPC=nop             
  nop                                                                #  87    0xf1e00  1      OPC=nop             
  nop                                                                #  88    0xf1e01  1      OPC=nop             
  nop                                                                #  89    0xf1e02  1      OPC=nop             
  nop                                                                #  90    0xf1e03  1      OPC=nop             
  nop                                                                #  91    0xf1e04  1      OPC=nop             
  nop                                                                #  92    0xf1e05  1      OPC=nop             
  nop                                                                #  93    0xf1e06  1      OPC=nop             
                                                                                                                  
.size _ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv, .-_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv

