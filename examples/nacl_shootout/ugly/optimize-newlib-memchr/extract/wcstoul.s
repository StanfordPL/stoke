  .text
  .globl wcstoul
  .type wcstoul, @function

#! file-offset 0x183d80
#! rip-offset  0x143d80
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcstoul:                   #        0x143d80  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x143d80  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x143d85  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x143d8a  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x143d8c  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x143d91  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x143d94  3      OPC=addq_r64_r64   
  movl %edx, %r13d          #  7     0x143d97  3      OPC=movl_r32_r32   
  movl %esi, %r12d          #  8     0x143d9a  3      OPC=movl_r32_r32   
  nop                       #  9     0x143d9d  1      OPC=nop            
  nop                       #  10    0x143d9e  1      OPC=nop            
  nop                       #  11    0x143d9f  1      OPC=nop            
  nop                       #  12    0x143da0  1      OPC=nop            
  nop                       #  13    0x143da1  1      OPC=nop            
  nop                       #  14    0x143da2  1      OPC=nop            
  nop                       #  15    0x143da3  1      OPC=nop            
  nop                       #  16    0x143da4  1      OPC=nop            
  nop                       #  17    0x143da5  1      OPC=nop            
  nop                       #  18    0x143da6  1      OPC=nop            
  nop                       #  19    0x143da7  1      OPC=nop            
  nop                       #  20    0x143da8  1      OPC=nop            
  nop                       #  21    0x143da9  1      OPC=nop            
  nop                       #  22    0x143daa  1      OPC=nop            
  nop                       #  23    0x143dab  1      OPC=nop            
  nop                       #  24    0x143dac  1      OPC=nop            
  nop                       #  25    0x143dad  1      OPC=nop            
  nop                       #  26    0x143dae  1      OPC=nop            
  nop                       #  27    0x143daf  1      OPC=nop            
  nop                       #  28    0x143db0  1      OPC=nop            
  nop                       #  29    0x143db1  1      OPC=nop            
  nop                       #  30    0x143db2  1      OPC=nop            
  nop                       #  31    0x143db3  1      OPC=nop            
  nop                       #  32    0x143db4  1      OPC=nop            
  nop                       #  33    0x143db5  1      OPC=nop            
  nop                       #  34    0x143db6  1      OPC=nop            
  nop                       #  35    0x143db7  1      OPC=nop            
  nop                       #  36    0x143db8  1      OPC=nop            
  nop                       #  37    0x143db9  1      OPC=nop            
  nop                       #  38    0x143dba  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x143dbb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x143dc0  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x143dc7  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x143dca  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x143dcd  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x143dcf  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x143dd4  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x143dd8  5      OPC=movq_r64_m64   
  nop                       #  47    0x143ddd  1      OPC=nop            
  nop                       #  48    0x143dde  1      OPC=nop            
  nop                       #  49    0x143ddf  1      OPC=nop            
  movl %eax, %eax           #  50    0x143de0  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x143de2  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x143de6  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x143de9  3      OPC=addq_r64_r64   
  jmpq ._wcstoul_r          #  54    0x143dec  5      OPC=jmpq_label_1   
  nop                       #  55    0x143df1  1      OPC=nop            
  nop                       #  56    0x143df2  1      OPC=nop            
  nop                       #  57    0x143df3  1      OPC=nop            
  nop                       #  58    0x143df4  1      OPC=nop            
  nop                       #  59    0x143df5  1      OPC=nop            
  nop                       #  60    0x143df6  1      OPC=nop            
  nop                       #  61    0x143df7  1      OPC=nop            
  nop                       #  62    0x143df8  1      OPC=nop            
  nop                       #  63    0x143df9  1      OPC=nop            
  nop                       #  64    0x143dfa  1      OPC=nop            
  nop                       #  65    0x143dfb  1      OPC=nop            
  nop                       #  66    0x143dfc  1      OPC=nop            
  nop                       #  67    0x143dfd  1      OPC=nop            
  nop                       #  68    0x143dfe  1      OPC=nop            
  nop                       #  69    0x143dff  1      OPC=nop            
                                                                         
.size wcstoul, .-wcstoul

