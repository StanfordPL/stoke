  .text
  .globl _ZNSs4_Rep7_M_grabERKSaIcES2_
  .type _ZNSs4_Rep7_M_grabERKSaIcES2_, @function

#! file-offset 0xec2e0
#! rip-offset  0xac2e0
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSs4_Rep7_M_grabERKSaIcES2_:       #        0xac2e0  0      OPC=<label>         
  movl %edi, %edi                     #  1     0xac2e0  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  2     0xac2e2  2      OPC=movl_r32_r32    
  movl %edi, %edi                     #  3     0xac2e4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax         #  4     0xac2e6  5      OPC=movl_r32_m32    
  testl %eax, %eax                    #  5     0xac2eb  2      OPC=testl_r32_r32   
  js .L_ac320                         #  6     0xac2ed  2      OPC=js_label        
  cmpl $0x10073580, %edi              #  7     0xac2ef  6      OPC=cmpl_r32_imm32  
  jne .L_ac340                        #  8     0xac2f5  2      OPC=jne_label       
  nop                                 #  9     0xac2f7  1      OPC=nop             
  nop                                 #  10    0xac2f8  1      OPC=nop             
  nop                                 #  11    0xac2f9  1      OPC=nop             
  nop                                 #  12    0xac2fa  1      OPC=nop             
  nop                                 #  13    0xac2fb  1      OPC=nop             
  nop                                 #  14    0xac2fc  1      OPC=nop             
  nop                                 #  15    0xac2fd  1      OPC=nop             
  nop                                 #  16    0xac2fe  1      OPC=nop             
  nop                                 #  17    0xac2ff  1      OPC=nop             
.L_ac300:                             #        0xac300  0      OPC=<label>         
  popq %r11                           #  18    0xac300  2      OPC=popq_r64_1      
  leal 0xc(%rdi), %eax                #  19    0xac302  3      OPC=leal_r32_m16    
  andl $0xffffffe0, %r11d             #  20    0xac305  7      OPC=andl_r32_imm32  
  nop                                 #  21    0xac30c  1      OPC=nop             
  nop                                 #  22    0xac30d  1      OPC=nop             
  nop                                 #  23    0xac30e  1      OPC=nop             
  nop                                 #  24    0xac30f  1      OPC=nop             
  addq %r15, %r11                     #  25    0xac310  3      OPC=addq_r64_r64    
  jmpq %r11                           #  26    0xac313  3      OPC=jmpq_r64        
  xchgw %ax, %ax                      #  27    0xac316  2      OPC=xchgw_ax_r16    
  nop                                 #  28    0xac318  1      OPC=nop             
  nop                                 #  29    0xac319  1      OPC=nop             
  nop                                 #  30    0xac31a  1      OPC=nop             
  nop                                 #  31    0xac31b  1      OPC=nop             
  nop                                 #  32    0xac31c  1      OPC=nop             
  nop                                 #  33    0xac31d  1      OPC=nop             
  nop                                 #  34    0xac31e  1      OPC=nop             
  nop                                 #  35    0xac31f  1      OPC=nop             
  nop                                 #  36    0xac320  1      OPC=nop             
  nop                                 #  37    0xac321  1      OPC=nop             
  nop                                 #  38    0xac322  1      OPC=nop             
  nop                                 #  39    0xac323  1      OPC=nop             
  nop                                 #  40    0xac324  1      OPC=nop             
  nop                                 #  41    0xac325  1      OPC=nop             
  nop                                 #  42    0xac326  1      OPC=nop             
.L_ac320:                             #        0xac327  0      OPC=<label>         
  xorl %edx, %edx                     #  43    0xac327  2      OPC=xorl_r32_r32    
  jmpq ._ZNSs4_Rep8_M_cloneERKSaIcEj  #  44    0xac329  5      OPC=jmpq_label_1    
  nop                                 #  45    0xac32e  1      OPC=nop             
  nop                                 #  46    0xac32f  1      OPC=nop             
  nop                                 #  47    0xac330  1      OPC=nop             
  nop                                 #  48    0xac331  1      OPC=nop             
  nop                                 #  49    0xac332  1      OPC=nop             
  nop                                 #  50    0xac333  1      OPC=nop             
  nop                                 #  51    0xac334  1      OPC=nop             
  nop                                 #  52    0xac335  1      OPC=nop             
  nop                                 #  53    0xac336  1      OPC=nop             
  nop                                 #  54    0xac337  1      OPC=nop             
  nop                                 #  55    0xac338  1      OPC=nop             
  nop                                 #  56    0xac339  1      OPC=nop             
  nop                                 #  57    0xac33a  1      OPC=nop             
  nop                                 #  58    0xac33b  1      OPC=nop             
  nop                                 #  59    0xac33c  1      OPC=nop             
  nop                                 #  60    0xac33d  1      OPC=nop             
  nop                                 #  61    0xac33e  1      OPC=nop             
  nop                                 #  62    0xac33f  1      OPC=nop             
  nop                                 #  63    0xac340  1      OPC=nop             
  nop                                 #  64    0xac341  1      OPC=nop             
  nop                                 #  65    0xac342  1      OPC=nop             
  nop                                 #  66    0xac343  1      OPC=nop             
  nop                                 #  67    0xac344  1      OPC=nop             
  nop                                 #  68    0xac345  1      OPC=nop             
  nop                                 #  69    0xac346  1      OPC=nop             
.L_ac340:                             #        0xac347  0      OPC=<label>         
  addl $0x1, %eax                     #  70    0xac347  3      OPC=addl_r32_imm8   
  movl %edi, %edi                     #  71    0xac34a  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)         #  72    0xac34c  5      OPC=movl_m32_r32    
  jmpq .L_ac300                       #  73    0xac351  2      OPC=jmpq_label      
  nop                                 #  74    0xac353  1      OPC=nop             
  nop                                 #  75    0xac354  1      OPC=nop             
  nop                                 #  76    0xac355  1      OPC=nop             
  nop                                 #  77    0xac356  1      OPC=nop             
  nop                                 #  78    0xac357  1      OPC=nop             
  nop                                 #  79    0xac358  1      OPC=nop             
  nop                                 #  80    0xac359  1      OPC=nop             
  nop                                 #  81    0xac35a  1      OPC=nop             
  nop                                 #  82    0xac35b  1      OPC=nop             
  nop                                 #  83    0xac35c  1      OPC=nop             
  nop                                 #  84    0xac35d  1      OPC=nop             
  nop                                 #  85    0xac35e  1      OPC=nop             
  nop                                 #  86    0xac35f  1      OPC=nop             
  nop                                 #  87    0xac360  1      OPC=nop             
  nop                                 #  88    0xac361  1      OPC=nop             
  nop                                 #  89    0xac362  1      OPC=nop             
  nop                                 #  90    0xac363  1      OPC=nop             
  nop                                 #  91    0xac364  1      OPC=nop             
  nop                                 #  92    0xac365  1      OPC=nop             
  nop                                 #  93    0xac366  1      OPC=nop             
                                                                                   
.size _ZNSs4_Rep7_M_grabERKSaIcES2_, .-_ZNSs4_Rep7_M_grabERKSaIcES2_

