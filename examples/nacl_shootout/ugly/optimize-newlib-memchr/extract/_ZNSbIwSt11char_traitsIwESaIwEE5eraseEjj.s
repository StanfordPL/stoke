  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj
  .type _ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj, @function

#! file-offset 0x11a440
#! rip-offset  0xda440
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj:              #        0xda440  0      OPC=<label>         
  pushq %rbx                                            #  1     0xda440  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                       #  2     0xda441  2      OPC=movl_r32_r32    
  movl %edx, %ecx                                       #  3     0xda443  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                       #  4     0xda445  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                              #  5     0xda447  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                       #  6     0xda44b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                       #  7     0xda44e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                              #  8     0xda450  4      OPC=movl_r32_m32    
  cmpl %eax, %esi                                       #  9     0xda454  2      OPC=cmpl_r32_r32    
  ja .L_da4a0                                           #  10    0xda456  2      OPC=ja_label        
  movl %eax, %edx                                       #  11    0xda458  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                       #  12    0xda45a  2      OPC=movl_r32_r32    
  subl %esi, %edx                                       #  13    0xda45c  2      OPC=subl_r32_r32    
  cmpl %ecx, %edx                                       #  14    0xda45e  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %edx                                     #  15    0xda460  3      OPC=cmoval_r32_r32  
  xorl %ecx, %ecx                                       #  16    0xda463  2      OPC=xorl_r32_r32    
  nop                                                   #  17    0xda465  1      OPC=nop             
  nop                                                   #  18    0xda466  1      OPC=nop             
  nop                                                   #  19    0xda467  1      OPC=nop             
  nop                                                   #  20    0xda468  1      OPC=nop             
  nop                                                   #  21    0xda469  1      OPC=nop             
  nop                                                   #  22    0xda46a  1      OPC=nop             
  nop                                                   #  23    0xda46b  1      OPC=nop             
  nop                                                   #  24    0xda46c  1      OPC=nop             
  nop                                                   #  25    0xda46d  1      OPC=nop             
  nop                                                   #  26    0xda46e  1      OPC=nop             
  nop                                                   #  27    0xda46f  1      OPC=nop             
  nop                                                   #  28    0xda470  1      OPC=nop             
  nop                                                   #  29    0xda471  1      OPC=nop             
  nop                                                   #  30    0xda472  1      OPC=nop             
  nop                                                   #  31    0xda473  1      OPC=nop             
  nop                                                   #  32    0xda474  1      OPC=nop             
  nop                                                   #  33    0xda475  1      OPC=nop             
  nop                                                   #  34    0xda476  1      OPC=nop             
  nop                                                   #  35    0xda477  1      OPC=nop             
  nop                                                   #  36    0xda478  1      OPC=nop             
  nop                                                   #  37    0xda479  1      OPC=nop             
  nop                                                   #  38    0xda47a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj  #  39    0xda47b  5      OPC=callq_label     
  movl %ebx, %eax                                       #  40    0xda480  2      OPC=movl_r32_r32    
  popq %rbx                                             #  41    0xda482  1      OPC=popq_r64_1      
  popq %r11                                             #  42    0xda483  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  43    0xda485  7      OPC=andl_r32_imm32  
  nop                                                   #  44    0xda48c  1      OPC=nop             
  nop                                                   #  45    0xda48d  1      OPC=nop             
  nop                                                   #  46    0xda48e  1      OPC=nop             
  nop                                                   #  47    0xda48f  1      OPC=nop             
  addq %r15, %r11                                       #  48    0xda490  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  49    0xda493  3      OPC=jmpq_r64        
  xchgw %ax, %ax                                        #  50    0xda496  2      OPC=xchgw_ax_r16    
  nop                                                   #  51    0xda498  1      OPC=nop             
  nop                                                   #  52    0xda499  1      OPC=nop             
  nop                                                   #  53    0xda49a  1      OPC=nop             
  nop                                                   #  54    0xda49b  1      OPC=nop             
  nop                                                   #  55    0xda49c  1      OPC=nop             
  nop                                                   #  56    0xda49d  1      OPC=nop             
  nop                                                   #  57    0xda49e  1      OPC=nop             
  nop                                                   #  58    0xda49f  1      OPC=nop             
  nop                                                   #  59    0xda4a0  1      OPC=nop             
  nop                                                   #  60    0xda4a1  1      OPC=nop             
  nop                                                   #  61    0xda4a2  1      OPC=nop             
  nop                                                   #  62    0xda4a3  1      OPC=nop             
  nop                                                   #  63    0xda4a4  1      OPC=nop             
  nop                                                   #  64    0xda4a5  1      OPC=nop             
  nop                                                   #  65    0xda4a6  1      OPC=nop             
.L_da4a0:                                               #        0xda4a7  0      OPC=<label>         
  movl $0x1003a8e6, %edi                                #  66    0xda4a7  5      OPC=movl_r32_imm32  
  nop                                                   #  67    0xda4ac  1      OPC=nop             
  nop                                                   #  68    0xda4ad  1      OPC=nop             
  nop                                                   #  69    0xda4ae  1      OPC=nop             
  nop                                                   #  70    0xda4af  1      OPC=nop             
  nop                                                   #  71    0xda4b0  1      OPC=nop             
  nop                                                   #  72    0xda4b1  1      OPC=nop             
  nop                                                   #  73    0xda4b2  1      OPC=nop             
  nop                                                   #  74    0xda4b3  1      OPC=nop             
  nop                                                   #  75    0xda4b4  1      OPC=nop             
  nop                                                   #  76    0xda4b5  1      OPC=nop             
  nop                                                   #  77    0xda4b6  1      OPC=nop             
  nop                                                   #  78    0xda4b7  1      OPC=nop             
  nop                                                   #  79    0xda4b8  1      OPC=nop             
  nop                                                   #  80    0xda4b9  1      OPC=nop             
  nop                                                   #  81    0xda4ba  1      OPC=nop             
  nop                                                   #  82    0xda4bb  1      OPC=nop             
  nop                                                   #  83    0xda4bc  1      OPC=nop             
  nop                                                   #  84    0xda4bd  1      OPC=nop             
  nop                                                   #  85    0xda4be  1      OPC=nop             
  nop                                                   #  86    0xda4bf  1      OPC=nop             
  nop                                                   #  87    0xda4c0  1      OPC=nop             
  nop                                                   #  88    0xda4c1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                  #  89    0xda4c2  5      OPC=callq_label     
                                                                                                     
.size _ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj, .-_ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj

