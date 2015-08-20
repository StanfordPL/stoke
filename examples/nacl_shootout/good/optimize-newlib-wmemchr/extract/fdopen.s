  .text
  .globl fdopen
  .type fdopen, @function

#! file-offset 0x159d80
#! rip-offset  0x119d80
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fdopen:                    #        0x119d80  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x119d80  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x119d85  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x119d8a  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x119d8d  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x119d90  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x119d92  3      OPC=movl_r32_r32   
  nop                       #  7     0x119d95  1      OPC=nop            
  nop                       #  8     0x119d96  1      OPC=nop            
  nop                       #  9     0x119d97  1      OPC=nop            
  nop                       #  10    0x119d98  1      OPC=nop            
  nop                       #  11    0x119d99  1      OPC=nop            
  nop                       #  12    0x119d9a  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x119d9b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x119da0  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x119da7  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x119daa  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x119dac  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x119db1  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x119db6  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x119db8  4      OPC=movl_r32_m32   
  nop                       #  21    0x119dbc  1      OPC=nop            
  nop                       #  22    0x119dbd  1      OPC=nop            
  nop                       #  23    0x119dbe  1      OPC=nop            
  nop                       #  24    0x119dbf  1      OPC=nop            
  addl $0x18, %esp          #  25    0x119dc0  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x119dc3  3      OPC=addq_r64_r64   
  jmpq ._fdopen_r           #  27    0x119dc6  5      OPC=jmpq_label_1   
  nop                       #  28    0x119dcb  1      OPC=nop            
  nop                       #  29    0x119dcc  1      OPC=nop            
  nop                       #  30    0x119dcd  1      OPC=nop            
  nop                       #  31    0x119dce  1      OPC=nop            
  nop                       #  32    0x119dcf  1      OPC=nop            
  nop                       #  33    0x119dd0  1      OPC=nop            
  nop                       #  34    0x119dd1  1      OPC=nop            
  nop                       #  35    0x119dd2  1      OPC=nop            
  nop                       #  36    0x119dd3  1      OPC=nop            
  nop                       #  37    0x119dd4  1      OPC=nop            
  nop                       #  38    0x119dd5  1      OPC=nop            
  nop                       #  39    0x119dd6  1      OPC=nop            
  nop                       #  40    0x119dd7  1      OPC=nop            
  nop                       #  41    0x119dd8  1      OPC=nop            
  nop                       #  42    0x119dd9  1      OPC=nop            
  nop                       #  43    0x119dda  1      OPC=nop            
  nop                       #  44    0x119ddb  1      OPC=nop            
  nop                       #  45    0x119ddc  1      OPC=nop            
  nop                       #  46    0x119ddd  1      OPC=nop            
  nop                       #  47    0x119dde  1      OPC=nop            
  nop                       #  48    0x119ddf  1      OPC=nop            
                                                                         
.size fdopen, .-fdopen

