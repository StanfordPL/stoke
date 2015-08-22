  .text
  .globl _ZNKSs16find_last_not_ofEPKcj
  .type _ZNKSs16find_last_not_ofEPKcj, @function

#! file-offset 0xec340
#! rip-offset  0xac340
#! capacity    128 bytes

# Text                                  #  Line  RIP      Bytes  Opcode             
._ZNKSs16find_last_not_ofEPKcj:         #        0xac340  0      OPC=<label>        
  movq %r12, -0x10(%rsp)                #  1     0xac340  5      OPC=movq_m64_r64   
  movl %esi, %r12d                      #  2     0xac345  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)                #  3     0xac348  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)                 #  4     0xac34d  5      OPC=movq_m64_r64   
  movl %edi, %ebx                       #  5     0xac352  2      OPC=movl_r32_r32   
  subl $0x18, %esp                      #  6     0xac354  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                       #  7     0xac357  3      OPC=addq_r64_r64   
  movl %edx, %r13d                      #  8     0xac35a  3      OPC=movl_r32_r32   
  movl %r12d, %edi                      #  9     0xac35d  3      OPC=movl_r32_r32   
  nop                                   #  10    0xac360  1      OPC=nop            
  nop                                   #  11    0xac361  1      OPC=nop            
  nop                                   #  12    0xac362  1      OPC=nop            
  nop                                   #  13    0xac363  1      OPC=nop            
  nop                                   #  14    0xac364  1      OPC=nop            
  nop                                   #  15    0xac365  1      OPC=nop            
  nop                                   #  16    0xac366  1      OPC=nop            
  nop                                   #  17    0xac367  1      OPC=nop            
  nop                                   #  18    0xac368  1      OPC=nop            
  nop                                   #  19    0xac369  1      OPC=nop            
  nop                                   #  20    0xac36a  1      OPC=nop            
  nop                                   #  21    0xac36b  1      OPC=nop            
  nop                                   #  22    0xac36c  1      OPC=nop            
  nop                                   #  23    0xac36d  1      OPC=nop            
  nop                                   #  24    0xac36e  1      OPC=nop            
  nop                                   #  25    0xac36f  1      OPC=nop            
  nop                                   #  26    0xac370  1      OPC=nop            
  nop                                   #  27    0xac371  1      OPC=nop            
  nop                                   #  28    0xac372  1      OPC=nop            
  nop                                   #  29    0xac373  1      OPC=nop            
  nop                                   #  30    0xac374  1      OPC=nop            
  nop                                   #  31    0xac375  1      OPC=nop            
  nop                                   #  32    0xac376  1      OPC=nop            
  nop                                   #  33    0xac377  1      OPC=nop            
  nop                                   #  34    0xac378  1      OPC=nop            
  nop                                   #  35    0xac379  1      OPC=nop            
  nop                                   #  36    0xac37a  1      OPC=nop            
  callq .strlen                         #  37    0xac37b  5      OPC=callq_label    
  movl %r13d, %edx                      #  38    0xac380  3      OPC=movl_r32_r32   
  movl %r12d, %esi                      #  39    0xac383  3      OPC=movl_r32_r32   
  movl %ebx, %edi                       #  40    0xac386  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12                  #  41    0xac388  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                     #  42    0xac38d  4      OPC=movq_r64_m64   
  movl %eax, %ecx                       #  43    0xac391  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13                 #  44    0xac393  5      OPC=movq_r64_m64   
  addl $0x18, %esp                      #  45    0xac398  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                       #  46    0xac39b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                        #  47    0xac39e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs16find_last_not_ofEPKcjj  #  48    0xac3a0  5      OPC=jmpq_label_1   
  nop                                   #  49    0xac3a5  1      OPC=nop            
  nop                                   #  50    0xac3a6  1      OPC=nop            
  nop                                   #  51    0xac3a7  1      OPC=nop            
  nop                                   #  52    0xac3a8  1      OPC=nop            
  nop                                   #  53    0xac3a9  1      OPC=nop            
  nop                                   #  54    0xac3aa  1      OPC=nop            
  nop                                   #  55    0xac3ab  1      OPC=nop            
  nop                                   #  56    0xac3ac  1      OPC=nop            
  nop                                   #  57    0xac3ad  1      OPC=nop            
  nop                                   #  58    0xac3ae  1      OPC=nop            
  nop                                   #  59    0xac3af  1      OPC=nop            
  nop                                   #  60    0xac3b0  1      OPC=nop            
  nop                                   #  61    0xac3b1  1      OPC=nop            
  nop                                   #  62    0xac3b2  1      OPC=nop            
  nop                                   #  63    0xac3b3  1      OPC=nop            
  nop                                   #  64    0xac3b4  1      OPC=nop            
  nop                                   #  65    0xac3b5  1      OPC=nop            
  nop                                   #  66    0xac3b6  1      OPC=nop            
  nop                                   #  67    0xac3b7  1      OPC=nop            
  nop                                   #  68    0xac3b8  1      OPC=nop            
  nop                                   #  69    0xac3b9  1      OPC=nop            
  nop                                   #  70    0xac3ba  1      OPC=nop            
  nop                                   #  71    0xac3bb  1      OPC=nop            
  nop                                   #  72    0xac3bc  1      OPC=nop            
  nop                                   #  73    0xac3bd  1      OPC=nop            
  nop                                   #  74    0xac3be  1      OPC=nop            
  nop                                   #  75    0xac3bf  1      OPC=nop            
                                                                                    
.size _ZNKSs16find_last_not_ofEPKcj, .-_ZNKSs16find_last_not_ofEPKcj

