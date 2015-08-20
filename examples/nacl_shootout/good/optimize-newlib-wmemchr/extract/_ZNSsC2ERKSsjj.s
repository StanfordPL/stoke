  .text
  .globl _ZNSsC2ERKSsjj
  .type _ZNSsC2ERKSsjj, @function

#! file-offset 0xedd60
#! rip-offset  0xadd60
#! capacity    160 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC2ERKSsjj:                                                          #        0xadd60  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xadd60  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                         #  2     0xadd61  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                         #  3     0xadd63  2      OPC=movl_r32_r32    
  subl $0x20, %esp                                                        #  4     0xadd65  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  5     0xadd68  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                         #  6     0xadd6b  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                #  7     0xadd6d  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                   #  8     0xadd71  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                         #  9     0xadd74  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                #  10    0xadd76  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                         #  11    0xadd7a  2      OPC=cmpl_r32_r32    
  nop                                                                     #  12    0xadd7c  1      OPC=nop             
  nop                                                                     #  13    0xadd7d  1      OPC=nop             
  nop                                                                     #  14    0xadd7e  1      OPC=nop             
  nop                                                                     #  15    0xadd7f  1      OPC=nop             
  ja .L_addc0                                                             #  16    0xadd80  2      OPC=ja_label        
  subl %edx, %esi                                                         #  17    0xadd82  2      OPC=subl_r32_r32    
  leal 0x1f(%rsp), %eax                                                   #  18    0xadd84  4      OPC=leal_r32_m16    
  movb $0x0, (%rsp)                                                       #  19    0xadd88  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                         #  20    0xadd8c  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                       #  21    0xadd8e  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                         #  22    0xadd91  2      OPC=addl_r32_r32    
  addl %edi, %esi                                                         #  23    0xadd93  2      OPC=addl_r32_r32    
  leal (%rdx,%rdi,1), %edi                                                #  24    0xadd95  3      OPC=leal_r32_m16    
  movl %eax, %edx                                                         #  25    0xadd98  2      OPC=movl_r32_r32    
  nop                                                                     #  26    0xadd9a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  27    0xadd9b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  28    0xadda0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  29    0xadda2  4      OPC=movl_m32_r32    
  addl $0x20, %esp                                                        #  30    0xadda6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  31    0xadda9  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  32    0xaddac  1      OPC=popq_r64_1      
  popq %r11                                                               #  33    0xaddad  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  34    0xaddaf  7      OPC=andl_r32_imm32  
  nop                                                                     #  35    0xaddb6  1      OPC=nop             
  nop                                                                     #  36    0xaddb7  1      OPC=nop             
  nop                                                                     #  37    0xaddb8  1      OPC=nop             
  nop                                                                     #  38    0xaddb9  1      OPC=nop             
  addq %r15, %r11                                                         #  39    0xaddba  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  40    0xaddbd  3      OPC=jmpq_r64        
  nop                                                                     #  41    0xaddc0  1      OPC=nop             
  nop                                                                     #  42    0xaddc1  1      OPC=nop             
  nop                                                                     #  43    0xaddc2  1      OPC=nop             
  nop                                                                     #  44    0xaddc3  1      OPC=nop             
  nop                                                                     #  45    0xaddc4  1      OPC=nop             
  nop                                                                     #  46    0xaddc5  1      OPC=nop             
  nop                                                                     #  47    0xaddc6  1      OPC=nop             
.L_addc0:                                                                 #        0xaddc7  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                  #  48    0xaddc7  5      OPC=movl_r32_imm32  
  nop                                                                     #  49    0xaddcc  1      OPC=nop             
  nop                                                                     #  50    0xaddcd  1      OPC=nop             
  nop                                                                     #  51    0xaddce  1      OPC=nop             
  nop                                                                     #  52    0xaddcf  1      OPC=nop             
  nop                                                                     #  53    0xaddd0  1      OPC=nop             
  nop                                                                     #  54    0xaddd1  1      OPC=nop             
  nop                                                                     #  55    0xaddd2  1      OPC=nop             
  nop                                                                     #  56    0xaddd3  1      OPC=nop             
  nop                                                                     #  57    0xaddd4  1      OPC=nop             
  nop                                                                     #  58    0xaddd5  1      OPC=nop             
  nop                                                                     #  59    0xaddd6  1      OPC=nop             
  nop                                                                     #  60    0xaddd7  1      OPC=nop             
  nop                                                                     #  61    0xaddd8  1      OPC=nop             
  nop                                                                     #  62    0xaddd9  1      OPC=nop             
  nop                                                                     #  63    0xaddda  1      OPC=nop             
  nop                                                                     #  64    0xadddb  1      OPC=nop             
  nop                                                                     #  65    0xadddc  1      OPC=nop             
  nop                                                                     #  66    0xadddd  1      OPC=nop             
  nop                                                                     #  67    0xaddde  1      OPC=nop             
  nop                                                                     #  68    0xadddf  1      OPC=nop             
  nop                                                                     #  69    0xadde0  1      OPC=nop             
  nop                                                                     #  70    0xadde1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                    #  71    0xadde2  5      OPC=callq_label     
  movl %eax, %edi                                                         #  72    0xadde7  2      OPC=movl_r32_r32    
  nop                                                                     #  73    0xadde9  1      OPC=nop             
  nop                                                                     #  74    0xaddea  1      OPC=nop             
  nop                                                                     #  75    0xaddeb  1      OPC=nop             
  nop                                                                     #  76    0xaddec  1      OPC=nop             
  nop                                                                     #  77    0xadded  1      OPC=nop             
  nop                                                                     #  78    0xaddee  1      OPC=nop             
  nop                                                                     #  79    0xaddef  1      OPC=nop             
  nop                                                                     #  80    0xaddf0  1      OPC=nop             
  nop                                                                     #  81    0xaddf1  1      OPC=nop             
  nop                                                                     #  82    0xaddf2  1      OPC=nop             
  nop                                                                     #  83    0xaddf3  1      OPC=nop             
  nop                                                                     #  84    0xaddf4  1      OPC=nop             
  nop                                                                     #  85    0xaddf5  1      OPC=nop             
  nop                                                                     #  86    0xaddf6  1      OPC=nop             
  nop                                                                     #  87    0xaddf7  1      OPC=nop             
  nop                                                                     #  88    0xaddf8  1      OPC=nop             
  nop                                                                     #  89    0xaddf9  1      OPC=nop             
  nop                                                                     #  90    0xaddfa  1      OPC=nop             
  nop                                                                     #  91    0xaddfb  1      OPC=nop             
  nop                                                                     #  92    0xaddfc  1      OPC=nop             
  nop                                                                     #  93    0xaddfd  1      OPC=nop             
  nop                                                                     #  94    0xaddfe  1      OPC=nop             
  nop                                                                     #  95    0xaddff  1      OPC=nop             
  nop                                                                     #  96    0xade00  1      OPC=nop             
  nop                                                                     #  97    0xade01  1      OPC=nop             
  callq ._Unwind_Resume                                                   #  98    0xade02  5      OPC=callq_label     
                                                                                                                       
.size _ZNSsC2ERKSsjj, .-_ZNSsC2ERKSsjj

