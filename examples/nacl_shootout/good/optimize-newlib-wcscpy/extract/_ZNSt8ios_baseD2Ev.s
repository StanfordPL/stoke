  .text
  .globl _ZNSt8ios_baseD2Ev
  .type _ZNSt8ios_baseD2Ev, @function

#! file-offset 0x1283a0
#! rip-offset  0xe83a0
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_baseD2Ev:                                   #        0xe83a0  0      OPC=<label>         
  pushq %rbx                                           #  1     0xe83a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                      #  2     0xe83a1  2      OPC=movl_r32_r32    
  xorl %esi, %esi                                      #  3     0xe83a3  2      OPC=xorl_r32_r32    
  movl %ebx, %edi                                      #  4     0xe83a5  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                      #  5     0xe83a7  2      OPC=movl_r32_r32    
  movl $0x1003d938, (%r15,%rbx,1)                      #  6     0xe83a9  8      OPC=movl_m32_imm32  
  nop                                                  #  7     0xe83b1  1      OPC=nop             
  nop                                                  #  8     0xe83b2  1      OPC=nop             
  nop                                                  #  9     0xe83b3  1      OPC=nop             
  nop                                                  #  10    0xe83b4  1      OPC=nop             
  nop                                                  #  11    0xe83b5  1      OPC=nop             
  nop                                                  #  12    0xe83b6  1      OPC=nop             
  nop                                                  #  13    0xe83b7  1      OPC=nop             
  nop                                                  #  14    0xe83b8  1      OPC=nop             
  nop                                                  #  15    0xe83b9  1      OPC=nop             
  nop                                                  #  16    0xe83ba  1      OPC=nop             
  callq ._ZNSt8ios_base17_M_call_callbacksENS_5eventE  #  17    0xe83bb  5      OPC=callq_label     
  movl %ebx, %edi                                      #  18    0xe83c0  2      OPC=movl_r32_r32    
  nop                                                  #  19    0xe83c2  1      OPC=nop             
  nop                                                  #  20    0xe83c3  1      OPC=nop             
  nop                                                  #  21    0xe83c4  1      OPC=nop             
  nop                                                  #  22    0xe83c5  1      OPC=nop             
  nop                                                  #  23    0xe83c6  1      OPC=nop             
  nop                                                  #  24    0xe83c7  1      OPC=nop             
  nop                                                  #  25    0xe83c8  1      OPC=nop             
  nop                                                  #  26    0xe83c9  1      OPC=nop             
  nop                                                  #  27    0xe83ca  1      OPC=nop             
  nop                                                  #  28    0xe83cb  1      OPC=nop             
  nop                                                  #  29    0xe83cc  1      OPC=nop             
  nop                                                  #  30    0xe83cd  1      OPC=nop             
  nop                                                  #  31    0xe83ce  1      OPC=nop             
  nop                                                  #  32    0xe83cf  1      OPC=nop             
  nop                                                  #  33    0xe83d0  1      OPC=nop             
  nop                                                  #  34    0xe83d1  1      OPC=nop             
  nop                                                  #  35    0xe83d2  1      OPC=nop             
  nop                                                  #  36    0xe83d3  1      OPC=nop             
  nop                                                  #  37    0xe83d4  1      OPC=nop             
  nop                                                  #  38    0xe83d5  1      OPC=nop             
  nop                                                  #  39    0xe83d6  1      OPC=nop             
  nop                                                  #  40    0xe83d7  1      OPC=nop             
  nop                                                  #  41    0xe83d8  1      OPC=nop             
  nop                                                  #  42    0xe83d9  1      OPC=nop             
  nop                                                  #  43    0xe83da  1      OPC=nop             
  callq ._ZNSt8ios_base20_M_dispose_callbacksEv        #  44    0xe83db  5      OPC=callq_label     
  movl %ebx, %ebx                                      #  45    0xe83e0  2      OPC=movl_r32_r32    
  movl 0x68(%r15,%rbx,1), %edi                         #  46    0xe83e2  5      OPC=movl_r32_m32    
  leal 0x24(%rbx), %eax                                #  47    0xe83e7  3      OPC=leal_r32_m16    
  cmpl %edi, %eax                                      #  48    0xe83ea  2      OPC=cmpl_r32_r32    
  je .L_e8420                                          #  49    0xe83ec  2      OPC=je_label        
  testq %rdi, %rdi                                     #  50    0xe83ee  3      OPC=testq_r64_r64   
  je .L_e8400                                          #  51    0xe83f1  2      OPC=je_label        
  nop                                                  #  52    0xe83f3  1      OPC=nop             
  nop                                                  #  53    0xe83f4  1      OPC=nop             
  nop                                                  #  54    0xe83f5  1      OPC=nop             
  nop                                                  #  55    0xe83f6  1      OPC=nop             
  nop                                                  #  56    0xe83f7  1      OPC=nop             
  nop                                                  #  57    0xe83f8  1      OPC=nop             
  nop                                                  #  58    0xe83f9  1      OPC=nop             
  nop                                                  #  59    0xe83fa  1      OPC=nop             
  callq ._ZdaPv                                        #  60    0xe83fb  5      OPC=callq_label     
.L_e8400:                                              #        0xe8400  0      OPC=<label>         
  movl %ebx, %ebx                                      #  61    0xe8400  2      OPC=movl_r32_r32    
  movl $0x0, 0x68(%r15,%rbx,1)                         #  62    0xe8402  9      OPC=movl_m32_imm32  
  nop                                                  #  63    0xe840b  1      OPC=nop             
  nop                                                  #  64    0xe840c  1      OPC=nop             
  nop                                                  #  65    0xe840d  1      OPC=nop             
  nop                                                  #  66    0xe840e  1      OPC=nop             
  nop                                                  #  67    0xe840f  1      OPC=nop             
  nop                                                  #  68    0xe8410  1      OPC=nop             
  nop                                                  #  69    0xe8411  1      OPC=nop             
  nop                                                  #  70    0xe8412  1      OPC=nop             
  nop                                                  #  71    0xe8413  1      OPC=nop             
  nop                                                  #  72    0xe8414  1      OPC=nop             
  nop                                                  #  73    0xe8415  1      OPC=nop             
  nop                                                  #  74    0xe8416  1      OPC=nop             
  nop                                                  #  75    0xe8417  1      OPC=nop             
  nop                                                  #  76    0xe8418  1      OPC=nop             
  nop                                                  #  77    0xe8419  1      OPC=nop             
  nop                                                  #  78    0xe841a  1      OPC=nop             
  nop                                                  #  79    0xe841b  1      OPC=nop             
  nop                                                  #  80    0xe841c  1      OPC=nop             
  nop                                                  #  81    0xe841d  1      OPC=nop             
  nop                                                  #  82    0xe841e  1      OPC=nop             
  nop                                                  #  83    0xe841f  1      OPC=nop             
.L_e8420:                                              #        0xe8420  0      OPC=<label>         
  leal 0x6c(%rbx), %edi                                #  84    0xe8420  3      OPC=leal_r32_m16    
  popq %rbx                                            #  85    0xe8423  1      OPC=popq_r64_1      
  jmpq ._ZNSt6localeD1Ev                               #  86    0xe8424  5      OPC=jmpq_label_1    
  nop                                                  #  87    0xe8429  1      OPC=nop             
  nop                                                  #  88    0xe842a  1      OPC=nop             
  nop                                                  #  89    0xe842b  1      OPC=nop             
  nop                                                  #  90    0xe842c  1      OPC=nop             
  nop                                                  #  91    0xe842d  1      OPC=nop             
  nop                                                  #  92    0xe842e  1      OPC=nop             
  nop                                                  #  93    0xe842f  1      OPC=nop             
  nop                                                  #  94    0xe8430  1      OPC=nop             
  nop                                                  #  95    0xe8431  1      OPC=nop             
  nop                                                  #  96    0xe8432  1      OPC=nop             
  nop                                                  #  97    0xe8433  1      OPC=nop             
  nop                                                  #  98    0xe8434  1      OPC=nop             
  nop                                                  #  99    0xe8435  1      OPC=nop             
  nop                                                  #  100   0xe8436  1      OPC=nop             
  nop                                                  #  101   0xe8437  1      OPC=nop             
  nop                                                  #  102   0xe8438  1      OPC=nop             
  nop                                                  #  103   0xe8439  1      OPC=nop             
  nop                                                  #  104   0xe843a  1      OPC=nop             
  nop                                                  #  105   0xe843b  1      OPC=nop             
  nop                                                  #  106   0xe843c  1      OPC=nop             
  nop                                                  #  107   0xe843d  1      OPC=nop             
  nop                                                  #  108   0xe843e  1      OPC=nop             
  nop                                                  #  109   0xe843f  1      OPC=nop             
                                                                                                    
.size _ZNSt8ios_baseD2Ev, .-_ZNSt8ios_baseD2Ev

