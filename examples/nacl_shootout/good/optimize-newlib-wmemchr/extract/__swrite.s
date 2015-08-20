  .text
  .globl __swrite
  .type __swrite, @function

#! file-offset 0x1665c0
#! rip-offset  0x1265c0
#! capacity    160 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.__swrite:                       #        0x1265c0  0      OPC=<label>         
  movq %rbx, -0x18(%rsp)         #  1     0x1265c0  5      OPC=movq_m64_r64    
  movl %esi, %ebx                #  2     0x1265c5  2      OPC=movl_r32_r32    
  movq %r12, -0x10(%rsp)         #  3     0x1265c7  5      OPC=movq_m64_r64    
  movq %r13, -0x8(%rsp)          #  4     0x1265cc  5      OPC=movq_m64_r64    
  subl $0x18, %esp               #  5     0x1265d1  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  6     0x1265d4  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                #  7     0x1265d7  2      OPC=movl_r32_r32    
  movzwl 0xc(%r15,%rbx,1), %eax  #  8     0x1265d9  6      OPC=movzwl_r32_m16  
  nop                            #  9     0x1265df  1      OPC=nop             
  movl %ecx, %r13d               #  10    0x1265e0  3      OPC=movl_r32_r32    
  movl %edx, %r12d               #  11    0x1265e3  3      OPC=movl_r32_r32    
  testb $0x1, %ah                #  12    0x1265e6  3      OPC=testb_rh_imm8   
  je .L_126620                   #  13    0x1265e9  2      OPC=je_label        
  movl %ebx, %ebx                #  14    0x1265eb  2      OPC=movl_r32_r32    
  movswl 0xe(%r15,%rbx,1), %edi  #  15    0x1265ed  6      OPC=movswl_r32_m16  
  movl $0x2, %edx                #  16    0x1265f3  5      OPC=movl_r32_imm32  
  xorl %esi, %esi                #  17    0x1265f8  2      OPC=xorl_r32_r32    
  nop                            #  18    0x1265fa  1      OPC=nop             
  callq .lseek                   #  19    0x1265fb  5      OPC=callq_label     
  movl %ebx, %ebx                #  20    0x126600  2      OPC=movl_r32_r32    
  movzwl 0xc(%r15,%rbx,1), %eax  #  21    0x126602  6      OPC=movzwl_r32_m16  
  nop                            #  22    0x126608  1      OPC=nop             
  nop                            #  23    0x126609  1      OPC=nop             
  nop                            #  24    0x12660a  1      OPC=nop             
  nop                            #  25    0x12660b  1      OPC=nop             
  nop                            #  26    0x12660c  1      OPC=nop             
  nop                            #  27    0x12660d  1      OPC=nop             
  nop                            #  28    0x12660e  1      OPC=nop             
  nop                            #  29    0x12660f  1      OPC=nop             
  nop                            #  30    0x126610  1      OPC=nop             
  nop                            #  31    0x126611  1      OPC=nop             
  nop                            #  32    0x126612  1      OPC=nop             
  nop                            #  33    0x126613  1      OPC=nop             
  nop                            #  34    0x126614  1      OPC=nop             
  nop                            #  35    0x126615  1      OPC=nop             
  nop                            #  36    0x126616  1      OPC=nop             
  nop                            #  37    0x126617  1      OPC=nop             
  nop                            #  38    0x126618  1      OPC=nop             
  nop                            #  39    0x126619  1      OPC=nop             
  nop                            #  40    0x12661a  1      OPC=nop             
  nop                            #  41    0x12661b  1      OPC=nop             
  nop                            #  42    0x12661c  1      OPC=nop             
  nop                            #  43    0x12661d  1      OPC=nop             
  nop                            #  44    0x12661e  1      OPC=nop             
  nop                            #  45    0x12661f  1      OPC=nop             
.L_126620:                       #        0x126620  0      OPC=<label>         
  movl %ebx, %ebx                #  46    0x126620  2      OPC=movl_r32_r32    
  movswl 0xe(%r15,%rbx,1), %edi  #  47    0x126622  6      OPC=movswl_r32_m16  
  andb $0xef, %ah                #  48    0x126628  3      OPC=andb_rh_imm8    
  movl %r13d, %edx               #  49    0x12662b  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                #  50    0x12662e  2      OPC=movl_r32_r32    
  movw %ax, 0xc(%r15,%rbx,1)     #  51    0x126630  6      OPC=movw_m16_r16    
  movl %r12d, %esi               #  52    0x126636  3      OPC=movl_r32_r32    
  movq (%rsp), %rbx              #  53    0x126639  4      OPC=movq_r64_m64    
  nop                            #  54    0x12663d  1      OPC=nop             
  nop                            #  55    0x12663e  1      OPC=nop             
  nop                            #  56    0x12663f  1      OPC=nop             
  movq 0x8(%rsp), %r12           #  57    0x126640  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r13          #  58    0x126645  5      OPC=movq_r64_m64    
  addl $0x18, %esp               #  59    0x12664a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  60    0x12664d  3      OPC=addq_r64_r64    
  jmpq .write                    #  61    0x126650  5      OPC=jmpq_label_1    
  nop                            #  62    0x126655  1      OPC=nop             
  nop                            #  63    0x126656  1      OPC=nop             
  nop                            #  64    0x126657  1      OPC=nop             
  nop                            #  65    0x126658  1      OPC=nop             
  nop                            #  66    0x126659  1      OPC=nop             
  nop                            #  67    0x12665a  1      OPC=nop             
  nop                            #  68    0x12665b  1      OPC=nop             
  nop                            #  69    0x12665c  1      OPC=nop             
  nop                            #  70    0x12665d  1      OPC=nop             
  nop                            #  71    0x12665e  1      OPC=nop             
  nop                            #  72    0x12665f  1      OPC=nop             
                                                                               
.size __swrite, .-__swrite

