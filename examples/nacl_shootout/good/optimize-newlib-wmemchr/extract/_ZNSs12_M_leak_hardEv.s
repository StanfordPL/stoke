  .text
  .globl _ZNSs12_M_leak_hardEv
  .type _ZNSs12_M_leak_hardEv, @function

#! file-offset 0xeece0
#! rip-offset  0xaece0
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSs12_M_leak_hardEv:               #        0xaece0  0      OPC=<label>         
  pushq %rbx                          #  1     0xaece0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  2     0xaece1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                     #  3     0xaece3  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax            #  4     0xaece5  4      OPC=movl_r32_m32    
  subl $0xc, %eax                     #  5     0xaece9  3      OPC=subl_r32_imm8   
  cmpl $0x10073580, %eax              #  6     0xaecec  5      OPC=cmpl_eax_imm32  
  je .L_aed60                         #  7     0xaecf1  2      OPC=je_label        
  movl %eax, %eax                     #  8     0xaecf3  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %edi         #  9     0xaecf5  5      OPC=movl_r32_m32    
  testl %edi, %edi                    #  10    0xaecfa  2      OPC=testl_r32_r32   
  nop                                 #  11    0xaecfc  1      OPC=nop             
  nop                                 #  12    0xaecfd  1      OPC=nop             
  nop                                 #  13    0xaecfe  1      OPC=nop             
  nop                                 #  14    0xaecff  1      OPC=nop             
  jle .L_aed40                        #  15    0xaed00  2      OPC=jle_label       
  xorl %ecx, %ecx                     #  16    0xaed02  2      OPC=xorl_r32_r32    
  xorl %edx, %edx                     #  17    0xaed04  2      OPC=xorl_r32_r32    
  xorl %esi, %esi                     #  18    0xaed06  2      OPC=xorl_r32_r32    
  movl %ebx, %edi                     #  19    0xaed08  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                      #  20    0xaed0a  2      OPC=xchgw_ax_r16    
  nop                                 #  21    0xaed0c  1      OPC=nop             
  nop                                 #  22    0xaed0d  1      OPC=nop             
  nop                                 #  23    0xaed0e  1      OPC=nop             
  nop                                 #  24    0xaed0f  1      OPC=nop             
  nop                                 #  25    0xaed10  1      OPC=nop             
  nop                                 #  26    0xaed11  1      OPC=nop             
  nop                                 #  27    0xaed12  1      OPC=nop             
  nop                                 #  28    0xaed13  1      OPC=nop             
  nop                                 #  29    0xaed14  1      OPC=nop             
  nop                                 #  30    0xaed15  1      OPC=nop             
  nop                                 #  31    0xaed16  1      OPC=nop             
  nop                                 #  32    0xaed17  1      OPC=nop             
  nop                                 #  33    0xaed18  1      OPC=nop             
  nop                                 #  34    0xaed19  1      OPC=nop             
  nop                                 #  35    0xaed1a  1      OPC=nop             
  callq ._ZNSs9_M_mutateEjjj          #  36    0xaed1b  5      OPC=callq_label     
  movl %ebx, %ebx                     #  37    0xaed20  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax            #  38    0xaed22  4      OPC=movl_r32_m32    
  subl $0xc, %eax                     #  39    0xaed26  3      OPC=subl_r32_imm8   
  nop                                 #  40    0xaed29  1      OPC=nop             
  nop                                 #  41    0xaed2a  1      OPC=nop             
  nop                                 #  42    0xaed2b  1      OPC=nop             
  nop                                 #  43    0xaed2c  1      OPC=nop             
  nop                                 #  44    0xaed2d  1      OPC=nop             
  nop                                 #  45    0xaed2e  1      OPC=nop             
  nop                                 #  46    0xaed2f  1      OPC=nop             
  nop                                 #  47    0xaed30  1      OPC=nop             
  nop                                 #  48    0xaed31  1      OPC=nop             
  nop                                 #  49    0xaed32  1      OPC=nop             
  nop                                 #  50    0xaed33  1      OPC=nop             
  nop                                 #  51    0xaed34  1      OPC=nop             
  nop                                 #  52    0xaed35  1      OPC=nop             
  nop                                 #  53    0xaed36  1      OPC=nop             
  nop                                 #  54    0xaed37  1      OPC=nop             
  nop                                 #  55    0xaed38  1      OPC=nop             
  nop                                 #  56    0xaed39  1      OPC=nop             
  nop                                 #  57    0xaed3a  1      OPC=nop             
  nop                                 #  58    0xaed3b  1      OPC=nop             
  nop                                 #  59    0xaed3c  1      OPC=nop             
  nop                                 #  60    0xaed3d  1      OPC=nop             
  nop                                 #  61    0xaed3e  1      OPC=nop             
  nop                                 #  62    0xaed3f  1      OPC=nop             
.L_aed40:                             #        0xaed40  0      OPC=<label>         
  movl %eax, %eax                     #  63    0xaed40  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rax,1)  #  64    0xaed42  9      OPC=movl_m32_imm32  
  nop                                 #  65    0xaed4b  1      OPC=nop             
  nop                                 #  66    0xaed4c  1      OPC=nop             
  nop                                 #  67    0xaed4d  1      OPC=nop             
  nop                                 #  68    0xaed4e  1      OPC=nop             
  nop                                 #  69    0xaed4f  1      OPC=nop             
  nop                                 #  70    0xaed50  1      OPC=nop             
  nop                                 #  71    0xaed51  1      OPC=nop             
  nop                                 #  72    0xaed52  1      OPC=nop             
  nop                                 #  73    0xaed53  1      OPC=nop             
  nop                                 #  74    0xaed54  1      OPC=nop             
  nop                                 #  75    0xaed55  1      OPC=nop             
  nop                                 #  76    0xaed56  1      OPC=nop             
  nop                                 #  77    0xaed57  1      OPC=nop             
  nop                                 #  78    0xaed58  1      OPC=nop             
  nop                                 #  79    0xaed59  1      OPC=nop             
  nop                                 #  80    0xaed5a  1      OPC=nop             
  nop                                 #  81    0xaed5b  1      OPC=nop             
  nop                                 #  82    0xaed5c  1      OPC=nop             
  nop                                 #  83    0xaed5d  1      OPC=nop             
  nop                                 #  84    0xaed5e  1      OPC=nop             
  nop                                 #  85    0xaed5f  1      OPC=nop             
.L_aed60:                             #        0xaed60  0      OPC=<label>         
  popq %rbx                           #  86    0xaed60  1      OPC=popq_r64_1      
  popq %r11                           #  87    0xaed61  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  88    0xaed63  7      OPC=andl_r32_imm32  
  nop                                 #  89    0xaed6a  1      OPC=nop             
  nop                                 #  90    0xaed6b  1      OPC=nop             
  nop                                 #  91    0xaed6c  1      OPC=nop             
  nop                                 #  92    0xaed6d  1      OPC=nop             
  addq %r15, %r11                     #  93    0xaed6e  3      OPC=addq_r64_r64    
  jmpq %r11                           #  94    0xaed71  3      OPC=jmpq_r64        
  nop                                 #  95    0xaed74  1      OPC=nop             
  nop                                 #  96    0xaed75  1      OPC=nop             
  nop                                 #  97    0xaed76  1      OPC=nop             
  nop                                 #  98    0xaed77  1      OPC=nop             
  nop                                 #  99    0xaed78  1      OPC=nop             
  nop                                 #  100   0xaed79  1      OPC=nop             
  nop                                 #  101   0xaed7a  1      OPC=nop             
  nop                                 #  102   0xaed7b  1      OPC=nop             
  nop                                 #  103   0xaed7c  1      OPC=nop             
  nop                                 #  104   0xaed7d  1      OPC=nop             
  nop                                 #  105   0xaed7e  1      OPC=nop             
  nop                                 #  106   0xaed7f  1      OPC=nop             
  nop                                 #  107   0xaed80  1      OPC=nop             
  nop                                 #  108   0xaed81  1      OPC=nop             
  nop                                 #  109   0xaed82  1      OPC=nop             
  nop                                 #  110   0xaed83  1      OPC=nop             
  nop                                 #  111   0xaed84  1      OPC=nop             
  nop                                 #  112   0xaed85  1      OPC=nop             
  nop                                 #  113   0xaed86  1      OPC=nop             
                                                                                   
.size _ZNSs12_M_leak_hardEv, .-_ZNSs12_M_leak_hardEv

