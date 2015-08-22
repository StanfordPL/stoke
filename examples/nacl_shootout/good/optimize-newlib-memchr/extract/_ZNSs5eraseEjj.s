  .text
  .globl _ZNSs5eraseEjj
  .type _ZNSs5eraseEjj, @function

#! file-offset 0xef360
#! rip-offset  0xaf360
#! capacity    128 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs5eraseEjj:                        #        0xaf360  0      OPC=<label>         
  pushq %rbx                            #  1     0xaf360  1      OPC=pushq_r64_1     
  movl %edi, %ebx                       #  2     0xaf361  2      OPC=movl_r32_r32    
  movl %edx, %ecx                       #  3     0xaf363  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                       #  4     0xaf365  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax              #  5     0xaf367  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  6     0xaf36b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                       #  7     0xaf36e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax              #  8     0xaf370  4      OPC=movl_r32_m32    
  cmpl %eax, %esi                       #  9     0xaf374  2      OPC=cmpl_r32_r32    
  ja .L_af3c0                           #  10    0xaf376  2      OPC=ja_label        
  movl %eax, %edx                       #  11    0xaf378  2      OPC=movl_r32_r32    
  movl %ebx, %edi                       #  12    0xaf37a  2      OPC=movl_r32_r32    
  subl %esi, %edx                       #  13    0xaf37c  2      OPC=subl_r32_r32    
  cmpl %ecx, %edx                       #  14    0xaf37e  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %edx                     #  15    0xaf380  3      OPC=cmoval_r32_r32  
  xorl %ecx, %ecx                       #  16    0xaf383  2      OPC=xorl_r32_r32    
  nop                                   #  17    0xaf385  1      OPC=nop             
  nop                                   #  18    0xaf386  1      OPC=nop             
  nop                                   #  19    0xaf387  1      OPC=nop             
  nop                                   #  20    0xaf388  1      OPC=nop             
  nop                                   #  21    0xaf389  1      OPC=nop             
  nop                                   #  22    0xaf38a  1      OPC=nop             
  nop                                   #  23    0xaf38b  1      OPC=nop             
  nop                                   #  24    0xaf38c  1      OPC=nop             
  nop                                   #  25    0xaf38d  1      OPC=nop             
  nop                                   #  26    0xaf38e  1      OPC=nop             
  nop                                   #  27    0xaf38f  1      OPC=nop             
  nop                                   #  28    0xaf390  1      OPC=nop             
  nop                                   #  29    0xaf391  1      OPC=nop             
  nop                                   #  30    0xaf392  1      OPC=nop             
  nop                                   #  31    0xaf393  1      OPC=nop             
  nop                                   #  32    0xaf394  1      OPC=nop             
  nop                                   #  33    0xaf395  1      OPC=nop             
  nop                                   #  34    0xaf396  1      OPC=nop             
  nop                                   #  35    0xaf397  1      OPC=nop             
  nop                                   #  36    0xaf398  1      OPC=nop             
  nop                                   #  37    0xaf399  1      OPC=nop             
  nop                                   #  38    0xaf39a  1      OPC=nop             
  callq ._ZNSs9_M_mutateEjjj            #  39    0xaf39b  5      OPC=callq_label     
  movl %ebx, %eax                       #  40    0xaf3a0  2      OPC=movl_r32_r32    
  popq %rbx                             #  41    0xaf3a2  1      OPC=popq_r64_1      
  popq %r11                             #  42    0xaf3a3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  43    0xaf3a5  7      OPC=andl_r32_imm32  
  nop                                   #  44    0xaf3ac  1      OPC=nop             
  nop                                   #  45    0xaf3ad  1      OPC=nop             
  nop                                   #  46    0xaf3ae  1      OPC=nop             
  nop                                   #  47    0xaf3af  1      OPC=nop             
  addq %r15, %r11                       #  48    0xaf3b0  3      OPC=addq_r64_r64    
  jmpq %r11                             #  49    0xaf3b3  3      OPC=jmpq_r64        
  xchgw %ax, %ax                        #  50    0xaf3b6  2      OPC=xchgw_ax_r16    
  nop                                   #  51    0xaf3b8  1      OPC=nop             
  nop                                   #  52    0xaf3b9  1      OPC=nop             
  nop                                   #  53    0xaf3ba  1      OPC=nop             
  nop                                   #  54    0xaf3bb  1      OPC=nop             
  nop                                   #  55    0xaf3bc  1      OPC=nop             
  nop                                   #  56    0xaf3bd  1      OPC=nop             
  nop                                   #  57    0xaf3be  1      OPC=nop             
  nop                                   #  58    0xaf3bf  1      OPC=nop             
  nop                                   #  59    0xaf3c0  1      OPC=nop             
  nop                                   #  60    0xaf3c1  1      OPC=nop             
  nop                                   #  61    0xaf3c2  1      OPC=nop             
  nop                                   #  62    0xaf3c3  1      OPC=nop             
  nop                                   #  63    0xaf3c4  1      OPC=nop             
  nop                                   #  64    0xaf3c5  1      OPC=nop             
  nop                                   #  65    0xaf3c6  1      OPC=nop             
.L_af3c0:                               #        0xaf3c7  0      OPC=<label>         
  movl $0x1003a8e6, %edi                #  66    0xaf3c7  5      OPC=movl_r32_imm32  
  nop                                   #  67    0xaf3cc  1      OPC=nop             
  nop                                   #  68    0xaf3cd  1      OPC=nop             
  nop                                   #  69    0xaf3ce  1      OPC=nop             
  nop                                   #  70    0xaf3cf  1      OPC=nop             
  nop                                   #  71    0xaf3d0  1      OPC=nop             
  nop                                   #  72    0xaf3d1  1      OPC=nop             
  nop                                   #  73    0xaf3d2  1      OPC=nop             
  nop                                   #  74    0xaf3d3  1      OPC=nop             
  nop                                   #  75    0xaf3d4  1      OPC=nop             
  nop                                   #  76    0xaf3d5  1      OPC=nop             
  nop                                   #  77    0xaf3d6  1      OPC=nop             
  nop                                   #  78    0xaf3d7  1      OPC=nop             
  nop                                   #  79    0xaf3d8  1      OPC=nop             
  nop                                   #  80    0xaf3d9  1      OPC=nop             
  nop                                   #  81    0xaf3da  1      OPC=nop             
  nop                                   #  82    0xaf3db  1      OPC=nop             
  nop                                   #  83    0xaf3dc  1      OPC=nop             
  nop                                   #  84    0xaf3dd  1      OPC=nop             
  nop                                   #  85    0xaf3de  1      OPC=nop             
  nop                                   #  86    0xaf3df  1      OPC=nop             
  nop                                   #  87    0xaf3e0  1      OPC=nop             
  nop                                   #  88    0xaf3e1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  89    0xaf3e2  5      OPC=callq_label     
                                                                                     
.size _ZNSs5eraseEjj, .-_ZNSs5eraseEjj

