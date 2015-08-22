  .text
  .globl __swrite
  .type __swrite, @function

#! file-offset 0x166ce0
#! rip-offset  0x126ce0
#! capacity    160 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.__swrite:                       #        0x126ce0  0      OPC=<label>         
  movq %rbx, -0x18(%rsp)         #  1     0x126ce0  5      OPC=movq_m64_r64    
  movl %esi, %ebx                #  2     0x126ce5  2      OPC=movl_r32_r32    
  movq %r12, -0x10(%rsp)         #  3     0x126ce7  5      OPC=movq_m64_r64    
  movq %r13, -0x8(%rsp)          #  4     0x126cec  5      OPC=movq_m64_r64    
  subl $0x18, %esp               #  5     0x126cf1  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  6     0x126cf4  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                #  7     0x126cf7  2      OPC=movl_r32_r32    
  movzwl 0xc(%r15,%rbx,1), %eax  #  8     0x126cf9  6      OPC=movzwl_r32_m16  
  nop                            #  9     0x126cff  1      OPC=nop             
  movl %ecx, %r13d               #  10    0x126d00  3      OPC=movl_r32_r32    
  movl %edx, %r12d               #  11    0x126d03  3      OPC=movl_r32_r32    
  testb $0x1, %ah                #  12    0x126d06  3      OPC=testb_rh_imm8   
  je .L_126d40                   #  13    0x126d09  2      OPC=je_label        
  movl %ebx, %ebx                #  14    0x126d0b  2      OPC=movl_r32_r32    
  movswl 0xe(%r15,%rbx,1), %edi  #  15    0x126d0d  6      OPC=movswl_r32_m16  
  movl $0x2, %edx                #  16    0x126d13  5      OPC=movl_r32_imm32  
  xorl %esi, %esi                #  17    0x126d18  2      OPC=xorl_r32_r32    
  nop                            #  18    0x126d1a  1      OPC=nop             
  callq .lseek                   #  19    0x126d1b  5      OPC=callq_label     
  movl %ebx, %ebx                #  20    0x126d20  2      OPC=movl_r32_r32    
  movzwl 0xc(%r15,%rbx,1), %eax  #  21    0x126d22  6      OPC=movzwl_r32_m16  
  nop                            #  22    0x126d28  1      OPC=nop             
  nop                            #  23    0x126d29  1      OPC=nop             
  nop                            #  24    0x126d2a  1      OPC=nop             
  nop                            #  25    0x126d2b  1      OPC=nop             
  nop                            #  26    0x126d2c  1      OPC=nop             
  nop                            #  27    0x126d2d  1      OPC=nop             
  nop                            #  28    0x126d2e  1      OPC=nop             
  nop                            #  29    0x126d2f  1      OPC=nop             
  nop                            #  30    0x126d30  1      OPC=nop             
  nop                            #  31    0x126d31  1      OPC=nop             
  nop                            #  32    0x126d32  1      OPC=nop             
  nop                            #  33    0x126d33  1      OPC=nop             
  nop                            #  34    0x126d34  1      OPC=nop             
  nop                            #  35    0x126d35  1      OPC=nop             
  nop                            #  36    0x126d36  1      OPC=nop             
  nop                            #  37    0x126d37  1      OPC=nop             
  nop                            #  38    0x126d38  1      OPC=nop             
  nop                            #  39    0x126d39  1      OPC=nop             
  nop                            #  40    0x126d3a  1      OPC=nop             
  nop                            #  41    0x126d3b  1      OPC=nop             
  nop                            #  42    0x126d3c  1      OPC=nop             
  nop                            #  43    0x126d3d  1      OPC=nop             
  nop                            #  44    0x126d3e  1      OPC=nop             
  nop                            #  45    0x126d3f  1      OPC=nop             
.L_126d40:                       #        0x126d40  0      OPC=<label>         
  movl %ebx, %ebx                #  46    0x126d40  2      OPC=movl_r32_r32    
  movswl 0xe(%r15,%rbx,1), %edi  #  47    0x126d42  6      OPC=movswl_r32_m16  
  andb $0xef, %ah                #  48    0x126d48  3      OPC=andb_rh_imm8    
  movl %r13d, %edx               #  49    0x126d4b  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                #  50    0x126d4e  2      OPC=movl_r32_r32    
  movw %ax, 0xc(%r15,%rbx,1)     #  51    0x126d50  6      OPC=movw_m16_r16    
  movl %r12d, %esi               #  52    0x126d56  3      OPC=movl_r32_r32    
  movq (%rsp), %rbx              #  53    0x126d59  4      OPC=movq_r64_m64    
  nop                            #  54    0x126d5d  1      OPC=nop             
  nop                            #  55    0x126d5e  1      OPC=nop             
  nop                            #  56    0x126d5f  1      OPC=nop             
  movq 0x8(%rsp), %r12           #  57    0x126d60  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r13          #  58    0x126d65  5      OPC=movq_r64_m64    
  addl $0x18, %esp               #  59    0x126d6a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  60    0x126d6d  3      OPC=addq_r64_r64    
  jmpq .write                    #  61    0x126d70  5      OPC=jmpq_label_1    
  nop                            #  62    0x126d75  1      OPC=nop             
  nop                            #  63    0x126d76  1      OPC=nop             
  nop                            #  64    0x126d77  1      OPC=nop             
  nop                            #  65    0x126d78  1      OPC=nop             
  nop                            #  66    0x126d79  1      OPC=nop             
  nop                            #  67    0x126d7a  1      OPC=nop             
  nop                            #  68    0x126d7b  1      OPC=nop             
  nop                            #  69    0x126d7c  1      OPC=nop             
  nop                            #  70    0x126d7d  1      OPC=nop             
  nop                            #  71    0x126d7e  1      OPC=nop             
  nop                            #  72    0x126d7f  1      OPC=nop             
                                                                               
.size __swrite, .-__swrite

