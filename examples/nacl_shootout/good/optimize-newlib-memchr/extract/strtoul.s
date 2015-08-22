  .text
  .globl strtoul
  .type strtoul, @function

#! file-offset 0x16cae0
#! rip-offset  0x12cae0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.strtoul:                   #        0x12cae0  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x12cae0  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x12cae5  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x12caea  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x12caec  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x12caf1  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x12caf4  3      OPC=addq_r64_r64   
  movl %edx, %r13d          #  7     0x12caf7  3      OPC=movl_r32_r32   
  movl %esi, %r12d          #  8     0x12cafa  3      OPC=movl_r32_r32   
  nop                       #  9     0x12cafd  1      OPC=nop            
  nop                       #  10    0x12cafe  1      OPC=nop            
  nop                       #  11    0x12caff  1      OPC=nop            
  nop                       #  12    0x12cb00  1      OPC=nop            
  nop                       #  13    0x12cb01  1      OPC=nop            
  nop                       #  14    0x12cb02  1      OPC=nop            
  nop                       #  15    0x12cb03  1      OPC=nop            
  nop                       #  16    0x12cb04  1      OPC=nop            
  nop                       #  17    0x12cb05  1      OPC=nop            
  nop                       #  18    0x12cb06  1      OPC=nop            
  nop                       #  19    0x12cb07  1      OPC=nop            
  nop                       #  20    0x12cb08  1      OPC=nop            
  nop                       #  21    0x12cb09  1      OPC=nop            
  nop                       #  22    0x12cb0a  1      OPC=nop            
  nop                       #  23    0x12cb0b  1      OPC=nop            
  nop                       #  24    0x12cb0c  1      OPC=nop            
  nop                       #  25    0x12cb0d  1      OPC=nop            
  nop                       #  26    0x12cb0e  1      OPC=nop            
  nop                       #  27    0x12cb0f  1      OPC=nop            
  nop                       #  28    0x12cb10  1      OPC=nop            
  nop                       #  29    0x12cb11  1      OPC=nop            
  nop                       #  30    0x12cb12  1      OPC=nop            
  nop                       #  31    0x12cb13  1      OPC=nop            
  nop                       #  32    0x12cb14  1      OPC=nop            
  nop                       #  33    0x12cb15  1      OPC=nop            
  nop                       #  34    0x12cb16  1      OPC=nop            
  nop                       #  35    0x12cb17  1      OPC=nop            
  nop                       #  36    0x12cb18  1      OPC=nop            
  nop                       #  37    0x12cb19  1      OPC=nop            
  nop                       #  38    0x12cb1a  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x12cb1b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x12cb20  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x12cb27  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x12cb2a  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x12cb2d  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x12cb2f  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x12cb34  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x12cb38  5      OPC=movq_r64_m64   
  nop                       #  47    0x12cb3d  1      OPC=nop            
  nop                       #  48    0x12cb3e  1      OPC=nop            
  nop                       #  49    0x12cb3f  1      OPC=nop            
  movl %eax, %eax           #  50    0x12cb40  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x12cb42  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x12cb46  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x12cb49  3      OPC=addq_r64_r64   
  jmpq ._strtoul_r          #  54    0x12cb4c  5      OPC=jmpq_label_1   
  nop                       #  55    0x12cb51  1      OPC=nop            
  nop                       #  56    0x12cb52  1      OPC=nop            
  nop                       #  57    0x12cb53  1      OPC=nop            
  nop                       #  58    0x12cb54  1      OPC=nop            
  nop                       #  59    0x12cb55  1      OPC=nop            
  nop                       #  60    0x12cb56  1      OPC=nop            
  nop                       #  61    0x12cb57  1      OPC=nop            
  nop                       #  62    0x12cb58  1      OPC=nop            
  nop                       #  63    0x12cb59  1      OPC=nop            
  nop                       #  64    0x12cb5a  1      OPC=nop            
  nop                       #  65    0x12cb5b  1      OPC=nop            
  nop                       #  66    0x12cb5c  1      OPC=nop            
  nop                       #  67    0x12cb5d  1      OPC=nop            
  nop                       #  68    0x12cb5e  1      OPC=nop            
  nop                       #  69    0x12cb5f  1      OPC=nop            
                                                                         
.size strtoul, .-strtoul

