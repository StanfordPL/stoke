  .text
  .globl _ZNKSs12find_last_ofEPKcj
  .type _ZNKSs12find_last_ofEPKcj, @function

#! file-offset 0xec440
#! rip-offset  0xac440
#! capacity    128 bytes

# Text                              #  Line  RIP      Bytes  Opcode             
._ZNKSs12find_last_ofEPKcj:         #        0xac440  0      OPC=<label>        
  movq %r12, -0x10(%rsp)            #  1     0xac440  5      OPC=movq_m64_r64   
  movl %esi, %r12d                  #  2     0xac445  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)            #  3     0xac448  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)             #  4     0xac44d  5      OPC=movq_m64_r64   
  movl %edi, %ebx                   #  5     0xac452  2      OPC=movl_r32_r32   
  subl $0x18, %esp                  #  6     0xac454  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                   #  7     0xac457  3      OPC=addq_r64_r64   
  movl %edx, %r13d                  #  8     0xac45a  3      OPC=movl_r32_r32   
  movl %r12d, %edi                  #  9     0xac45d  3      OPC=movl_r32_r32   
  nop                               #  10    0xac460  1      OPC=nop            
  nop                               #  11    0xac461  1      OPC=nop            
  nop                               #  12    0xac462  1      OPC=nop            
  nop                               #  13    0xac463  1      OPC=nop            
  nop                               #  14    0xac464  1      OPC=nop            
  nop                               #  15    0xac465  1      OPC=nop            
  nop                               #  16    0xac466  1      OPC=nop            
  nop                               #  17    0xac467  1      OPC=nop            
  nop                               #  18    0xac468  1      OPC=nop            
  nop                               #  19    0xac469  1      OPC=nop            
  nop                               #  20    0xac46a  1      OPC=nop            
  nop                               #  21    0xac46b  1      OPC=nop            
  nop                               #  22    0xac46c  1      OPC=nop            
  nop                               #  23    0xac46d  1      OPC=nop            
  nop                               #  24    0xac46e  1      OPC=nop            
  nop                               #  25    0xac46f  1      OPC=nop            
  nop                               #  26    0xac470  1      OPC=nop            
  nop                               #  27    0xac471  1      OPC=nop            
  nop                               #  28    0xac472  1      OPC=nop            
  nop                               #  29    0xac473  1      OPC=nop            
  nop                               #  30    0xac474  1      OPC=nop            
  nop                               #  31    0xac475  1      OPC=nop            
  nop                               #  32    0xac476  1      OPC=nop            
  nop                               #  33    0xac477  1      OPC=nop            
  nop                               #  34    0xac478  1      OPC=nop            
  nop                               #  35    0xac479  1      OPC=nop            
  nop                               #  36    0xac47a  1      OPC=nop            
  callq .strlen                     #  37    0xac47b  5      OPC=callq_label    
  movl %r13d, %edx                  #  38    0xac480  3      OPC=movl_r32_r32   
  movl %r12d, %esi                  #  39    0xac483  3      OPC=movl_r32_r32   
  movl %ebx, %edi                   #  40    0xac486  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12              #  41    0xac488  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                 #  42    0xac48d  4      OPC=movq_r64_m64   
  movl %eax, %ecx                   #  43    0xac491  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13             #  44    0xac493  5      OPC=movq_r64_m64   
  addl $0x18, %esp                  #  45    0xac498  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                   #  46    0xac49b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                    #  47    0xac49e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs12find_last_ofEPKcjj  #  48    0xac4a0  5      OPC=jmpq_label_1   
  nop                               #  49    0xac4a5  1      OPC=nop            
  nop                               #  50    0xac4a6  1      OPC=nop            
  nop                               #  51    0xac4a7  1      OPC=nop            
  nop                               #  52    0xac4a8  1      OPC=nop            
  nop                               #  53    0xac4a9  1      OPC=nop            
  nop                               #  54    0xac4aa  1      OPC=nop            
  nop                               #  55    0xac4ab  1      OPC=nop            
  nop                               #  56    0xac4ac  1      OPC=nop            
  nop                               #  57    0xac4ad  1      OPC=nop            
  nop                               #  58    0xac4ae  1      OPC=nop            
  nop                               #  59    0xac4af  1      OPC=nop            
  nop                               #  60    0xac4b0  1      OPC=nop            
  nop                               #  61    0xac4b1  1      OPC=nop            
  nop                               #  62    0xac4b2  1      OPC=nop            
  nop                               #  63    0xac4b3  1      OPC=nop            
  nop                               #  64    0xac4b4  1      OPC=nop            
  nop                               #  65    0xac4b5  1      OPC=nop            
  nop                               #  66    0xac4b6  1      OPC=nop            
  nop                               #  67    0xac4b7  1      OPC=nop            
  nop                               #  68    0xac4b8  1      OPC=nop            
  nop                               #  69    0xac4b9  1      OPC=nop            
  nop                               #  70    0xac4ba  1      OPC=nop            
  nop                               #  71    0xac4bb  1      OPC=nop            
  nop                               #  72    0xac4bc  1      OPC=nop            
  nop                               #  73    0xac4bd  1      OPC=nop            
  nop                               #  74    0xac4be  1      OPC=nop            
  nop                               #  75    0xac4bf  1      OPC=nop            
                                                                                
.size _ZNKSs12find_last_ofEPKcj, .-_ZNKSs12find_last_ofEPKcj

