  .text
  .globl _ZNSsC2ERKSsjj
  .type _ZNSsC2ERKSsjj, @function

#! file-offset 0xeda60
#! rip-offset  0xada60
#! capacity    160 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC2ERKSsjj:                                                          #        0xada60  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xada60  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                         #  2     0xada61  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                         #  3     0xada63  2      OPC=movl_r32_r32    
  subl $0x20, %esp                                                        #  4     0xada65  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  5     0xada68  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                         #  6     0xada6b  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                #  7     0xada6d  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                   #  8     0xada71  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                         #  9     0xada74  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                #  10    0xada76  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                         #  11    0xada7a  2      OPC=cmpl_r32_r32    
  nop                                                                     #  12    0xada7c  1      OPC=nop             
  nop                                                                     #  13    0xada7d  1      OPC=nop             
  nop                                                                     #  14    0xada7e  1      OPC=nop             
  nop                                                                     #  15    0xada7f  1      OPC=nop             
  ja .L_adac0                                                             #  16    0xada80  2      OPC=ja_label        
  subl %edx, %esi                                                         #  17    0xada82  2      OPC=subl_r32_r32    
  leal 0x1f(%rsp), %eax                                                   #  18    0xada84  4      OPC=leal_r32_m16    
  movb $0x0, (%rsp)                                                       #  19    0xada88  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                         #  20    0xada8c  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                       #  21    0xada8e  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                         #  22    0xada91  2      OPC=addl_r32_r32    
  addl %edi, %esi                                                         #  23    0xada93  2      OPC=addl_r32_r32    
  leal (%rdx,%rdi,1), %edi                                                #  24    0xada95  3      OPC=leal_r32_m16    
  movl %eax, %edx                                                         #  25    0xada98  2      OPC=movl_r32_r32    
  nop                                                                     #  26    0xada9a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  27    0xada9b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  28    0xadaa0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  29    0xadaa2  4      OPC=movl_m32_r32    
  addl $0x20, %esp                                                        #  30    0xadaa6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  31    0xadaa9  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  32    0xadaac  1      OPC=popq_r64_1      
  popq %r11                                                               #  33    0xadaad  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  34    0xadaaf  7      OPC=andl_r32_imm32  
  nop                                                                     #  35    0xadab6  1      OPC=nop             
  nop                                                                     #  36    0xadab7  1      OPC=nop             
  nop                                                                     #  37    0xadab8  1      OPC=nop             
  nop                                                                     #  38    0xadab9  1      OPC=nop             
  addq %r15, %r11                                                         #  39    0xadaba  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  40    0xadabd  3      OPC=jmpq_r64        
  nop                                                                     #  41    0xadac0  1      OPC=nop             
  nop                                                                     #  42    0xadac1  1      OPC=nop             
  nop                                                                     #  43    0xadac2  1      OPC=nop             
  nop                                                                     #  44    0xadac3  1      OPC=nop             
  nop                                                                     #  45    0xadac4  1      OPC=nop             
  nop                                                                     #  46    0xadac5  1      OPC=nop             
  nop                                                                     #  47    0xadac6  1      OPC=nop             
.L_adac0:                                                                 #        0xadac7  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                  #  48    0xadac7  5      OPC=movl_r32_imm32  
  nop                                                                     #  49    0xadacc  1      OPC=nop             
  nop                                                                     #  50    0xadacd  1      OPC=nop             
  nop                                                                     #  51    0xadace  1      OPC=nop             
  nop                                                                     #  52    0xadacf  1      OPC=nop             
  nop                                                                     #  53    0xadad0  1      OPC=nop             
  nop                                                                     #  54    0xadad1  1      OPC=nop             
  nop                                                                     #  55    0xadad2  1      OPC=nop             
  nop                                                                     #  56    0xadad3  1      OPC=nop             
  nop                                                                     #  57    0xadad4  1      OPC=nop             
  nop                                                                     #  58    0xadad5  1      OPC=nop             
  nop                                                                     #  59    0xadad6  1      OPC=nop             
  nop                                                                     #  60    0xadad7  1      OPC=nop             
  nop                                                                     #  61    0xadad8  1      OPC=nop             
  nop                                                                     #  62    0xadad9  1      OPC=nop             
  nop                                                                     #  63    0xadada  1      OPC=nop             
  nop                                                                     #  64    0xadadb  1      OPC=nop             
  nop                                                                     #  65    0xadadc  1      OPC=nop             
  nop                                                                     #  66    0xadadd  1      OPC=nop             
  nop                                                                     #  67    0xadade  1      OPC=nop             
  nop                                                                     #  68    0xadadf  1      OPC=nop             
  nop                                                                     #  69    0xadae0  1      OPC=nop             
  nop                                                                     #  70    0xadae1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                    #  71    0xadae2  5      OPC=callq_label     
  movl %eax, %edi                                                         #  72    0xadae7  2      OPC=movl_r32_r32    
  nop                                                                     #  73    0xadae9  1      OPC=nop             
  nop                                                                     #  74    0xadaea  1      OPC=nop             
  nop                                                                     #  75    0xadaeb  1      OPC=nop             
  nop                                                                     #  76    0xadaec  1      OPC=nop             
  nop                                                                     #  77    0xadaed  1      OPC=nop             
  nop                                                                     #  78    0xadaee  1      OPC=nop             
  nop                                                                     #  79    0xadaef  1      OPC=nop             
  nop                                                                     #  80    0xadaf0  1      OPC=nop             
  nop                                                                     #  81    0xadaf1  1      OPC=nop             
  nop                                                                     #  82    0xadaf2  1      OPC=nop             
  nop                                                                     #  83    0xadaf3  1      OPC=nop             
  nop                                                                     #  84    0xadaf4  1      OPC=nop             
  nop                                                                     #  85    0xadaf5  1      OPC=nop             
  nop                                                                     #  86    0xadaf6  1      OPC=nop             
  nop                                                                     #  87    0xadaf7  1      OPC=nop             
  nop                                                                     #  88    0xadaf8  1      OPC=nop             
  nop                                                                     #  89    0xadaf9  1      OPC=nop             
  nop                                                                     #  90    0xadafa  1      OPC=nop             
  nop                                                                     #  91    0xadafb  1      OPC=nop             
  nop                                                                     #  92    0xadafc  1      OPC=nop             
  nop                                                                     #  93    0xadafd  1      OPC=nop             
  nop                                                                     #  94    0xadafe  1      OPC=nop             
  nop                                                                     #  95    0xadaff  1      OPC=nop             
  nop                                                                     #  96    0xadb00  1      OPC=nop             
  nop                                                                     #  97    0xadb01  1      OPC=nop             
  callq ._Unwind_Resume                                                   #  98    0xadb02  5      OPC=callq_label     
                                                                                                                       
.size _ZNSsC2ERKSsjj, .-_ZNSsC2ERKSsjj

