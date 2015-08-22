  .text
  .globl _ZNSt5ctypeIcED1Ev
  .type _ZNSt5ctypeIcED1Ev, @function

#! file-offset 0x1261e0
#! rip-offset  0xe61e0
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIcED1Ev:                                  #        0xe61e0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe61e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe61e1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe61e3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe61e6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe61e9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe61ec  2      OPC=movl_r32_r32    
  movl $0x1003d608, (%r15,%rbx,1)                     #  7     0xe61ee  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe61f6  1      OPC=nop             
  nop                                                 #  9     0xe61f7  1      OPC=nop             
  nop                                                 #  10    0xe61f8  1      OPC=nop             
  nop                                                 #  11    0xe61f9  1      OPC=nop             
  nop                                                 #  12    0xe61fa  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe61fb  5      OPC=callq_label     
  movl %ebx, %ebx                                     #  14    0xe6200  2      OPC=movl_r32_r32    
  cmpb $0x0, 0xc(%r15,%rbx,1)                         #  15    0xe6202  6      OPC=cmpb_m8_imm8    
  je .L_e6220                                         #  16    0xe6208  2      OPC=je_label        
  movl %ebx, %ebx                                     #  17    0xe620a  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rbx,1), %edi                        #  18    0xe620c  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                    #  19    0xe6211  3      OPC=testq_r64_r64   
  je .L_e6220                                         #  20    0xe6214  2      OPC=je_label        
  nop                                                 #  21    0xe6216  1      OPC=nop             
  nop                                                 #  22    0xe6217  1      OPC=nop             
  nop                                                 #  23    0xe6218  1      OPC=nop             
  nop                                                 #  24    0xe6219  1      OPC=nop             
  nop                                                 #  25    0xe621a  1      OPC=nop             
  callq ._ZdaPv                                       #  26    0xe621b  5      OPC=callq_label     
.L_e6220:                                             #        0xe6220  0      OPC=<label>         
  movl %ebx, %edi                                     #  27    0xe6220  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  28    0xe6222  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  29    0xe6225  3      OPC=addq_r64_r64    
  popq %rbx                                           #  30    0xe6228  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  31    0xe6229  5      OPC=jmpq_label_1    
  nop                                                 #  32    0xe622e  1      OPC=nop             
  nop                                                 #  33    0xe622f  1      OPC=nop             
  nop                                                 #  34    0xe6230  1      OPC=nop             
  nop                                                 #  35    0xe6231  1      OPC=nop             
  nop                                                 #  36    0xe6232  1      OPC=nop             
  nop                                                 #  37    0xe6233  1      OPC=nop             
  nop                                                 #  38    0xe6234  1      OPC=nop             
  nop                                                 #  39    0xe6235  1      OPC=nop             
  nop                                                 #  40    0xe6236  1      OPC=nop             
  nop                                                 #  41    0xe6237  1      OPC=nop             
  nop                                                 #  42    0xe6238  1      OPC=nop             
  nop                                                 #  43    0xe6239  1      OPC=nop             
  nop                                                 #  44    0xe623a  1      OPC=nop             
  nop                                                 #  45    0xe623b  1      OPC=nop             
  nop                                                 #  46    0xe623c  1      OPC=nop             
  nop                                                 #  47    0xe623d  1      OPC=nop             
  nop                                                 #  48    0xe623e  1      OPC=nop             
  nop                                                 #  49    0xe623f  1      OPC=nop             
  movl %ebx, %edi                                     #  50    0xe6240  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  51    0xe6242  4      OPC=movl_m32_r32    
  nop                                                 #  52    0xe6246  1      OPC=nop             
  nop                                                 #  53    0xe6247  1      OPC=nop             
  nop                                                 #  54    0xe6248  1      OPC=nop             
  nop                                                 #  55    0xe6249  1      OPC=nop             
  nop                                                 #  56    0xe624a  1      OPC=nop             
  nop                                                 #  57    0xe624b  1      OPC=nop             
  nop                                                 #  58    0xe624c  1      OPC=nop             
  nop                                                 #  59    0xe624d  1      OPC=nop             
  nop                                                 #  60    0xe624e  1      OPC=nop             
  nop                                                 #  61    0xe624f  1      OPC=nop             
  nop                                                 #  62    0xe6250  1      OPC=nop             
  nop                                                 #  63    0xe6251  1      OPC=nop             
  nop                                                 #  64    0xe6252  1      OPC=nop             
  nop                                                 #  65    0xe6253  1      OPC=nop             
  nop                                                 #  66    0xe6254  1      OPC=nop             
  nop                                                 #  67    0xe6255  1      OPC=nop             
  nop                                                 #  68    0xe6256  1      OPC=nop             
  nop                                                 #  69    0xe6257  1      OPC=nop             
  nop                                                 #  70    0xe6258  1      OPC=nop             
  nop                                                 #  71    0xe6259  1      OPC=nop             
  nop                                                 #  72    0xe625a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  73    0xe625b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  74    0xe6260  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  75    0xe6264  2      OPC=movl_r32_r32    
  nop                                                 #  76    0xe6266  1      OPC=nop             
  nop                                                 #  77    0xe6267  1      OPC=nop             
  nop                                                 #  78    0xe6268  1      OPC=nop             
  nop                                                 #  79    0xe6269  1      OPC=nop             
  nop                                                 #  80    0xe626a  1      OPC=nop             
  nop                                                 #  81    0xe626b  1      OPC=nop             
  nop                                                 #  82    0xe626c  1      OPC=nop             
  nop                                                 #  83    0xe626d  1      OPC=nop             
  nop                                                 #  84    0xe626e  1      OPC=nop             
  nop                                                 #  85    0xe626f  1      OPC=nop             
  nop                                                 #  86    0xe6270  1      OPC=nop             
  nop                                                 #  87    0xe6271  1      OPC=nop             
  nop                                                 #  88    0xe6272  1      OPC=nop             
  nop                                                 #  89    0xe6273  1      OPC=nop             
  nop                                                 #  90    0xe6274  1      OPC=nop             
  nop                                                 #  91    0xe6275  1      OPC=nop             
  nop                                                 #  92    0xe6276  1      OPC=nop             
  nop                                                 #  93    0xe6277  1      OPC=nop             
  nop                                                 #  94    0xe6278  1      OPC=nop             
  nop                                                 #  95    0xe6279  1      OPC=nop             
  nop                                                 #  96    0xe627a  1      OPC=nop             
  callq ._Unwind_Resume                               #  97    0xe627b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt5ctypeIcED1Ev, .-_ZNSt5ctypeIcED1Ev

