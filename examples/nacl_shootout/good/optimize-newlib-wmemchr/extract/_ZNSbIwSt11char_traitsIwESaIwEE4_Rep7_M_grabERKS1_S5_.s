  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE4_Rep7_M_grabERKS1_S5_
  .type _ZNSbIwSt11char_traitsIwESaIwEE4_Rep7_M_grabERKS1_S5_, @function

#! file-offset 0x1170c0
#! rip-offset  0xd70c0
#! capacity    128 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE4_Rep7_M_grabERKS1_S5_:       #        0xd70c0  0      OPC=<label>         
  movl %edi, %edi                                             #  1     0xd70c0  2      OPC=movl_r32_r32    
  movl %esi, %esi                                             #  2     0xd70c2  2      OPC=movl_r32_r32    
  movl %edi, %edi                                             #  3     0xd70c4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                 #  4     0xd70c6  5      OPC=movl_r32_m32    
  testl %eax, %eax                                            #  5     0xd70cb  2      OPC=testl_r32_r32   
  js .L_d7100                                                 #  6     0xd70cd  2      OPC=js_label        
  cmpl $0x10073620, %edi                                      #  7     0xd70cf  6      OPC=cmpl_r32_imm32  
  jne .L_d7120                                                #  8     0xd70d5  2      OPC=jne_label       
  nop                                                         #  9     0xd70d7  1      OPC=nop             
  nop                                                         #  10    0xd70d8  1      OPC=nop             
  nop                                                         #  11    0xd70d9  1      OPC=nop             
  nop                                                         #  12    0xd70da  1      OPC=nop             
  nop                                                         #  13    0xd70db  1      OPC=nop             
  nop                                                         #  14    0xd70dc  1      OPC=nop             
  nop                                                         #  15    0xd70dd  1      OPC=nop             
  nop                                                         #  16    0xd70de  1      OPC=nop             
  nop                                                         #  17    0xd70df  1      OPC=nop             
.L_d70e0:                                                     #        0xd70e0  0      OPC=<label>         
  popq %r11                                                   #  18    0xd70e0  2      OPC=popq_r64_1      
  leal 0xc(%rdi), %eax                                        #  19    0xd70e2  3      OPC=leal_r32_m16    
  andl $0xffffffe0, %r11d                                     #  20    0xd70e5  7      OPC=andl_r32_imm32  
  nop                                                         #  21    0xd70ec  1      OPC=nop             
  nop                                                         #  22    0xd70ed  1      OPC=nop             
  nop                                                         #  23    0xd70ee  1      OPC=nop             
  nop                                                         #  24    0xd70ef  1      OPC=nop             
  addq %r15, %r11                                             #  25    0xd70f0  3      OPC=addq_r64_r64    
  jmpq %r11                                                   #  26    0xd70f3  3      OPC=jmpq_r64        
  xchgw %ax, %ax                                              #  27    0xd70f6  2      OPC=xchgw_ax_r16    
  nop                                                         #  28    0xd70f8  1      OPC=nop             
  nop                                                         #  29    0xd70f9  1      OPC=nop             
  nop                                                         #  30    0xd70fa  1      OPC=nop             
  nop                                                         #  31    0xd70fb  1      OPC=nop             
  nop                                                         #  32    0xd70fc  1      OPC=nop             
  nop                                                         #  33    0xd70fd  1      OPC=nop             
  nop                                                         #  34    0xd70fe  1      OPC=nop             
  nop                                                         #  35    0xd70ff  1      OPC=nop             
  nop                                                         #  36    0xd7100  1      OPC=nop             
  nop                                                         #  37    0xd7101  1      OPC=nop             
  nop                                                         #  38    0xd7102  1      OPC=nop             
  nop                                                         #  39    0xd7103  1      OPC=nop             
  nop                                                         #  40    0xd7104  1      OPC=nop             
  nop                                                         #  41    0xd7105  1      OPC=nop             
  nop                                                         #  42    0xd7106  1      OPC=nop             
.L_d7100:                                                     #        0xd7107  0      OPC=<label>         
  xorl %edx, %edx                                             #  43    0xd7107  2      OPC=xorl_r32_r32    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE4_Rep8_M_cloneERKS1_j  #  44    0xd7109  5      OPC=jmpq_label_1    
  nop                                                         #  45    0xd710e  1      OPC=nop             
  nop                                                         #  46    0xd710f  1      OPC=nop             
  nop                                                         #  47    0xd7110  1      OPC=nop             
  nop                                                         #  48    0xd7111  1      OPC=nop             
  nop                                                         #  49    0xd7112  1      OPC=nop             
  nop                                                         #  50    0xd7113  1      OPC=nop             
  nop                                                         #  51    0xd7114  1      OPC=nop             
  nop                                                         #  52    0xd7115  1      OPC=nop             
  nop                                                         #  53    0xd7116  1      OPC=nop             
  nop                                                         #  54    0xd7117  1      OPC=nop             
  nop                                                         #  55    0xd7118  1      OPC=nop             
  nop                                                         #  56    0xd7119  1      OPC=nop             
  nop                                                         #  57    0xd711a  1      OPC=nop             
  nop                                                         #  58    0xd711b  1      OPC=nop             
  nop                                                         #  59    0xd711c  1      OPC=nop             
  nop                                                         #  60    0xd711d  1      OPC=nop             
  nop                                                         #  61    0xd711e  1      OPC=nop             
  nop                                                         #  62    0xd711f  1      OPC=nop             
  nop                                                         #  63    0xd7120  1      OPC=nop             
  nop                                                         #  64    0xd7121  1      OPC=nop             
  nop                                                         #  65    0xd7122  1      OPC=nop             
  nop                                                         #  66    0xd7123  1      OPC=nop             
  nop                                                         #  67    0xd7124  1      OPC=nop             
  nop                                                         #  68    0xd7125  1      OPC=nop             
  nop                                                         #  69    0xd7126  1      OPC=nop             
.L_d7120:                                                     #        0xd7127  0      OPC=<label>         
  addl $0x1, %eax                                             #  70    0xd7127  3      OPC=addl_r32_imm8   
  movl %edi, %edi                                             #  71    0xd712a  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                                 #  72    0xd712c  5      OPC=movl_m32_r32    
  jmpq .L_d70e0                                               #  73    0xd7131  2      OPC=jmpq_label      
  nop                                                         #  74    0xd7133  1      OPC=nop             
  nop                                                         #  75    0xd7134  1      OPC=nop             
  nop                                                         #  76    0xd7135  1      OPC=nop             
  nop                                                         #  77    0xd7136  1      OPC=nop             
  nop                                                         #  78    0xd7137  1      OPC=nop             
  nop                                                         #  79    0xd7138  1      OPC=nop             
  nop                                                         #  80    0xd7139  1      OPC=nop             
  nop                                                         #  81    0xd713a  1      OPC=nop             
  nop                                                         #  82    0xd713b  1      OPC=nop             
  nop                                                         #  83    0xd713c  1      OPC=nop             
  nop                                                         #  84    0xd713d  1      OPC=nop             
  nop                                                         #  85    0xd713e  1      OPC=nop             
  nop                                                         #  86    0xd713f  1      OPC=nop             
  nop                                                         #  87    0xd7140  1      OPC=nop             
  nop                                                         #  88    0xd7141  1      OPC=nop             
  nop                                                         #  89    0xd7142  1      OPC=nop             
  nop                                                         #  90    0xd7143  1      OPC=nop             
  nop                                                         #  91    0xd7144  1      OPC=nop             
  nop                                                         #  92    0xd7145  1      OPC=nop             
  nop                                                         #  93    0xd7146  1      OPC=nop             
                                                                                                           
.size _ZNSbIwSt11char_traitsIwESaIwEE4_Rep7_M_grabERKS1_S5_, .-_ZNSbIwSt11char_traitsIwESaIwEE4_Rep7_M_grabERKS1_S5_

