  .text
  .globl fdopen
  .type fdopen, @function

#! file-offset 0x159a80
#! rip-offset  0x119a80
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fdopen:                    #        0x119a80  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x119a80  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x119a85  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x119a8a  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x119a8d  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x119a90  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x119a92  3      OPC=movl_r32_r32   
  nop                       #  7     0x119a95  1      OPC=nop            
  nop                       #  8     0x119a96  1      OPC=nop            
  nop                       #  9     0x119a97  1      OPC=nop            
  nop                       #  10    0x119a98  1      OPC=nop            
  nop                       #  11    0x119a99  1      OPC=nop            
  nop                       #  12    0x119a9a  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x119a9b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x119aa0  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x119aa7  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x119aaa  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x119aac  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x119ab1  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x119ab6  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x119ab8  4      OPC=movl_r32_m32   
  nop                       #  21    0x119abc  1      OPC=nop            
  nop                       #  22    0x119abd  1      OPC=nop            
  nop                       #  23    0x119abe  1      OPC=nop            
  nop                       #  24    0x119abf  1      OPC=nop            
  addl $0x18, %esp          #  25    0x119ac0  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x119ac3  3      OPC=addq_r64_r64   
  jmpq ._fdopen_r           #  27    0x119ac6  5      OPC=jmpq_label_1   
  nop                       #  28    0x119acb  1      OPC=nop            
  nop                       #  29    0x119acc  1      OPC=nop            
  nop                       #  30    0x119acd  1      OPC=nop            
  nop                       #  31    0x119ace  1      OPC=nop            
  nop                       #  32    0x119acf  1      OPC=nop            
  nop                       #  33    0x119ad0  1      OPC=nop            
  nop                       #  34    0x119ad1  1      OPC=nop            
  nop                       #  35    0x119ad2  1      OPC=nop            
  nop                       #  36    0x119ad3  1      OPC=nop            
  nop                       #  37    0x119ad4  1      OPC=nop            
  nop                       #  38    0x119ad5  1      OPC=nop            
  nop                       #  39    0x119ad6  1      OPC=nop            
  nop                       #  40    0x119ad7  1      OPC=nop            
  nop                       #  41    0x119ad8  1      OPC=nop            
  nop                       #  42    0x119ad9  1      OPC=nop            
  nop                       #  43    0x119ada  1      OPC=nop            
  nop                       #  44    0x119adb  1      OPC=nop            
  nop                       #  45    0x119adc  1      OPC=nop            
  nop                       #  46    0x119add  1      OPC=nop            
  nop                       #  47    0x119ade  1      OPC=nop            
  nop                       #  48    0x119adf  1      OPC=nop            
                                                                         
.size fdopen, .-fdopen

