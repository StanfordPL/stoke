  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE4_Rep7_M_grabERKS1_S5_
  .type _ZNSbIwSt11char_traitsIwESaIwEE4_Rep7_M_grabERKS1_S5_, @function

#! file-offset 0x1177e0
#! rip-offset  0xd77e0
#! capacity    128 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE4_Rep7_M_grabERKS1_S5_:       #        0xd77e0  0      OPC=<label>         
  movl %edi, %edi                                             #  1     0xd77e0  2      OPC=movl_r32_r32    
  movl %esi, %esi                                             #  2     0xd77e2  2      OPC=movl_r32_r32    
  movl %edi, %edi                                             #  3     0xd77e4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                 #  4     0xd77e6  5      OPC=movl_r32_m32    
  testl %eax, %eax                                            #  5     0xd77eb  2      OPC=testl_r32_r32   
  js .L_d7820                                                 #  6     0xd77ed  2      OPC=js_label        
  cmpl $0x10073620, %edi                                      #  7     0xd77ef  6      OPC=cmpl_r32_imm32  
  jne .L_d7840                                                #  8     0xd77f5  2      OPC=jne_label       
  nop                                                         #  9     0xd77f7  1      OPC=nop             
  nop                                                         #  10    0xd77f8  1      OPC=nop             
  nop                                                         #  11    0xd77f9  1      OPC=nop             
  nop                                                         #  12    0xd77fa  1      OPC=nop             
  nop                                                         #  13    0xd77fb  1      OPC=nop             
  nop                                                         #  14    0xd77fc  1      OPC=nop             
  nop                                                         #  15    0xd77fd  1      OPC=nop             
  nop                                                         #  16    0xd77fe  1      OPC=nop             
  nop                                                         #  17    0xd77ff  1      OPC=nop             
.L_d7800:                                                     #        0xd7800  0      OPC=<label>         
  popq %r11                                                   #  18    0xd7800  2      OPC=popq_r64_1      
  leal 0xc(%rdi), %eax                                        #  19    0xd7802  3      OPC=leal_r32_m16    
  andl $0xffffffe0, %r11d                                     #  20    0xd7805  7      OPC=andl_r32_imm32  
  nop                                                         #  21    0xd780c  1      OPC=nop             
  nop                                                         #  22    0xd780d  1      OPC=nop             
  nop                                                         #  23    0xd780e  1      OPC=nop             
  nop                                                         #  24    0xd780f  1      OPC=nop             
  addq %r15, %r11                                             #  25    0xd7810  3      OPC=addq_r64_r64    
  jmpq %r11                                                   #  26    0xd7813  3      OPC=jmpq_r64        
  xchgw %ax, %ax                                              #  27    0xd7816  2      OPC=xchgw_ax_r16    
  nop                                                         #  28    0xd7818  1      OPC=nop             
  nop                                                         #  29    0xd7819  1      OPC=nop             
  nop                                                         #  30    0xd781a  1      OPC=nop             
  nop                                                         #  31    0xd781b  1      OPC=nop             
  nop                                                         #  32    0xd781c  1      OPC=nop             
  nop                                                         #  33    0xd781d  1      OPC=nop             
  nop                                                         #  34    0xd781e  1      OPC=nop             
  nop                                                         #  35    0xd781f  1      OPC=nop             
  nop                                                         #  36    0xd7820  1      OPC=nop             
  nop                                                         #  37    0xd7821  1      OPC=nop             
  nop                                                         #  38    0xd7822  1      OPC=nop             
  nop                                                         #  39    0xd7823  1      OPC=nop             
  nop                                                         #  40    0xd7824  1      OPC=nop             
  nop                                                         #  41    0xd7825  1      OPC=nop             
  nop                                                         #  42    0xd7826  1      OPC=nop             
.L_d7820:                                                     #        0xd7827  0      OPC=<label>         
  xorl %edx, %edx                                             #  43    0xd7827  2      OPC=xorl_r32_r32    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE4_Rep8_M_cloneERKS1_j  #  44    0xd7829  5      OPC=jmpq_label_1    
  nop                                                         #  45    0xd782e  1      OPC=nop             
  nop                                                         #  46    0xd782f  1      OPC=nop             
  nop                                                         #  47    0xd7830  1      OPC=nop             
  nop                                                         #  48    0xd7831  1      OPC=nop             
  nop                                                         #  49    0xd7832  1      OPC=nop             
  nop                                                         #  50    0xd7833  1      OPC=nop             
  nop                                                         #  51    0xd7834  1      OPC=nop             
  nop                                                         #  52    0xd7835  1      OPC=nop             
  nop                                                         #  53    0xd7836  1      OPC=nop             
  nop                                                         #  54    0xd7837  1      OPC=nop             
  nop                                                         #  55    0xd7838  1      OPC=nop             
  nop                                                         #  56    0xd7839  1      OPC=nop             
  nop                                                         #  57    0xd783a  1      OPC=nop             
  nop                                                         #  58    0xd783b  1      OPC=nop             
  nop                                                         #  59    0xd783c  1      OPC=nop             
  nop                                                         #  60    0xd783d  1      OPC=nop             
  nop                                                         #  61    0xd783e  1      OPC=nop             
  nop                                                         #  62    0xd783f  1      OPC=nop             
  nop                                                         #  63    0xd7840  1      OPC=nop             
  nop                                                         #  64    0xd7841  1      OPC=nop             
  nop                                                         #  65    0xd7842  1      OPC=nop             
  nop                                                         #  66    0xd7843  1      OPC=nop             
  nop                                                         #  67    0xd7844  1      OPC=nop             
  nop                                                         #  68    0xd7845  1      OPC=nop             
  nop                                                         #  69    0xd7846  1      OPC=nop             
.L_d7840:                                                     #        0xd7847  0      OPC=<label>         
  addl $0x1, %eax                                             #  70    0xd7847  3      OPC=addl_r32_imm8   
  movl %edi, %edi                                             #  71    0xd784a  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                                 #  72    0xd784c  5      OPC=movl_m32_r32    
  jmpq .L_d7800                                               #  73    0xd7851  2      OPC=jmpq_label      
  nop                                                         #  74    0xd7853  1      OPC=nop             
  nop                                                         #  75    0xd7854  1      OPC=nop             
  nop                                                         #  76    0xd7855  1      OPC=nop             
  nop                                                         #  77    0xd7856  1      OPC=nop             
  nop                                                         #  78    0xd7857  1      OPC=nop             
  nop                                                         #  79    0xd7858  1      OPC=nop             
  nop                                                         #  80    0xd7859  1      OPC=nop             
  nop                                                         #  81    0xd785a  1      OPC=nop             
  nop                                                         #  82    0xd785b  1      OPC=nop             
  nop                                                         #  83    0xd785c  1      OPC=nop             
  nop                                                         #  84    0xd785d  1      OPC=nop             
  nop                                                         #  85    0xd785e  1      OPC=nop             
  nop                                                         #  86    0xd785f  1      OPC=nop             
  nop                                                         #  87    0xd7860  1      OPC=nop             
  nop                                                         #  88    0xd7861  1      OPC=nop             
  nop                                                         #  89    0xd7862  1      OPC=nop             
  nop                                                         #  90    0xd7863  1      OPC=nop             
  nop                                                         #  91    0xd7864  1      OPC=nop             
  nop                                                         #  92    0xd7865  1      OPC=nop             
  nop                                                         #  93    0xd7866  1      OPC=nop             
                                                                                                           
.size _ZNSbIwSt11char_traitsIwESaIwEE4_Rep7_M_grabERKS1_S5_, .-_ZNSbIwSt11char_traitsIwESaIwEE4_Rep7_M_grabERKS1_S5_

