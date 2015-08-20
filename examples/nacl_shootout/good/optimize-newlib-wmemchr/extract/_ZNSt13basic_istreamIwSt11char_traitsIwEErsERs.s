  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEErsERs
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEErsERs, @function

#! file-offset 0xab1a0
#! rip-offset  0x6b1a0
#! capacity    192 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEErsERs:                           #        0x6b1a0  0      OPC=<label>         
  pushq %r12                                                               #  1     0x6b1a0  2      OPC=pushq_r64_1     
  movl %esi, %r12d                                                         #  2     0x6b1a2  3      OPC=movl_r32_r32    
  pushq %rbx                                                               #  3     0x6b1a5  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                          #  4     0x6b1a6  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                          #  5     0x6b1a8  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                                         #  6     0x6b1aa  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                          #  7     0x6b1ad  3      OPC=addq_r64_r64    
  leal 0xc(%rsp), %esi                                                     #  8     0x6b1b0  4      OPC=leal_r32_m16    
  nop                                                                      #  9     0x6b1b4  1      OPC=nop             
  nop                                                                      #  10    0x6b1b5  1      OPC=nop             
  nop                                                                      #  11    0x6b1b6  1      OPC=nop             
  nop                                                                      #  12    0x6b1b7  1      OPC=nop             
  nop                                                                      #  13    0x6b1b8  1      OPC=nop             
  nop                                                                      #  14    0x6b1b9  1      OPC=nop             
  nop                                                                      #  15    0x6b1ba  1      OPC=nop             
  callq ._ZNSt13basic_istreamIwSt11char_traitsIwEE10_M_extractIlEERS2_RT_  #  16    0x6b1bb  5      OPC=callq_label     
  movl %ebx, %ebx                                                          #  17    0x6b1c0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                 #  18    0x6b1c2  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                          #  19    0x6b1c6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                          #  20    0x6b1c9  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                                 #  21    0x6b1cb  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                          #  22    0x6b1cf  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                          #  23    0x6b1d1  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                             #  24    0x6b1d3  5      OPC=movl_r32_m32    
  testb $0x5, %sil                                                         #  25    0x6b1d8  4      OPC=testb_r8_imm8   
  nop                                                                      #  26    0x6b1dc  1      OPC=nop             
  nop                                                                      #  27    0x6b1dd  1      OPC=nop             
  nop                                                                      #  28    0x6b1de  1      OPC=nop             
  nop                                                                      #  29    0x6b1df  1      OPC=nop             
  jne .L_6b200                                                             #  30    0x6b1e0  2      OPC=jne_label       
  movl 0xc(%rsp), %eax                                                     #  31    0x6b1e2  4      OPC=movl_r32_m32    
  leal 0x8000(%rax), %edx                                                  #  32    0x6b1e6  6      OPC=leal_r32_m16    
  cmpl $0xffff, %edx                                                       #  33    0x6b1ec  6      OPC=cmpl_r32_imm32  
  ja .L_6b220                                                              #  34    0x6b1f2  2      OPC=ja_label        
  movl %r12d, %r12d                                                        #  35    0x6b1f4  3      OPC=movl_r32_r32    
  movw %ax, (%r15,%r12,1)                                                  #  36    0x6b1f7  5      OPC=movw_m16_r16    
  nop                                                                      #  37    0x6b1fc  1      OPC=nop             
  nop                                                                      #  38    0x6b1fd  1      OPC=nop             
  nop                                                                      #  39    0x6b1fe  1      OPC=nop             
  nop                                                                      #  40    0x6b1ff  1      OPC=nop             
.L_6b200:                                                                  #        0x6b200  0      OPC=<label>         
  addl $0x18, %esp                                                         #  41    0x6b200  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                          #  42    0x6b203  3      OPC=addq_r64_r64    
  movl %ebx, %eax                                                          #  43    0x6b206  2      OPC=movl_r32_r32    
  popq %rbx                                                                #  44    0x6b208  1      OPC=popq_r64_1      
  popq %r12                                                                #  45    0x6b209  2      OPC=popq_r64_1      
  popq %r11                                                                #  46    0x6b20b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                  #  47    0x6b20d  7      OPC=andl_r32_imm32  
  nop                                                                      #  48    0x6b214  1      OPC=nop             
  nop                                                                      #  49    0x6b215  1      OPC=nop             
  nop                                                                      #  50    0x6b216  1      OPC=nop             
  nop                                                                      #  51    0x6b217  1      OPC=nop             
  addq %r15, %r11                                                          #  52    0x6b218  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  53    0x6b21b  3      OPC=jmpq_r64        
  nop                                                                      #  54    0x6b21e  1      OPC=nop             
  nop                                                                      #  55    0x6b21f  1      OPC=nop             
  nop                                                                      #  56    0x6b220  1      OPC=nop             
  nop                                                                      #  57    0x6b221  1      OPC=nop             
  nop                                                                      #  58    0x6b222  1      OPC=nop             
  nop                                                                      #  59    0x6b223  1      OPC=nop             
  nop                                                                      #  60    0x6b224  1      OPC=nop             
  nop                                                                      #  61    0x6b225  1      OPC=nop             
  nop                                                                      #  62    0x6b226  1      OPC=nop             
.L_6b220:                                                                  #        0x6b227  0      OPC=<label>         
  orl $0x4, %esi                                                           #  63    0x6b227  3      OPC=orl_r32_imm8    
  nop                                                                      #  64    0x6b22a  1      OPC=nop             
  nop                                                                      #  65    0x6b22b  1      OPC=nop             
  nop                                                                      #  66    0x6b22c  1      OPC=nop             
  nop                                                                      #  67    0x6b22d  1      OPC=nop             
  nop                                                                      #  68    0x6b22e  1      OPC=nop             
  nop                                                                      #  69    0x6b22f  1      OPC=nop             
  nop                                                                      #  70    0x6b230  1      OPC=nop             
  nop                                                                      #  71    0x6b231  1      OPC=nop             
  nop                                                                      #  72    0x6b232  1      OPC=nop             
  nop                                                                      #  73    0x6b233  1      OPC=nop             
  nop                                                                      #  74    0x6b234  1      OPC=nop             
  nop                                                                      #  75    0x6b235  1      OPC=nop             
  nop                                                                      #  76    0x6b236  1      OPC=nop             
  nop                                                                      #  77    0x6b237  1      OPC=nop             
  nop                                                                      #  78    0x6b238  1      OPC=nop             
  nop                                                                      #  79    0x6b239  1      OPC=nop             
  nop                                                                      #  80    0x6b23a  1      OPC=nop             
  nop                                                                      #  81    0x6b23b  1      OPC=nop             
  nop                                                                      #  82    0x6b23c  1      OPC=nop             
  nop                                                                      #  83    0x6b23d  1      OPC=nop             
  nop                                                                      #  84    0x6b23e  1      OPC=nop             
  nop                                                                      #  85    0x6b23f  1      OPC=nop             
  nop                                                                      #  86    0x6b240  1      OPC=nop             
  nop                                                                      #  87    0x6b241  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate       #  88    0x6b242  5      OPC=callq_label     
  addl $0x18, %esp                                                         #  89    0x6b247  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                          #  90    0x6b24a  3      OPC=addq_r64_r64    
  movl %ebx, %eax                                                          #  91    0x6b24d  2      OPC=movl_r32_r32    
  popq %rbx                                                                #  92    0x6b24f  1      OPC=popq_r64_1      
  popq %r12                                                                #  93    0x6b250  2      OPC=popq_r64_1      
  popq %r11                                                                #  94    0x6b252  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                  #  95    0x6b254  7      OPC=andl_r32_imm32  
  nop                                                                      #  96    0x6b25b  1      OPC=nop             
  nop                                                                      #  97    0x6b25c  1      OPC=nop             
  nop                                                                      #  98    0x6b25d  1      OPC=nop             
  nop                                                                      #  99    0x6b25e  1      OPC=nop             
  addq %r15, %r11                                                          #  100   0x6b25f  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  101   0x6b262  3      OPC=jmpq_r64        
  nop                                                                      #  102   0x6b265  1      OPC=nop             
  nop                                                                      #  103   0x6b266  1      OPC=nop             
  nop                                                                      #  104   0x6b267  1      OPC=nop             
  nop                                                                      #  105   0x6b268  1      OPC=nop             
  nop                                                                      #  106   0x6b269  1      OPC=nop             
  nop                                                                      #  107   0x6b26a  1      OPC=nop             
  nop                                                                      #  108   0x6b26b  1      OPC=nop             
  nop                                                                      #  109   0x6b26c  1      OPC=nop             
  nop                                                                      #  110   0x6b26d  1      OPC=nop             
                                                                                                                        
.size _ZNSt13basic_istreamIwSt11char_traitsIwEErsERs, .-_ZNSt13basic_istreamIwSt11char_traitsIwEErsERs

