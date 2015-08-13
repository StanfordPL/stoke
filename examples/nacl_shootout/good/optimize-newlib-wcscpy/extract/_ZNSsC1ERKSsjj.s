  .text
  .globl _ZNSsC1ERKSsjj
  .type _ZNSsC1ERKSsjj, @function

#! file-offset 0xed960
#! rip-offset  0xad960
#! capacity    160 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC1ERKSsjj:                                                          #        0xad960  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xad960  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                         #  2     0xad961  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                         #  3     0xad963  2      OPC=movl_r32_r32    
  subl $0x20, %esp                                                        #  4     0xad965  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  5     0xad968  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                         #  6     0xad96b  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                #  7     0xad96d  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                   #  8     0xad971  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                         #  9     0xad974  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                #  10    0xad976  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                         #  11    0xad97a  2      OPC=cmpl_r32_r32    
  nop                                                                     #  12    0xad97c  1      OPC=nop             
  nop                                                                     #  13    0xad97d  1      OPC=nop             
  nop                                                                     #  14    0xad97e  1      OPC=nop             
  nop                                                                     #  15    0xad97f  1      OPC=nop             
  ja .L_ad9c0                                                             #  16    0xad980  2      OPC=ja_label        
  subl %edx, %esi                                                         #  17    0xad982  2      OPC=subl_r32_r32    
  leal 0x1f(%rsp), %eax                                                   #  18    0xad984  4      OPC=leal_r32_m16    
  movb $0x0, (%rsp)                                                       #  19    0xad988  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                         #  20    0xad98c  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                       #  21    0xad98e  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                         #  22    0xad991  2      OPC=addl_r32_r32    
  addl %edi, %esi                                                         #  23    0xad993  2      OPC=addl_r32_r32    
  leal (%rdx,%rdi,1), %edi                                                #  24    0xad995  3      OPC=leal_r32_m16    
  movl %eax, %edx                                                         #  25    0xad998  2      OPC=movl_r32_r32    
  nop                                                                     #  26    0xad99a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  27    0xad99b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  28    0xad9a0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  29    0xad9a2  4      OPC=movl_m32_r32    
  addl $0x20, %esp                                                        #  30    0xad9a6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  31    0xad9a9  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  32    0xad9ac  1      OPC=popq_r64_1      
  popq %r11                                                               #  33    0xad9ad  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  34    0xad9af  7      OPC=andl_r32_imm32  
  nop                                                                     #  35    0xad9b6  1      OPC=nop             
  nop                                                                     #  36    0xad9b7  1      OPC=nop             
  nop                                                                     #  37    0xad9b8  1      OPC=nop             
  nop                                                                     #  38    0xad9b9  1      OPC=nop             
  addq %r15, %r11                                                         #  39    0xad9ba  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  40    0xad9bd  3      OPC=jmpq_r64        
  nop                                                                     #  41    0xad9c0  1      OPC=nop             
  nop                                                                     #  42    0xad9c1  1      OPC=nop             
  nop                                                                     #  43    0xad9c2  1      OPC=nop             
  nop                                                                     #  44    0xad9c3  1      OPC=nop             
  nop                                                                     #  45    0xad9c4  1      OPC=nop             
  nop                                                                     #  46    0xad9c5  1      OPC=nop             
  nop                                                                     #  47    0xad9c6  1      OPC=nop             
.L_ad9c0:                                                                 #        0xad9c7  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                  #  48    0xad9c7  5      OPC=movl_r32_imm32  
  nop                                                                     #  49    0xad9cc  1      OPC=nop             
  nop                                                                     #  50    0xad9cd  1      OPC=nop             
  nop                                                                     #  51    0xad9ce  1      OPC=nop             
  nop                                                                     #  52    0xad9cf  1      OPC=nop             
  nop                                                                     #  53    0xad9d0  1      OPC=nop             
  nop                                                                     #  54    0xad9d1  1      OPC=nop             
  nop                                                                     #  55    0xad9d2  1      OPC=nop             
  nop                                                                     #  56    0xad9d3  1      OPC=nop             
  nop                                                                     #  57    0xad9d4  1      OPC=nop             
  nop                                                                     #  58    0xad9d5  1      OPC=nop             
  nop                                                                     #  59    0xad9d6  1      OPC=nop             
  nop                                                                     #  60    0xad9d7  1      OPC=nop             
  nop                                                                     #  61    0xad9d8  1      OPC=nop             
  nop                                                                     #  62    0xad9d9  1      OPC=nop             
  nop                                                                     #  63    0xad9da  1      OPC=nop             
  nop                                                                     #  64    0xad9db  1      OPC=nop             
  nop                                                                     #  65    0xad9dc  1      OPC=nop             
  nop                                                                     #  66    0xad9dd  1      OPC=nop             
  nop                                                                     #  67    0xad9de  1      OPC=nop             
  nop                                                                     #  68    0xad9df  1      OPC=nop             
  nop                                                                     #  69    0xad9e0  1      OPC=nop             
  nop                                                                     #  70    0xad9e1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                    #  71    0xad9e2  5      OPC=callq_label     
  movl %eax, %edi                                                         #  72    0xad9e7  2      OPC=movl_r32_r32    
  nop                                                                     #  73    0xad9e9  1      OPC=nop             
  nop                                                                     #  74    0xad9ea  1      OPC=nop             
  nop                                                                     #  75    0xad9eb  1      OPC=nop             
  nop                                                                     #  76    0xad9ec  1      OPC=nop             
  nop                                                                     #  77    0xad9ed  1      OPC=nop             
  nop                                                                     #  78    0xad9ee  1      OPC=nop             
  nop                                                                     #  79    0xad9ef  1      OPC=nop             
  nop                                                                     #  80    0xad9f0  1      OPC=nop             
  nop                                                                     #  81    0xad9f1  1      OPC=nop             
  nop                                                                     #  82    0xad9f2  1      OPC=nop             
  nop                                                                     #  83    0xad9f3  1      OPC=nop             
  nop                                                                     #  84    0xad9f4  1      OPC=nop             
  nop                                                                     #  85    0xad9f5  1      OPC=nop             
  nop                                                                     #  86    0xad9f6  1      OPC=nop             
  nop                                                                     #  87    0xad9f7  1      OPC=nop             
  nop                                                                     #  88    0xad9f8  1      OPC=nop             
  nop                                                                     #  89    0xad9f9  1      OPC=nop             
  nop                                                                     #  90    0xad9fa  1      OPC=nop             
  nop                                                                     #  91    0xad9fb  1      OPC=nop             
  nop                                                                     #  92    0xad9fc  1      OPC=nop             
  nop                                                                     #  93    0xad9fd  1      OPC=nop             
  nop                                                                     #  94    0xad9fe  1      OPC=nop             
  nop                                                                     #  95    0xad9ff  1      OPC=nop             
  nop                                                                     #  96    0xada00  1      OPC=nop             
  nop                                                                     #  97    0xada01  1      OPC=nop             
  callq ._Unwind_Resume                                                   #  98    0xada02  5      OPC=callq_label     
                                                                                                                       
.size _ZNSsC1ERKSsjj, .-_ZNSsC1ERKSsjj

