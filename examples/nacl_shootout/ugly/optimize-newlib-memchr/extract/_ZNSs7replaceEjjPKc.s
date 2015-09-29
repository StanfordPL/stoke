  .text
  .globl _ZNSs7replaceEjjPKc
  .type _ZNSs7replaceEjjPKc, @function

#! file-offset 0xefbc0
#! rip-offset  0xafbc0
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  Opcode             
._ZNSs7replaceEjjPKc:         #        0xafbc0  0      OPC=<label>        
  movq %r14, -0x8(%rsp)       #  1     0xafbc0  5      OPC=movq_m64_r64   
  movl %ecx, %r14d            #  2     0xafbc5  3      OPC=movl_r32_r32   
  movq %rbx, -0x20(%rsp)      #  3     0xafbc8  5      OPC=movq_m64_r64   
  movq %r12, -0x18(%rsp)      #  4     0xafbcd  5      OPC=movq_m64_r64   
  movq %r13, -0x10(%rsp)      #  5     0xafbd2  5      OPC=movq_m64_r64   
  movl %esi, %r12d            #  6     0xafbd7  3      OPC=movl_r32_r32   
  subl $0x28, %esp            #  7     0xafbda  3      OPC=subl_r32_imm8  
  addq %r15, %rsp             #  8     0xafbdd  3      OPC=addq_r64_r64   
  movl %edx, %r13d            #  9     0xafbe0  3      OPC=movl_r32_r32   
  movl %edi, %ebx             #  10    0xafbe3  2      OPC=movl_r32_r32   
  movl %r14d, %edi            #  11    0xafbe5  3      OPC=movl_r32_r32   
  nop                         #  12    0xafbe8  1      OPC=nop            
  nop                         #  13    0xafbe9  1      OPC=nop            
  nop                         #  14    0xafbea  1      OPC=nop            
  nop                         #  15    0xafbeb  1      OPC=nop            
  nop                         #  16    0xafbec  1      OPC=nop            
  nop                         #  17    0xafbed  1      OPC=nop            
  nop                         #  18    0xafbee  1      OPC=nop            
  nop                         #  19    0xafbef  1      OPC=nop            
  nop                         #  20    0xafbf0  1      OPC=nop            
  nop                         #  21    0xafbf1  1      OPC=nop            
  nop                         #  22    0xafbf2  1      OPC=nop            
  nop                         #  23    0xafbf3  1      OPC=nop            
  nop                         #  24    0xafbf4  1      OPC=nop            
  nop                         #  25    0xafbf5  1      OPC=nop            
  nop                         #  26    0xafbf6  1      OPC=nop            
  nop                         #  27    0xafbf7  1      OPC=nop            
  nop                         #  28    0xafbf8  1      OPC=nop            
  nop                         #  29    0xafbf9  1      OPC=nop            
  nop                         #  30    0xafbfa  1      OPC=nop            
  callq .strlen               #  31    0xafbfb  5      OPC=callq_label    
  movl %r14d, %ecx            #  32    0xafc00  3      OPC=movl_r32_r32   
  movl %r13d, %edx            #  33    0xafc03  3      OPC=movl_r32_r32   
  movl %r12d, %esi            #  34    0xafc06  3      OPC=movl_r32_r32   
  movl %ebx, %edi             #  35    0xafc09  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12       #  36    0xafc0b  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx        #  37    0xafc10  5      OPC=movq_r64_m64   
  movq 0x18(%rsp), %r13       #  38    0xafc15  5      OPC=movq_r64_m64   
  movq 0x20(%rsp), %r14       #  39    0xafc1a  5      OPC=movq_r64_m64   
  nop                         #  40    0xafc1f  1      OPC=nop            
  movl %eax, %r8d             #  41    0xafc20  3      OPC=movl_r32_r32   
  addl $0x28, %esp            #  42    0xafc23  3      OPC=addl_r32_imm8  
  addq %r15, %rsp             #  43    0xafc26  3      OPC=addq_r64_r64   
  jmpq ._ZNSs7replaceEjjPKcj  #  44    0xafc29  5      OPC=jmpq_label_1   
  nop                         #  45    0xafc2e  1      OPC=nop            
  nop                         #  46    0xafc2f  1      OPC=nop            
  nop                         #  47    0xafc30  1      OPC=nop            
  nop                         #  48    0xafc31  1      OPC=nop            
  nop                         #  49    0xafc32  1      OPC=nop            
  nop                         #  50    0xafc33  1      OPC=nop            
  nop                         #  51    0xafc34  1      OPC=nop            
  nop                         #  52    0xafc35  1      OPC=nop            
  nop                         #  53    0xafc36  1      OPC=nop            
  nop                         #  54    0xafc37  1      OPC=nop            
  nop                         #  55    0xafc38  1      OPC=nop            
  nop                         #  56    0xafc39  1      OPC=nop            
  nop                         #  57    0xafc3a  1      OPC=nop            
  nop                         #  58    0xafc3b  1      OPC=nop            
  nop                         #  59    0xafc3c  1      OPC=nop            
  nop                         #  60    0xafc3d  1      OPC=nop            
  nop                         #  61    0xafc3e  1      OPC=nop            
  nop                         #  62    0xafc3f  1      OPC=nop            
                                                                          
.size _ZNSs7replaceEjjPKc, .-_ZNSs7replaceEjjPKc

