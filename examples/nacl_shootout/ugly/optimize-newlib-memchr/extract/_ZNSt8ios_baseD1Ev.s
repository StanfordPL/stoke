  .text
  .globl _ZNSt8ios_baseD1Ev
  .type _ZNSt8ios_baseD1Ev, @function

#! file-offset 0x128d20
#! rip-offset  0xe8d20
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_baseD1Ev:                                   #        0xe8d20  0      OPC=<label>         
  pushq %rbx                                           #  1     0xe8d20  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                      #  2     0xe8d21  2      OPC=movl_r32_r32    
  xorl %esi, %esi                                      #  3     0xe8d23  2      OPC=xorl_r32_r32    
  movl %ebx, %edi                                      #  4     0xe8d25  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                      #  5     0xe8d27  2      OPC=movl_r32_r32    
  movl $0x1003d938, (%r15,%rbx,1)                      #  6     0xe8d29  8      OPC=movl_m32_imm32  
  nop                                                  #  7     0xe8d31  1      OPC=nop             
  nop                                                  #  8     0xe8d32  1      OPC=nop             
  nop                                                  #  9     0xe8d33  1      OPC=nop             
  nop                                                  #  10    0xe8d34  1      OPC=nop             
  nop                                                  #  11    0xe8d35  1      OPC=nop             
  nop                                                  #  12    0xe8d36  1      OPC=nop             
  nop                                                  #  13    0xe8d37  1      OPC=nop             
  nop                                                  #  14    0xe8d38  1      OPC=nop             
  nop                                                  #  15    0xe8d39  1      OPC=nop             
  nop                                                  #  16    0xe8d3a  1      OPC=nop             
  callq ._ZNSt8ios_base17_M_call_callbacksENS_5eventE  #  17    0xe8d3b  5      OPC=callq_label     
  movl %ebx, %edi                                      #  18    0xe8d40  2      OPC=movl_r32_r32    
  nop                                                  #  19    0xe8d42  1      OPC=nop             
  nop                                                  #  20    0xe8d43  1      OPC=nop             
  nop                                                  #  21    0xe8d44  1      OPC=nop             
  nop                                                  #  22    0xe8d45  1      OPC=nop             
  nop                                                  #  23    0xe8d46  1      OPC=nop             
  nop                                                  #  24    0xe8d47  1      OPC=nop             
  nop                                                  #  25    0xe8d48  1      OPC=nop             
  nop                                                  #  26    0xe8d49  1      OPC=nop             
  nop                                                  #  27    0xe8d4a  1      OPC=nop             
  nop                                                  #  28    0xe8d4b  1      OPC=nop             
  nop                                                  #  29    0xe8d4c  1      OPC=nop             
  nop                                                  #  30    0xe8d4d  1      OPC=nop             
  nop                                                  #  31    0xe8d4e  1      OPC=nop             
  nop                                                  #  32    0xe8d4f  1      OPC=nop             
  nop                                                  #  33    0xe8d50  1      OPC=nop             
  nop                                                  #  34    0xe8d51  1      OPC=nop             
  nop                                                  #  35    0xe8d52  1      OPC=nop             
  nop                                                  #  36    0xe8d53  1      OPC=nop             
  nop                                                  #  37    0xe8d54  1      OPC=nop             
  nop                                                  #  38    0xe8d55  1      OPC=nop             
  nop                                                  #  39    0xe8d56  1      OPC=nop             
  nop                                                  #  40    0xe8d57  1      OPC=nop             
  nop                                                  #  41    0xe8d58  1      OPC=nop             
  nop                                                  #  42    0xe8d59  1      OPC=nop             
  nop                                                  #  43    0xe8d5a  1      OPC=nop             
  callq ._ZNSt8ios_base20_M_dispose_callbacksEv        #  44    0xe8d5b  5      OPC=callq_label     
  movl %ebx, %ebx                                      #  45    0xe8d60  2      OPC=movl_r32_r32    
  movl 0x68(%r15,%rbx,1), %edi                         #  46    0xe8d62  5      OPC=movl_r32_m32    
  leal 0x24(%rbx), %eax                                #  47    0xe8d67  3      OPC=leal_r32_m16    
  cmpl %edi, %eax                                      #  48    0xe8d6a  2      OPC=cmpl_r32_r32    
  je .L_e8da0                                          #  49    0xe8d6c  2      OPC=je_label        
  testq %rdi, %rdi                                     #  50    0xe8d6e  3      OPC=testq_r64_r64   
  je .L_e8d80                                          #  51    0xe8d71  2      OPC=je_label        
  nop                                                  #  52    0xe8d73  1      OPC=nop             
  nop                                                  #  53    0xe8d74  1      OPC=nop             
  nop                                                  #  54    0xe8d75  1      OPC=nop             
  nop                                                  #  55    0xe8d76  1      OPC=nop             
  nop                                                  #  56    0xe8d77  1      OPC=nop             
  nop                                                  #  57    0xe8d78  1      OPC=nop             
  nop                                                  #  58    0xe8d79  1      OPC=nop             
  nop                                                  #  59    0xe8d7a  1      OPC=nop             
  callq ._ZdaPv                                        #  60    0xe8d7b  5      OPC=callq_label     
.L_e8d80:                                              #        0xe8d80  0      OPC=<label>         
  movl %ebx, %ebx                                      #  61    0xe8d80  2      OPC=movl_r32_r32    
  movl $0x0, 0x68(%r15,%rbx,1)                         #  62    0xe8d82  9      OPC=movl_m32_imm32  
  nop                                                  #  63    0xe8d8b  1      OPC=nop             
  nop                                                  #  64    0xe8d8c  1      OPC=nop             
  nop                                                  #  65    0xe8d8d  1      OPC=nop             
  nop                                                  #  66    0xe8d8e  1      OPC=nop             
  nop                                                  #  67    0xe8d8f  1      OPC=nop             
  nop                                                  #  68    0xe8d90  1      OPC=nop             
  nop                                                  #  69    0xe8d91  1      OPC=nop             
  nop                                                  #  70    0xe8d92  1      OPC=nop             
  nop                                                  #  71    0xe8d93  1      OPC=nop             
  nop                                                  #  72    0xe8d94  1      OPC=nop             
  nop                                                  #  73    0xe8d95  1      OPC=nop             
  nop                                                  #  74    0xe8d96  1      OPC=nop             
  nop                                                  #  75    0xe8d97  1      OPC=nop             
  nop                                                  #  76    0xe8d98  1      OPC=nop             
  nop                                                  #  77    0xe8d99  1      OPC=nop             
  nop                                                  #  78    0xe8d9a  1      OPC=nop             
  nop                                                  #  79    0xe8d9b  1      OPC=nop             
  nop                                                  #  80    0xe8d9c  1      OPC=nop             
  nop                                                  #  81    0xe8d9d  1      OPC=nop             
  nop                                                  #  82    0xe8d9e  1      OPC=nop             
  nop                                                  #  83    0xe8d9f  1      OPC=nop             
.L_e8da0:                                              #        0xe8da0  0      OPC=<label>         
  leal 0x6c(%rbx), %edi                                #  84    0xe8da0  3      OPC=leal_r32_m16    
  popq %rbx                                            #  85    0xe8da3  1      OPC=popq_r64_1      
  jmpq ._ZNSt6localeD1Ev                               #  86    0xe8da4  5      OPC=jmpq_label_1    
  nop                                                  #  87    0xe8da9  1      OPC=nop             
  nop                                                  #  88    0xe8daa  1      OPC=nop             
  nop                                                  #  89    0xe8dab  1      OPC=nop             
  nop                                                  #  90    0xe8dac  1      OPC=nop             
  nop                                                  #  91    0xe8dad  1      OPC=nop             
  nop                                                  #  92    0xe8dae  1      OPC=nop             
  nop                                                  #  93    0xe8daf  1      OPC=nop             
  nop                                                  #  94    0xe8db0  1      OPC=nop             
  nop                                                  #  95    0xe8db1  1      OPC=nop             
  nop                                                  #  96    0xe8db2  1      OPC=nop             
  nop                                                  #  97    0xe8db3  1      OPC=nop             
  nop                                                  #  98    0xe8db4  1      OPC=nop             
  nop                                                  #  99    0xe8db5  1      OPC=nop             
  nop                                                  #  100   0xe8db6  1      OPC=nop             
  nop                                                  #  101   0xe8db7  1      OPC=nop             
  nop                                                  #  102   0xe8db8  1      OPC=nop             
  nop                                                  #  103   0xe8db9  1      OPC=nop             
  nop                                                  #  104   0xe8dba  1      OPC=nop             
  nop                                                  #  105   0xe8dbb  1      OPC=nop             
  nop                                                  #  106   0xe8dbc  1      OPC=nop             
  nop                                                  #  107   0xe8dbd  1      OPC=nop             
  nop                                                  #  108   0xe8dbe  1      OPC=nop             
  nop                                                  #  109   0xe8dbf  1      OPC=nop             
                                                                                                    
.size _ZNSt8ios_baseD1Ev, .-_ZNSt8ios_baseD1Ev

