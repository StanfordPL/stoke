  .text
  .globl fopen
  .type fopen, @function

#! file-offset 0x15bb00
#! rip-offset  0x11bb00
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fopen:                     #        0x11bb00  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x11bb00  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x11bb05  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x11bb0a  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x11bb0d  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x11bb10  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x11bb12  3      OPC=movl_r32_r32   
  nop                       #  7     0x11bb15  1      OPC=nop            
  nop                       #  8     0x11bb16  1      OPC=nop            
  nop                       #  9     0x11bb17  1      OPC=nop            
  nop                       #  10    0x11bb18  1      OPC=nop            
  nop                       #  11    0x11bb19  1      OPC=nop            
  nop                       #  12    0x11bb1a  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x11bb1b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x11bb20  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x11bb27  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x11bb2a  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x11bb2c  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x11bb31  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x11bb36  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x11bb38  4      OPC=movl_r32_m32   
  nop                       #  21    0x11bb3c  1      OPC=nop            
  nop                       #  22    0x11bb3d  1      OPC=nop            
  nop                       #  23    0x11bb3e  1      OPC=nop            
  nop                       #  24    0x11bb3f  1      OPC=nop            
  addl $0x18, %esp          #  25    0x11bb40  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x11bb43  3      OPC=addq_r64_r64   
  jmpq ._fopen_r            #  27    0x11bb46  5      OPC=jmpq_label_1   
  nop                       #  28    0x11bb4b  1      OPC=nop            
  nop                       #  29    0x11bb4c  1      OPC=nop            
  nop                       #  30    0x11bb4d  1      OPC=nop            
  nop                       #  31    0x11bb4e  1      OPC=nop            
  nop                       #  32    0x11bb4f  1      OPC=nop            
  nop                       #  33    0x11bb50  1      OPC=nop            
  nop                       #  34    0x11bb51  1      OPC=nop            
  nop                       #  35    0x11bb52  1      OPC=nop            
  nop                       #  36    0x11bb53  1      OPC=nop            
  nop                       #  37    0x11bb54  1      OPC=nop            
  nop                       #  38    0x11bb55  1      OPC=nop            
  nop                       #  39    0x11bb56  1      OPC=nop            
  nop                       #  40    0x11bb57  1      OPC=nop            
  nop                       #  41    0x11bb58  1      OPC=nop            
  nop                       #  42    0x11bb59  1      OPC=nop            
  nop                       #  43    0x11bb5a  1      OPC=nop            
  nop                       #  44    0x11bb5b  1      OPC=nop            
  nop                       #  45    0x11bb5c  1      OPC=nop            
  nop                       #  46    0x11bb5d  1      OPC=nop            
  nop                       #  47    0x11bb5e  1      OPC=nop            
  nop                       #  48    0x11bb5f  1      OPC=nop            
                                                                         
.size fopen, .-fopen

