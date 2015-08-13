  .text
  .globl _ZNSt10moneypunctIwLb1EEC2EPSt18__moneypunct_cacheIwLb1EEj
  .type _ZNSt10moneypunctIwLb1EEC2EPSt18__moneypunct_cacheIwLb1EEj, @function

#! file-offset 0xf70e0
#! rip-offset  0xb70e0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EEC2EPSt18__moneypunct_cacheIwLb1EEj:       #        0xb70e0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb70e0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb70e1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb70e3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb70e5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb70e7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb70ea  3      OPC=addq_r64_r64    
  testl %edx, %edx                                                 #  7     0xb70ed  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb70ef  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                                      #  9     0xb70f1  5      OPC=movl_m32_r32    
  setne %al                                                        #  10    0xb70f6  3      OPC=setne_r8        
  nop                                                              #  11    0xb70f9  1      OPC=nop             
  nop                                                              #  12    0xb70fa  1      OPC=nop             
  nop                                                              #  13    0xb70fb  1      OPC=nop             
  nop                                                              #  14    0xb70fc  1      OPC=nop             
  nop                                                              #  15    0xb70fd  1      OPC=nop             
  nop                                                              #  16    0xb70fe  1      OPC=nop             
  nop                                                              #  17    0xb70ff  1      OPC=nop             
  movl %ebx, %ebx                                                  #  18    0xb7100  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)                                  #  19    0xb7102  8      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  20    0xb710a  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  21    0xb710c  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  22    0xb710e  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  23    0xb7113  2      OPC=xorl_r32_r32    
  nop                                                              #  24    0xb7115  1      OPC=nop             
  nop                                                              #  25    0xb7116  1      OPC=nop             
  nop                                                              #  26    0xb7117  1      OPC=nop             
  nop                                                              #  27    0xb7118  1      OPC=nop             
  nop                                                              #  28    0xb7119  1      OPC=nop             
  nop                                                              #  29    0xb711a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb1EE24_M_initialize_moneypunctEPiPKc  #  30    0xb711b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  31    0xb7120  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  32    0xb7123  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  33    0xb7126  1      OPC=popq_r64_1      
  popq %r11                                                        #  34    0xb7127  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  35    0xb7129  7      OPC=andl_r32_imm32  
  nop                                                              #  36    0xb7130  1      OPC=nop             
  nop                                                              #  37    0xb7131  1      OPC=nop             
  nop                                                              #  38    0xb7132  1      OPC=nop             
  nop                                                              #  39    0xb7133  1      OPC=nop             
  addq %r15, %r11                                                  #  40    0xb7134  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  41    0xb7137  3      OPC=jmpq_r64        
  nop                                                              #  42    0xb713a  1      OPC=nop             
  nop                                                              #  43    0xb713b  1      OPC=nop             
  nop                                                              #  44    0xb713c  1      OPC=nop             
  nop                                                              #  45    0xb713d  1      OPC=nop             
  nop                                                              #  46    0xb713e  1      OPC=nop             
  nop                                                              #  47    0xb713f  1      OPC=nop             
  nop                                                              #  48    0xb7140  1      OPC=nop             
  nop                                                              #  49    0xb7141  1      OPC=nop             
  nop                                                              #  50    0xb7142  1      OPC=nop             
  nop                                                              #  51    0xb7143  1      OPC=nop             
  nop                                                              #  52    0xb7144  1      OPC=nop             
  nop                                                              #  53    0xb7145  1      OPC=nop             
  nop                                                              #  54    0xb7146  1      OPC=nop             
  movl %ebx, %edi                                                  #  55    0xb7147  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  56    0xb7149  4      OPC=movl_m32_r32    
  nop                                                              #  57    0xb714d  1      OPC=nop             
  nop                                                              #  58    0xb714e  1      OPC=nop             
  nop                                                              #  59    0xb714f  1      OPC=nop             
  nop                                                              #  60    0xb7150  1      OPC=nop             
  nop                                                              #  61    0xb7151  1      OPC=nop             
  nop                                                              #  62    0xb7152  1      OPC=nop             
  nop                                                              #  63    0xb7153  1      OPC=nop             
  nop                                                              #  64    0xb7154  1      OPC=nop             
  nop                                                              #  65    0xb7155  1      OPC=nop             
  nop                                                              #  66    0xb7156  1      OPC=nop             
  nop                                                              #  67    0xb7157  1      OPC=nop             
  nop                                                              #  68    0xb7158  1      OPC=nop             
  nop                                                              #  69    0xb7159  1      OPC=nop             
  nop                                                              #  70    0xb715a  1      OPC=nop             
  nop                                                              #  71    0xb715b  1      OPC=nop             
  nop                                                              #  72    0xb715c  1      OPC=nop             
  nop                                                              #  73    0xb715d  1      OPC=nop             
  nop                                                              #  74    0xb715e  1      OPC=nop             
  nop                                                              #  75    0xb715f  1      OPC=nop             
  nop                                                              #  76    0xb7160  1      OPC=nop             
  nop                                                              #  77    0xb7161  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  78    0xb7162  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  79    0xb7167  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  80    0xb716b  2      OPC=movl_r32_r32    
  nop                                                              #  81    0xb716d  1      OPC=nop             
  nop                                                              #  82    0xb716e  1      OPC=nop             
  nop                                                              #  83    0xb716f  1      OPC=nop             
  nop                                                              #  84    0xb7170  1      OPC=nop             
  nop                                                              #  85    0xb7171  1      OPC=nop             
  nop                                                              #  86    0xb7172  1      OPC=nop             
  nop                                                              #  87    0xb7173  1      OPC=nop             
  nop                                                              #  88    0xb7174  1      OPC=nop             
  nop                                                              #  89    0xb7175  1      OPC=nop             
  nop                                                              #  90    0xb7176  1      OPC=nop             
  nop                                                              #  91    0xb7177  1      OPC=nop             
  nop                                                              #  92    0xb7178  1      OPC=nop             
  nop                                                              #  93    0xb7179  1      OPC=nop             
  nop                                                              #  94    0xb717a  1      OPC=nop             
  nop                                                              #  95    0xb717b  1      OPC=nop             
  nop                                                              #  96    0xb717c  1      OPC=nop             
  nop                                                              #  97    0xb717d  1      OPC=nop             
  nop                                                              #  98    0xb717e  1      OPC=nop             
  nop                                                              #  99    0xb717f  1      OPC=nop             
  nop                                                              #  100   0xb7180  1      OPC=nop             
  nop                                                              #  101   0xb7181  1      OPC=nop             
  callq ._Unwind_Resume                                            #  102   0xb7182  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb1EEC2EPSt18__moneypunct_cacheIwLb1EEj, .-_ZNSt10moneypunctIwLb1EEC2EPSt18__moneypunct_cacheIwLb1EEj

