  .text
  .globl _ZNSt10moneypunctIwLb0EEC2EPiPKcj
  .type _ZNSt10moneypunctIwLb0EEC2EPiPKcj, @function

#! file-offset 0xf73e0
#! rip-offset  0xb73e0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EEC2EPiPKcj:                                #        0xb73e0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb73e0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb73e1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb73e3  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0xb73e5  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0xb73e7  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0xb73e9  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0xb73eb  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0xb73ee  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0xb73f1  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0xb73f3  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)                                  #  11    0xb73f5  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0xb73fd  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0xb7400  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0xb7402  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0xb740b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0xb740d  5      OPC=movl_m32_r32    
  nop                                                              #  17    0xb7412  1      OPC=nop             
  nop                                                              #  18    0xb7413  1      OPC=nop             
  nop                                                              #  19    0xb7414  1      OPC=nop             
  nop                                                              #  20    0xb7415  1      OPC=nop             
  nop                                                              #  21    0xb7416  1      OPC=nop             
  nop                                                              #  22    0xb7417  1      OPC=nop             
  nop                                                              #  23    0xb7418  1      OPC=nop             
  nop                                                              #  24    0xb7419  1      OPC=nop             
  nop                                                              #  25    0xb741a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0xb741b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb7420  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb7423  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb7426  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb7427  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb7429  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb7430  1      OPC=nop             
  nop                                                              #  33    0xb7431  1      OPC=nop             
  nop                                                              #  34    0xb7432  1      OPC=nop             
  nop                                                              #  35    0xb7433  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb7434  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb7437  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb743a  1      OPC=nop             
  nop                                                              #  39    0xb743b  1      OPC=nop             
  nop                                                              #  40    0xb743c  1      OPC=nop             
  nop                                                              #  41    0xb743d  1      OPC=nop             
  nop                                                              #  42    0xb743e  1      OPC=nop             
  nop                                                              #  43    0xb743f  1      OPC=nop             
  nop                                                              #  44    0xb7440  1      OPC=nop             
  nop                                                              #  45    0xb7441  1      OPC=nop             
  nop                                                              #  46    0xb7442  1      OPC=nop             
  nop                                                              #  47    0xb7443  1      OPC=nop             
  nop                                                              #  48    0xb7444  1      OPC=nop             
  nop                                                              #  49    0xb7445  1      OPC=nop             
  nop                                                              #  50    0xb7446  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb7447  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb7449  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb744d  1      OPC=nop             
  nop                                                              #  54    0xb744e  1      OPC=nop             
  nop                                                              #  55    0xb744f  1      OPC=nop             
  nop                                                              #  56    0xb7450  1      OPC=nop             
  nop                                                              #  57    0xb7451  1      OPC=nop             
  nop                                                              #  58    0xb7452  1      OPC=nop             
  nop                                                              #  59    0xb7453  1      OPC=nop             
  nop                                                              #  60    0xb7454  1      OPC=nop             
  nop                                                              #  61    0xb7455  1      OPC=nop             
  nop                                                              #  62    0xb7456  1      OPC=nop             
  nop                                                              #  63    0xb7457  1      OPC=nop             
  nop                                                              #  64    0xb7458  1      OPC=nop             
  nop                                                              #  65    0xb7459  1      OPC=nop             
  nop                                                              #  66    0xb745a  1      OPC=nop             
  nop                                                              #  67    0xb745b  1      OPC=nop             
  nop                                                              #  68    0xb745c  1      OPC=nop             
  nop                                                              #  69    0xb745d  1      OPC=nop             
  nop                                                              #  70    0xb745e  1      OPC=nop             
  nop                                                              #  71    0xb745f  1      OPC=nop             
  nop                                                              #  72    0xb7460  1      OPC=nop             
  nop                                                              #  73    0xb7461  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb7462  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb7467  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb746b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb746d  1      OPC=nop             
  nop                                                              #  78    0xb746e  1      OPC=nop             
  nop                                                              #  79    0xb746f  1      OPC=nop             
  nop                                                              #  80    0xb7470  1      OPC=nop             
  nop                                                              #  81    0xb7471  1      OPC=nop             
  nop                                                              #  82    0xb7472  1      OPC=nop             
  nop                                                              #  83    0xb7473  1      OPC=nop             
  nop                                                              #  84    0xb7474  1      OPC=nop             
  nop                                                              #  85    0xb7475  1      OPC=nop             
  nop                                                              #  86    0xb7476  1      OPC=nop             
  nop                                                              #  87    0xb7477  1      OPC=nop             
  nop                                                              #  88    0xb7478  1      OPC=nop             
  nop                                                              #  89    0xb7479  1      OPC=nop             
  nop                                                              #  90    0xb747a  1      OPC=nop             
  nop                                                              #  91    0xb747b  1      OPC=nop             
  nop                                                              #  92    0xb747c  1      OPC=nop             
  nop                                                              #  93    0xb747d  1      OPC=nop             
  nop                                                              #  94    0xb747e  1      OPC=nop             
  nop                                                              #  95    0xb747f  1      OPC=nop             
  nop                                                              #  96    0xb7480  1      OPC=nop             
  nop                                                              #  97    0xb7481  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb7482  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb0EEC2EPiPKcj, .-_ZNSt10moneypunctIwLb0EEC2EPiPKcj

