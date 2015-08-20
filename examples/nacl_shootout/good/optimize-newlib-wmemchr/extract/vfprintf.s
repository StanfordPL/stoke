  .text
  .globl vfprintf
  .type vfprintf, @function

#! file-offset 0x180920
#! rip-offset  0x140920
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.vfprintf:                  #        0x140920  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x140920  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x140925  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x14092a  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x14092c  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x140931  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x140934  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  7     0x140937  3      OPC=movl_r32_r32   
  movl %edx, %r13d          #  8     0x14093a  3      OPC=movl_r32_r32   
  nop                       #  9     0x14093d  1      OPC=nop            
  nop                       #  10    0x14093e  1      OPC=nop            
  nop                       #  11    0x14093f  1      OPC=nop            
  nop                       #  12    0x140940  1      OPC=nop            
  nop                       #  13    0x140941  1      OPC=nop            
  nop                       #  14    0x140942  1      OPC=nop            
  nop                       #  15    0x140943  1      OPC=nop            
  nop                       #  16    0x140944  1      OPC=nop            
  nop                       #  17    0x140945  1      OPC=nop            
  nop                       #  18    0x140946  1      OPC=nop            
  nop                       #  19    0x140947  1      OPC=nop            
  nop                       #  20    0x140948  1      OPC=nop            
  nop                       #  21    0x140949  1      OPC=nop            
  nop                       #  22    0x14094a  1      OPC=nop            
  nop                       #  23    0x14094b  1      OPC=nop            
  nop                       #  24    0x14094c  1      OPC=nop            
  nop                       #  25    0x14094d  1      OPC=nop            
  nop                       #  26    0x14094e  1      OPC=nop            
  nop                       #  27    0x14094f  1      OPC=nop            
  nop                       #  28    0x140950  1      OPC=nop            
  nop                       #  29    0x140951  1      OPC=nop            
  nop                       #  30    0x140952  1      OPC=nop            
  nop                       #  31    0x140953  1      OPC=nop            
  nop                       #  32    0x140954  1      OPC=nop            
  nop                       #  33    0x140955  1      OPC=nop            
  nop                       #  34    0x140956  1      OPC=nop            
  nop                       #  35    0x140957  1      OPC=nop            
  nop                       #  36    0x140958  1      OPC=nop            
  nop                       #  37    0x140959  1      OPC=nop            
  nop                       #  38    0x14095a  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x14095b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x140960  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x140967  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x14096a  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x14096d  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x14096f  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x140974  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x140978  5      OPC=movq_r64_m64   
  nop                       #  47    0x14097d  1      OPC=nop            
  nop                       #  48    0x14097e  1      OPC=nop            
  nop                       #  49    0x14097f  1      OPC=nop            
  movl %eax, %eax           #  50    0x140980  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x140982  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x140986  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x140989  3      OPC=addq_r64_r64   
  jmpq ._vfprintf_r         #  54    0x14098c  5      OPC=jmpq_label_1   
  nop                       #  55    0x140991  1      OPC=nop            
  nop                       #  56    0x140992  1      OPC=nop            
  nop                       #  57    0x140993  1      OPC=nop            
  nop                       #  58    0x140994  1      OPC=nop            
  nop                       #  59    0x140995  1      OPC=nop            
  nop                       #  60    0x140996  1      OPC=nop            
  nop                       #  61    0x140997  1      OPC=nop            
  nop                       #  62    0x140998  1      OPC=nop            
  nop                       #  63    0x140999  1      OPC=nop            
  nop                       #  64    0x14099a  1      OPC=nop            
  nop                       #  65    0x14099b  1      OPC=nop            
  nop                       #  66    0x14099c  1      OPC=nop            
  nop                       #  67    0x14099d  1      OPC=nop            
  nop                       #  68    0x14099e  1      OPC=nop            
  nop                       #  69    0x14099f  1      OPC=nop            
                                                                         
.size vfprintf, .-vfprintf

