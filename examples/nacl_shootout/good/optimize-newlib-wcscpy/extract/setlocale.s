  .text
  .globl setlocale
  .type setlocale, @function

#! file-offset 0x161800
#! rip-offset  0x121800
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.setlocale:                 #        0x121800  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x121800  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x121805  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x12180a  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x12180d  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x121810  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x121812  3      OPC=movl_r32_r32   
  nop                       #  7     0x121815  1      OPC=nop            
  nop                       #  8     0x121816  1      OPC=nop            
  nop                       #  9     0x121817  1      OPC=nop            
  nop                       #  10    0x121818  1      OPC=nop            
  nop                       #  11    0x121819  1      OPC=nop            
  nop                       #  12    0x12181a  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x12181b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x121820  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x121827  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x12182a  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x12182c  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x121831  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x121836  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x121838  4      OPC=movl_r32_m32   
  nop                       #  21    0x12183c  1      OPC=nop            
  nop                       #  22    0x12183d  1      OPC=nop            
  nop                       #  23    0x12183e  1      OPC=nop            
  nop                       #  24    0x12183f  1      OPC=nop            
  addl $0x18, %esp          #  25    0x121840  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x121843  3      OPC=addq_r64_r64   
  jmpq ._setlocale_r        #  27    0x121846  5      OPC=jmpq_label_1   
  nop                       #  28    0x12184b  1      OPC=nop            
  nop                       #  29    0x12184c  1      OPC=nop            
  nop                       #  30    0x12184d  1      OPC=nop            
  nop                       #  31    0x12184e  1      OPC=nop            
  nop                       #  32    0x12184f  1      OPC=nop            
  nop                       #  33    0x121850  1      OPC=nop            
  nop                       #  34    0x121851  1      OPC=nop            
  nop                       #  35    0x121852  1      OPC=nop            
  nop                       #  36    0x121853  1      OPC=nop            
  nop                       #  37    0x121854  1      OPC=nop            
  nop                       #  38    0x121855  1      OPC=nop            
  nop                       #  39    0x121856  1      OPC=nop            
  nop                       #  40    0x121857  1      OPC=nop            
  nop                       #  41    0x121858  1      OPC=nop            
  nop                       #  42    0x121859  1      OPC=nop            
  nop                       #  43    0x12185a  1      OPC=nop            
  nop                       #  44    0x12185b  1      OPC=nop            
  nop                       #  45    0x12185c  1      OPC=nop            
  nop                       #  46    0x12185d  1      OPC=nop            
  nop                       #  47    0x12185e  1      OPC=nop            
  nop                       #  48    0x12185f  1      OPC=nop            
                                                                         
.size setlocale, .-setlocale

