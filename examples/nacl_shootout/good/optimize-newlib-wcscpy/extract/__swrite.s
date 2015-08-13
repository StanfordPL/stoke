  .text
  .globl __swrite
  .type __swrite, @function

#! file-offset 0x1662c0
#! rip-offset  0x1262c0
#! capacity    160 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.__swrite:                       #        0x1262c0  0      OPC=<label>         
  movq %rbx, -0x18(%rsp)         #  1     0x1262c0  5      OPC=movq_m64_r64    
  movl %esi, %ebx                #  2     0x1262c5  2      OPC=movl_r32_r32    
  movq %r12, -0x10(%rsp)         #  3     0x1262c7  5      OPC=movq_m64_r64    
  movq %r13, -0x8(%rsp)          #  4     0x1262cc  5      OPC=movq_m64_r64    
  subl $0x18, %esp               #  5     0x1262d1  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  6     0x1262d4  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                #  7     0x1262d7  2      OPC=movl_r32_r32    
  movzwl 0xc(%r15,%rbx,1), %eax  #  8     0x1262d9  6      OPC=movzwl_r32_m16  
  nop                            #  9     0x1262df  1      OPC=nop             
  movl %ecx, %r13d               #  10    0x1262e0  3      OPC=movl_r32_r32    
  movl %edx, %r12d               #  11    0x1262e3  3      OPC=movl_r32_r32    
  testb $0x1, %ah                #  12    0x1262e6  3      OPC=testb_rh_imm8   
  je .L_126320                   #  13    0x1262e9  2      OPC=je_label        
  movl %ebx, %ebx                #  14    0x1262eb  2      OPC=movl_r32_r32    
  movswl 0xe(%r15,%rbx,1), %edi  #  15    0x1262ed  6      OPC=movswl_r32_m16  
  movl $0x2, %edx                #  16    0x1262f3  5      OPC=movl_r32_imm32  
  xorl %esi, %esi                #  17    0x1262f8  2      OPC=xorl_r32_r32    
  nop                            #  18    0x1262fa  1      OPC=nop             
  callq .lseek                   #  19    0x1262fb  5      OPC=callq_label     
  movl %ebx, %ebx                #  20    0x126300  2      OPC=movl_r32_r32    
  movzwl 0xc(%r15,%rbx,1), %eax  #  21    0x126302  6      OPC=movzwl_r32_m16  
  nop                            #  22    0x126308  1      OPC=nop             
  nop                            #  23    0x126309  1      OPC=nop             
  nop                            #  24    0x12630a  1      OPC=nop             
  nop                            #  25    0x12630b  1      OPC=nop             
  nop                            #  26    0x12630c  1      OPC=nop             
  nop                            #  27    0x12630d  1      OPC=nop             
  nop                            #  28    0x12630e  1      OPC=nop             
  nop                            #  29    0x12630f  1      OPC=nop             
  nop                            #  30    0x126310  1      OPC=nop             
  nop                            #  31    0x126311  1      OPC=nop             
  nop                            #  32    0x126312  1      OPC=nop             
  nop                            #  33    0x126313  1      OPC=nop             
  nop                            #  34    0x126314  1      OPC=nop             
  nop                            #  35    0x126315  1      OPC=nop             
  nop                            #  36    0x126316  1      OPC=nop             
  nop                            #  37    0x126317  1      OPC=nop             
  nop                            #  38    0x126318  1      OPC=nop             
  nop                            #  39    0x126319  1      OPC=nop             
  nop                            #  40    0x12631a  1      OPC=nop             
  nop                            #  41    0x12631b  1      OPC=nop             
  nop                            #  42    0x12631c  1      OPC=nop             
  nop                            #  43    0x12631d  1      OPC=nop             
  nop                            #  44    0x12631e  1      OPC=nop             
  nop                            #  45    0x12631f  1      OPC=nop             
.L_126320:                       #        0x126320  0      OPC=<label>         
  movl %ebx, %ebx                #  46    0x126320  2      OPC=movl_r32_r32    
  movswl 0xe(%r15,%rbx,1), %edi  #  47    0x126322  6      OPC=movswl_r32_m16  
  andb $0xef, %ah                #  48    0x126328  3      OPC=andb_rh_imm8    
  movl %r13d, %edx               #  49    0x12632b  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                #  50    0x12632e  2      OPC=movl_r32_r32    
  movw %ax, 0xc(%r15,%rbx,1)     #  51    0x126330  6      OPC=movw_m16_r16    
  movl %r12d, %esi               #  52    0x126336  3      OPC=movl_r32_r32    
  movq (%rsp), %rbx              #  53    0x126339  4      OPC=movq_r64_m64    
  nop                            #  54    0x12633d  1      OPC=nop             
  nop                            #  55    0x12633e  1      OPC=nop             
  nop                            #  56    0x12633f  1      OPC=nop             
  movq 0x8(%rsp), %r12           #  57    0x126340  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r13          #  58    0x126345  5      OPC=movq_r64_m64    
  addl $0x18, %esp               #  59    0x12634a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  60    0x12634d  3      OPC=addq_r64_r64    
  jmpq .write                    #  61    0x126350  5      OPC=jmpq_label_1    
  nop                            #  62    0x126355  1      OPC=nop             
  nop                            #  63    0x126356  1      OPC=nop             
  nop                            #  64    0x126357  1      OPC=nop             
  nop                            #  65    0x126358  1      OPC=nop             
  nop                            #  66    0x126359  1      OPC=nop             
  nop                            #  67    0x12635a  1      OPC=nop             
  nop                            #  68    0x12635b  1      OPC=nop             
  nop                            #  69    0x12635c  1      OPC=nop             
  nop                            #  70    0x12635d  1      OPC=nop             
  nop                            #  71    0x12635e  1      OPC=nop             
  nop                            #  72    0x12635f  1      OPC=nop             
                                                                               
.size __swrite, .-__swrite

