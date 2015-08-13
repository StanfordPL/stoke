  .text
  .globl _ZNSs12_M_leak_hardEv
  .type _ZNSs12_M_leak_hardEv, @function

#! file-offset 0xee9e0
#! rip-offset  0xae9e0
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSs12_M_leak_hardEv:               #        0xae9e0  0      OPC=<label>         
  pushq %rbx                          #  1     0xae9e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  2     0xae9e1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                     #  3     0xae9e3  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax            #  4     0xae9e5  4      OPC=movl_r32_m32    
  subl $0xc, %eax                     #  5     0xae9e9  3      OPC=subl_r32_imm8   
  cmpl $0x10073580, %eax              #  6     0xae9ec  5      OPC=cmpl_eax_imm32  
  je .L_aea60                         #  7     0xae9f1  2      OPC=je_label        
  movl %eax, %eax                     #  8     0xae9f3  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %edi         #  9     0xae9f5  5      OPC=movl_r32_m32    
  testl %edi, %edi                    #  10    0xae9fa  2      OPC=testl_r32_r32   
  nop                                 #  11    0xae9fc  1      OPC=nop             
  nop                                 #  12    0xae9fd  1      OPC=nop             
  nop                                 #  13    0xae9fe  1      OPC=nop             
  nop                                 #  14    0xae9ff  1      OPC=nop             
  jle .L_aea40                        #  15    0xaea00  2      OPC=jle_label       
  xorl %ecx, %ecx                     #  16    0xaea02  2      OPC=xorl_r32_r32    
  xorl %edx, %edx                     #  17    0xaea04  2      OPC=xorl_r32_r32    
  xorl %esi, %esi                     #  18    0xaea06  2      OPC=xorl_r32_r32    
  movl %ebx, %edi                     #  19    0xaea08  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                      #  20    0xaea0a  2      OPC=xchgw_ax_r16    
  nop                                 #  21    0xaea0c  1      OPC=nop             
  nop                                 #  22    0xaea0d  1      OPC=nop             
  nop                                 #  23    0xaea0e  1      OPC=nop             
  nop                                 #  24    0xaea0f  1      OPC=nop             
  nop                                 #  25    0xaea10  1      OPC=nop             
  nop                                 #  26    0xaea11  1      OPC=nop             
  nop                                 #  27    0xaea12  1      OPC=nop             
  nop                                 #  28    0xaea13  1      OPC=nop             
  nop                                 #  29    0xaea14  1      OPC=nop             
  nop                                 #  30    0xaea15  1      OPC=nop             
  nop                                 #  31    0xaea16  1      OPC=nop             
  nop                                 #  32    0xaea17  1      OPC=nop             
  nop                                 #  33    0xaea18  1      OPC=nop             
  nop                                 #  34    0xaea19  1      OPC=nop             
  nop                                 #  35    0xaea1a  1      OPC=nop             
  callq ._ZNSs9_M_mutateEjjj          #  36    0xaea1b  5      OPC=callq_label     
  movl %ebx, %ebx                     #  37    0xaea20  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax            #  38    0xaea22  4      OPC=movl_r32_m32    
  subl $0xc, %eax                     #  39    0xaea26  3      OPC=subl_r32_imm8   
  nop                                 #  40    0xaea29  1      OPC=nop             
  nop                                 #  41    0xaea2a  1      OPC=nop             
  nop                                 #  42    0xaea2b  1      OPC=nop             
  nop                                 #  43    0xaea2c  1      OPC=nop             
  nop                                 #  44    0xaea2d  1      OPC=nop             
  nop                                 #  45    0xaea2e  1      OPC=nop             
  nop                                 #  46    0xaea2f  1      OPC=nop             
  nop                                 #  47    0xaea30  1      OPC=nop             
  nop                                 #  48    0xaea31  1      OPC=nop             
  nop                                 #  49    0xaea32  1      OPC=nop             
  nop                                 #  50    0xaea33  1      OPC=nop             
  nop                                 #  51    0xaea34  1      OPC=nop             
  nop                                 #  52    0xaea35  1      OPC=nop             
  nop                                 #  53    0xaea36  1      OPC=nop             
  nop                                 #  54    0xaea37  1      OPC=nop             
  nop                                 #  55    0xaea38  1      OPC=nop             
  nop                                 #  56    0xaea39  1      OPC=nop             
  nop                                 #  57    0xaea3a  1      OPC=nop             
  nop                                 #  58    0xaea3b  1      OPC=nop             
  nop                                 #  59    0xaea3c  1      OPC=nop             
  nop                                 #  60    0xaea3d  1      OPC=nop             
  nop                                 #  61    0xaea3e  1      OPC=nop             
  nop                                 #  62    0xaea3f  1      OPC=nop             
.L_aea40:                             #        0xaea40  0      OPC=<label>         
  movl %eax, %eax                     #  63    0xaea40  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rax,1)  #  64    0xaea42  9      OPC=movl_m32_imm32  
  nop                                 #  65    0xaea4b  1      OPC=nop             
  nop                                 #  66    0xaea4c  1      OPC=nop             
  nop                                 #  67    0xaea4d  1      OPC=nop             
  nop                                 #  68    0xaea4e  1      OPC=nop             
  nop                                 #  69    0xaea4f  1      OPC=nop             
  nop                                 #  70    0xaea50  1      OPC=nop             
  nop                                 #  71    0xaea51  1      OPC=nop             
  nop                                 #  72    0xaea52  1      OPC=nop             
  nop                                 #  73    0xaea53  1      OPC=nop             
  nop                                 #  74    0xaea54  1      OPC=nop             
  nop                                 #  75    0xaea55  1      OPC=nop             
  nop                                 #  76    0xaea56  1      OPC=nop             
  nop                                 #  77    0xaea57  1      OPC=nop             
  nop                                 #  78    0xaea58  1      OPC=nop             
  nop                                 #  79    0xaea59  1      OPC=nop             
  nop                                 #  80    0xaea5a  1      OPC=nop             
  nop                                 #  81    0xaea5b  1      OPC=nop             
  nop                                 #  82    0xaea5c  1      OPC=nop             
  nop                                 #  83    0xaea5d  1      OPC=nop             
  nop                                 #  84    0xaea5e  1      OPC=nop             
  nop                                 #  85    0xaea5f  1      OPC=nop             
.L_aea60:                             #        0xaea60  0      OPC=<label>         
  popq %rbx                           #  86    0xaea60  1      OPC=popq_r64_1      
  popq %r11                           #  87    0xaea61  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  88    0xaea63  7      OPC=andl_r32_imm32  
  nop                                 #  89    0xaea6a  1      OPC=nop             
  nop                                 #  90    0xaea6b  1      OPC=nop             
  nop                                 #  91    0xaea6c  1      OPC=nop             
  nop                                 #  92    0xaea6d  1      OPC=nop             
  addq %r15, %r11                     #  93    0xaea6e  3      OPC=addq_r64_r64    
  jmpq %r11                           #  94    0xaea71  3      OPC=jmpq_r64        
  nop                                 #  95    0xaea74  1      OPC=nop             
  nop                                 #  96    0xaea75  1      OPC=nop             
  nop                                 #  97    0xaea76  1      OPC=nop             
  nop                                 #  98    0xaea77  1      OPC=nop             
  nop                                 #  99    0xaea78  1      OPC=nop             
  nop                                 #  100   0xaea79  1      OPC=nop             
  nop                                 #  101   0xaea7a  1      OPC=nop             
  nop                                 #  102   0xaea7b  1      OPC=nop             
  nop                                 #  103   0xaea7c  1      OPC=nop             
  nop                                 #  104   0xaea7d  1      OPC=nop             
  nop                                 #  105   0xaea7e  1      OPC=nop             
  nop                                 #  106   0xaea7f  1      OPC=nop             
  nop                                 #  107   0xaea80  1      OPC=nop             
  nop                                 #  108   0xaea81  1      OPC=nop             
  nop                                 #  109   0xaea82  1      OPC=nop             
  nop                                 #  110   0xaea83  1      OPC=nop             
  nop                                 #  111   0xaea84  1      OPC=nop             
  nop                                 #  112   0xaea85  1      OPC=nop             
  nop                                 #  113   0xaea86  1      OPC=nop             
                                                                                   
.size _ZNSs12_M_leak_hardEv, .-_ZNSs12_M_leak_hardEv

