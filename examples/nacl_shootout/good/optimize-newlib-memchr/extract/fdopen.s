  .text
  .globl fdopen
  .type fdopen, @function

#! file-offset 0x15a4a0
#! rip-offset  0x11a4a0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fdopen:                    #        0x11a4a0  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x11a4a0  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x11a4a5  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x11a4aa  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x11a4ad  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x11a4b0  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x11a4b2  3      OPC=movl_r32_r32   
  nop                       #  7     0x11a4b5  1      OPC=nop            
  nop                       #  8     0x11a4b6  1      OPC=nop            
  nop                       #  9     0x11a4b7  1      OPC=nop            
  nop                       #  10    0x11a4b8  1      OPC=nop            
  nop                       #  11    0x11a4b9  1      OPC=nop            
  nop                       #  12    0x11a4ba  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x11a4bb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x11a4c0  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x11a4c7  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x11a4ca  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x11a4cc  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x11a4d1  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x11a4d6  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x11a4d8  4      OPC=movl_r32_m32   
  nop                       #  21    0x11a4dc  1      OPC=nop            
  nop                       #  22    0x11a4dd  1      OPC=nop            
  nop                       #  23    0x11a4de  1      OPC=nop            
  nop                       #  24    0x11a4df  1      OPC=nop            
  addl $0x18, %esp          #  25    0x11a4e0  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x11a4e3  3      OPC=addq_r64_r64   
  jmpq ._fdopen_r           #  27    0x11a4e6  5      OPC=jmpq_label_1   
  nop                       #  28    0x11a4eb  1      OPC=nop            
  nop                       #  29    0x11a4ec  1      OPC=nop            
  nop                       #  30    0x11a4ed  1      OPC=nop            
  nop                       #  31    0x11a4ee  1      OPC=nop            
  nop                       #  32    0x11a4ef  1      OPC=nop            
  nop                       #  33    0x11a4f0  1      OPC=nop            
  nop                       #  34    0x11a4f1  1      OPC=nop            
  nop                       #  35    0x11a4f2  1      OPC=nop            
  nop                       #  36    0x11a4f3  1      OPC=nop            
  nop                       #  37    0x11a4f4  1      OPC=nop            
  nop                       #  38    0x11a4f5  1      OPC=nop            
  nop                       #  39    0x11a4f6  1      OPC=nop            
  nop                       #  40    0x11a4f7  1      OPC=nop            
  nop                       #  41    0x11a4f8  1      OPC=nop            
  nop                       #  42    0x11a4f9  1      OPC=nop            
  nop                       #  43    0x11a4fa  1      OPC=nop            
  nop                       #  44    0x11a4fb  1      OPC=nop            
  nop                       #  45    0x11a4fc  1      OPC=nop            
  nop                       #  46    0x11a4fd  1      OPC=nop            
  nop                       #  47    0x11a4fe  1      OPC=nop            
  nop                       #  48    0x11a4ff  1      OPC=nop            
                                                                         
.size fdopen, .-fdopen

