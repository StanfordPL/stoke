  .text
  .globl setlocale
  .type setlocale, @function

#! file-offset 0x162220
#! rip-offset  0x122220
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.setlocale:                 #        0x122220  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x122220  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x122225  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x12222a  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x12222d  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x122230  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x122232  3      OPC=movl_r32_r32   
  nop                       #  7     0x122235  1      OPC=nop            
  nop                       #  8     0x122236  1      OPC=nop            
  nop                       #  9     0x122237  1      OPC=nop            
  nop                       #  10    0x122238  1      OPC=nop            
  nop                       #  11    0x122239  1      OPC=nop            
  nop                       #  12    0x12223a  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x12223b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x122240  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x122247  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x12224a  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x12224c  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x122251  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x122256  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x122258  4      OPC=movl_r32_m32   
  nop                       #  21    0x12225c  1      OPC=nop            
  nop                       #  22    0x12225d  1      OPC=nop            
  nop                       #  23    0x12225e  1      OPC=nop            
  nop                       #  24    0x12225f  1      OPC=nop            
  addl $0x18, %esp          #  25    0x122260  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x122263  3      OPC=addq_r64_r64   
  jmpq ._setlocale_r        #  27    0x122266  5      OPC=jmpq_label_1   
  nop                       #  28    0x12226b  1      OPC=nop            
  nop                       #  29    0x12226c  1      OPC=nop            
  nop                       #  30    0x12226d  1      OPC=nop            
  nop                       #  31    0x12226e  1      OPC=nop            
  nop                       #  32    0x12226f  1      OPC=nop            
  nop                       #  33    0x122270  1      OPC=nop            
  nop                       #  34    0x122271  1      OPC=nop            
  nop                       #  35    0x122272  1      OPC=nop            
  nop                       #  36    0x122273  1      OPC=nop            
  nop                       #  37    0x122274  1      OPC=nop            
  nop                       #  38    0x122275  1      OPC=nop            
  nop                       #  39    0x122276  1      OPC=nop            
  nop                       #  40    0x122277  1      OPC=nop            
  nop                       #  41    0x122278  1      OPC=nop            
  nop                       #  42    0x122279  1      OPC=nop            
  nop                       #  43    0x12227a  1      OPC=nop            
  nop                       #  44    0x12227b  1      OPC=nop            
  nop                       #  45    0x12227c  1      OPC=nop            
  nop                       #  46    0x12227d  1      OPC=nop            
  nop                       #  47    0x12227e  1      OPC=nop            
  nop                       #  48    0x12227f  1      OPC=nop            
                                                                         
.size setlocale, .-setlocale

