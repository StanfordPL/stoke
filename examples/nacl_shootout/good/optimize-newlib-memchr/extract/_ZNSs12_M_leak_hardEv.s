  .text
  .globl _ZNSs12_M_leak_hardEv
  .type _ZNSs12_M_leak_hardEv, @function

#! file-offset 0xef400
#! rip-offset  0xaf400
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSs12_M_leak_hardEv:               #        0xaf400  0      OPC=<label>         
  pushq %rbx                          #  1     0xaf400  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  2     0xaf401  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                     #  3     0xaf403  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax            #  4     0xaf405  4      OPC=movl_r32_m32    
  subl $0xc, %eax                     #  5     0xaf409  3      OPC=subl_r32_imm8   
  cmpl $0x10073580, %eax              #  6     0xaf40c  5      OPC=cmpl_eax_imm32  
  je .L_af480                         #  7     0xaf411  2      OPC=je_label        
  movl %eax, %eax                     #  8     0xaf413  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %edi         #  9     0xaf415  5      OPC=movl_r32_m32    
  testl %edi, %edi                    #  10    0xaf41a  2      OPC=testl_r32_r32   
  nop                                 #  11    0xaf41c  1      OPC=nop             
  nop                                 #  12    0xaf41d  1      OPC=nop             
  nop                                 #  13    0xaf41e  1      OPC=nop             
  nop                                 #  14    0xaf41f  1      OPC=nop             
  jle .L_af460                        #  15    0xaf420  2      OPC=jle_label       
  xorl %ecx, %ecx                     #  16    0xaf422  2      OPC=xorl_r32_r32    
  xorl %edx, %edx                     #  17    0xaf424  2      OPC=xorl_r32_r32    
  xorl %esi, %esi                     #  18    0xaf426  2      OPC=xorl_r32_r32    
  movl %ebx, %edi                     #  19    0xaf428  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                      #  20    0xaf42a  2      OPC=xchgw_ax_r16    
  nop                                 #  21    0xaf42c  1      OPC=nop             
  nop                                 #  22    0xaf42d  1      OPC=nop             
  nop                                 #  23    0xaf42e  1      OPC=nop             
  nop                                 #  24    0xaf42f  1      OPC=nop             
  nop                                 #  25    0xaf430  1      OPC=nop             
  nop                                 #  26    0xaf431  1      OPC=nop             
  nop                                 #  27    0xaf432  1      OPC=nop             
  nop                                 #  28    0xaf433  1      OPC=nop             
  nop                                 #  29    0xaf434  1      OPC=nop             
  nop                                 #  30    0xaf435  1      OPC=nop             
  nop                                 #  31    0xaf436  1      OPC=nop             
  nop                                 #  32    0xaf437  1      OPC=nop             
  nop                                 #  33    0xaf438  1      OPC=nop             
  nop                                 #  34    0xaf439  1      OPC=nop             
  nop                                 #  35    0xaf43a  1      OPC=nop             
  callq ._ZNSs9_M_mutateEjjj          #  36    0xaf43b  5      OPC=callq_label     
  movl %ebx, %ebx                     #  37    0xaf440  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax            #  38    0xaf442  4      OPC=movl_r32_m32    
  subl $0xc, %eax                     #  39    0xaf446  3      OPC=subl_r32_imm8   
  nop                                 #  40    0xaf449  1      OPC=nop             
  nop                                 #  41    0xaf44a  1      OPC=nop             
  nop                                 #  42    0xaf44b  1      OPC=nop             
  nop                                 #  43    0xaf44c  1      OPC=nop             
  nop                                 #  44    0xaf44d  1      OPC=nop             
  nop                                 #  45    0xaf44e  1      OPC=nop             
  nop                                 #  46    0xaf44f  1      OPC=nop             
  nop                                 #  47    0xaf450  1      OPC=nop             
  nop                                 #  48    0xaf451  1      OPC=nop             
  nop                                 #  49    0xaf452  1      OPC=nop             
  nop                                 #  50    0xaf453  1      OPC=nop             
  nop                                 #  51    0xaf454  1      OPC=nop             
  nop                                 #  52    0xaf455  1      OPC=nop             
  nop                                 #  53    0xaf456  1      OPC=nop             
  nop                                 #  54    0xaf457  1      OPC=nop             
  nop                                 #  55    0xaf458  1      OPC=nop             
  nop                                 #  56    0xaf459  1      OPC=nop             
  nop                                 #  57    0xaf45a  1      OPC=nop             
  nop                                 #  58    0xaf45b  1      OPC=nop             
  nop                                 #  59    0xaf45c  1      OPC=nop             
  nop                                 #  60    0xaf45d  1      OPC=nop             
  nop                                 #  61    0xaf45e  1      OPC=nop             
  nop                                 #  62    0xaf45f  1      OPC=nop             
.L_af460:                             #        0xaf460  0      OPC=<label>         
  movl %eax, %eax                     #  63    0xaf460  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rax,1)  #  64    0xaf462  9      OPC=movl_m32_imm32  
  nop                                 #  65    0xaf46b  1      OPC=nop             
  nop                                 #  66    0xaf46c  1      OPC=nop             
  nop                                 #  67    0xaf46d  1      OPC=nop             
  nop                                 #  68    0xaf46e  1      OPC=nop             
  nop                                 #  69    0xaf46f  1      OPC=nop             
  nop                                 #  70    0xaf470  1      OPC=nop             
  nop                                 #  71    0xaf471  1      OPC=nop             
  nop                                 #  72    0xaf472  1      OPC=nop             
  nop                                 #  73    0xaf473  1      OPC=nop             
  nop                                 #  74    0xaf474  1      OPC=nop             
  nop                                 #  75    0xaf475  1      OPC=nop             
  nop                                 #  76    0xaf476  1      OPC=nop             
  nop                                 #  77    0xaf477  1      OPC=nop             
  nop                                 #  78    0xaf478  1      OPC=nop             
  nop                                 #  79    0xaf479  1      OPC=nop             
  nop                                 #  80    0xaf47a  1      OPC=nop             
  nop                                 #  81    0xaf47b  1      OPC=nop             
  nop                                 #  82    0xaf47c  1      OPC=nop             
  nop                                 #  83    0xaf47d  1      OPC=nop             
  nop                                 #  84    0xaf47e  1      OPC=nop             
  nop                                 #  85    0xaf47f  1      OPC=nop             
.L_af480:                             #        0xaf480  0      OPC=<label>         
  popq %rbx                           #  86    0xaf480  1      OPC=popq_r64_1      
  popq %r11                           #  87    0xaf481  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  88    0xaf483  7      OPC=andl_r32_imm32  
  nop                                 #  89    0xaf48a  1      OPC=nop             
  nop                                 #  90    0xaf48b  1      OPC=nop             
  nop                                 #  91    0xaf48c  1      OPC=nop             
  nop                                 #  92    0xaf48d  1      OPC=nop             
  addq %r15, %r11                     #  93    0xaf48e  3      OPC=addq_r64_r64    
  jmpq %r11                           #  94    0xaf491  3      OPC=jmpq_r64        
  nop                                 #  95    0xaf494  1      OPC=nop             
  nop                                 #  96    0xaf495  1      OPC=nop             
  nop                                 #  97    0xaf496  1      OPC=nop             
  nop                                 #  98    0xaf497  1      OPC=nop             
  nop                                 #  99    0xaf498  1      OPC=nop             
  nop                                 #  100   0xaf499  1      OPC=nop             
  nop                                 #  101   0xaf49a  1      OPC=nop             
  nop                                 #  102   0xaf49b  1      OPC=nop             
  nop                                 #  103   0xaf49c  1      OPC=nop             
  nop                                 #  104   0xaf49d  1      OPC=nop             
  nop                                 #  105   0xaf49e  1      OPC=nop             
  nop                                 #  106   0xaf49f  1      OPC=nop             
  nop                                 #  107   0xaf4a0  1      OPC=nop             
  nop                                 #  108   0xaf4a1  1      OPC=nop             
  nop                                 #  109   0xaf4a2  1      OPC=nop             
  nop                                 #  110   0xaf4a3  1      OPC=nop             
  nop                                 #  111   0xaf4a4  1      OPC=nop             
  nop                                 #  112   0xaf4a5  1      OPC=nop             
  nop                                 #  113   0xaf4a6  1      OPC=nop             
                                                                                   
.size _ZNSs12_M_leak_hardEv, .-_ZNSs12_M_leak_hardEv

