  .text
  .globl setlocale
  .type setlocale, @function

#! file-offset 0x161b00
#! rip-offset  0x121b00
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.setlocale:                 #        0x121b00  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x121b00  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x121b05  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x121b0a  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x121b0d  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x121b10  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x121b12  3      OPC=movl_r32_r32   
  nop                       #  7     0x121b15  1      OPC=nop            
  nop                       #  8     0x121b16  1      OPC=nop            
  nop                       #  9     0x121b17  1      OPC=nop            
  nop                       #  10    0x121b18  1      OPC=nop            
  nop                       #  11    0x121b19  1      OPC=nop            
  nop                       #  12    0x121b1a  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x121b1b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x121b20  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x121b27  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x121b2a  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x121b2c  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x121b31  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x121b36  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x121b38  4      OPC=movl_r32_m32   
  nop                       #  21    0x121b3c  1      OPC=nop            
  nop                       #  22    0x121b3d  1      OPC=nop            
  nop                       #  23    0x121b3e  1      OPC=nop            
  nop                       #  24    0x121b3f  1      OPC=nop            
  addl $0x18, %esp          #  25    0x121b40  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x121b43  3      OPC=addq_r64_r64   
  jmpq ._setlocale_r        #  27    0x121b46  5      OPC=jmpq_label_1   
  nop                       #  28    0x121b4b  1      OPC=nop            
  nop                       #  29    0x121b4c  1      OPC=nop            
  nop                       #  30    0x121b4d  1      OPC=nop            
  nop                       #  31    0x121b4e  1      OPC=nop            
  nop                       #  32    0x121b4f  1      OPC=nop            
  nop                       #  33    0x121b50  1      OPC=nop            
  nop                       #  34    0x121b51  1      OPC=nop            
  nop                       #  35    0x121b52  1      OPC=nop            
  nop                       #  36    0x121b53  1      OPC=nop            
  nop                       #  37    0x121b54  1      OPC=nop            
  nop                       #  38    0x121b55  1      OPC=nop            
  nop                       #  39    0x121b56  1      OPC=nop            
  nop                       #  40    0x121b57  1      OPC=nop            
  nop                       #  41    0x121b58  1      OPC=nop            
  nop                       #  42    0x121b59  1      OPC=nop            
  nop                       #  43    0x121b5a  1      OPC=nop            
  nop                       #  44    0x121b5b  1      OPC=nop            
  nop                       #  45    0x121b5c  1      OPC=nop            
  nop                       #  46    0x121b5d  1      OPC=nop            
  nop                       #  47    0x121b5e  1      OPC=nop            
  nop                       #  48    0x121b5f  1      OPC=nop            
                                                                         
.size setlocale, .-setlocale

