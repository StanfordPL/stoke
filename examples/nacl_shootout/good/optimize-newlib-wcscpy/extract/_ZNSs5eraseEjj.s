  .text
  .globl _ZNSs5eraseEjj
  .type _ZNSs5eraseEjj, @function

#! file-offset 0xee940
#! rip-offset  0xae940
#! capacity    128 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs5eraseEjj:                        #        0xae940  0      OPC=<label>         
  pushq %rbx                            #  1     0xae940  1      OPC=pushq_r64_1     
  movl %edi, %ebx                       #  2     0xae941  2      OPC=movl_r32_r32    
  movl %edx, %ecx                       #  3     0xae943  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                       #  4     0xae945  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax              #  5     0xae947  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  6     0xae94b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                       #  7     0xae94e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax              #  8     0xae950  4      OPC=movl_r32_m32    
  cmpl %eax, %esi                       #  9     0xae954  2      OPC=cmpl_r32_r32    
  ja .L_ae9a0                           #  10    0xae956  2      OPC=ja_label        
  movl %eax, %edx                       #  11    0xae958  2      OPC=movl_r32_r32    
  movl %ebx, %edi                       #  12    0xae95a  2      OPC=movl_r32_r32    
  subl %esi, %edx                       #  13    0xae95c  2      OPC=subl_r32_r32    
  cmpl %ecx, %edx                       #  14    0xae95e  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %edx                     #  15    0xae960  3      OPC=cmoval_r32_r32  
  xorl %ecx, %ecx                       #  16    0xae963  2      OPC=xorl_r32_r32    
  nop                                   #  17    0xae965  1      OPC=nop             
  nop                                   #  18    0xae966  1      OPC=nop             
  nop                                   #  19    0xae967  1      OPC=nop             
  nop                                   #  20    0xae968  1      OPC=nop             
  nop                                   #  21    0xae969  1      OPC=nop             
  nop                                   #  22    0xae96a  1      OPC=nop             
  nop                                   #  23    0xae96b  1      OPC=nop             
  nop                                   #  24    0xae96c  1      OPC=nop             
  nop                                   #  25    0xae96d  1      OPC=nop             
  nop                                   #  26    0xae96e  1      OPC=nop             
  nop                                   #  27    0xae96f  1      OPC=nop             
  nop                                   #  28    0xae970  1      OPC=nop             
  nop                                   #  29    0xae971  1      OPC=nop             
  nop                                   #  30    0xae972  1      OPC=nop             
  nop                                   #  31    0xae973  1      OPC=nop             
  nop                                   #  32    0xae974  1      OPC=nop             
  nop                                   #  33    0xae975  1      OPC=nop             
  nop                                   #  34    0xae976  1      OPC=nop             
  nop                                   #  35    0xae977  1      OPC=nop             
  nop                                   #  36    0xae978  1      OPC=nop             
  nop                                   #  37    0xae979  1      OPC=nop             
  nop                                   #  38    0xae97a  1      OPC=nop             
  callq ._ZNSs9_M_mutateEjjj            #  39    0xae97b  5      OPC=callq_label     
  movl %ebx, %eax                       #  40    0xae980  2      OPC=movl_r32_r32    
  popq %rbx                             #  41    0xae982  1      OPC=popq_r64_1      
  popq %r11                             #  42    0xae983  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  43    0xae985  7      OPC=andl_r32_imm32  
  nop                                   #  44    0xae98c  1      OPC=nop             
  nop                                   #  45    0xae98d  1      OPC=nop             
  nop                                   #  46    0xae98e  1      OPC=nop             
  nop                                   #  47    0xae98f  1      OPC=nop             
  addq %r15, %r11                       #  48    0xae990  3      OPC=addq_r64_r64    
  jmpq %r11                             #  49    0xae993  3      OPC=jmpq_r64        
  xchgw %ax, %ax                        #  50    0xae996  2      OPC=xchgw_ax_r16    
  nop                                   #  51    0xae998  1      OPC=nop             
  nop                                   #  52    0xae999  1      OPC=nop             
  nop                                   #  53    0xae99a  1      OPC=nop             
  nop                                   #  54    0xae99b  1      OPC=nop             
  nop                                   #  55    0xae99c  1      OPC=nop             
  nop                                   #  56    0xae99d  1      OPC=nop             
  nop                                   #  57    0xae99e  1      OPC=nop             
  nop                                   #  58    0xae99f  1      OPC=nop             
  nop                                   #  59    0xae9a0  1      OPC=nop             
  nop                                   #  60    0xae9a1  1      OPC=nop             
  nop                                   #  61    0xae9a2  1      OPC=nop             
  nop                                   #  62    0xae9a3  1      OPC=nop             
  nop                                   #  63    0xae9a4  1      OPC=nop             
  nop                                   #  64    0xae9a5  1      OPC=nop             
  nop                                   #  65    0xae9a6  1      OPC=nop             
.L_ae9a0:                               #        0xae9a7  0      OPC=<label>         
  movl $0x1003a8e6, %edi                #  66    0xae9a7  5      OPC=movl_r32_imm32  
  nop                                   #  67    0xae9ac  1      OPC=nop             
  nop                                   #  68    0xae9ad  1      OPC=nop             
  nop                                   #  69    0xae9ae  1      OPC=nop             
  nop                                   #  70    0xae9af  1      OPC=nop             
  nop                                   #  71    0xae9b0  1      OPC=nop             
  nop                                   #  72    0xae9b1  1      OPC=nop             
  nop                                   #  73    0xae9b2  1      OPC=nop             
  nop                                   #  74    0xae9b3  1      OPC=nop             
  nop                                   #  75    0xae9b4  1      OPC=nop             
  nop                                   #  76    0xae9b5  1      OPC=nop             
  nop                                   #  77    0xae9b6  1      OPC=nop             
  nop                                   #  78    0xae9b7  1      OPC=nop             
  nop                                   #  79    0xae9b8  1      OPC=nop             
  nop                                   #  80    0xae9b9  1      OPC=nop             
  nop                                   #  81    0xae9ba  1      OPC=nop             
  nop                                   #  82    0xae9bb  1      OPC=nop             
  nop                                   #  83    0xae9bc  1      OPC=nop             
  nop                                   #  84    0xae9bd  1      OPC=nop             
  nop                                   #  85    0xae9be  1      OPC=nop             
  nop                                   #  86    0xae9bf  1      OPC=nop             
  nop                                   #  87    0xae9c0  1      OPC=nop             
  nop                                   #  88    0xae9c1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  89    0xae9c2  5      OPC=callq_label     
                                                                                     
.size _ZNSs5eraseEjj, .-_ZNSs5eraseEjj

