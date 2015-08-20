  .text
  .globl wcstoul
  .type wcstoul, @function

#! file-offset 0x183660
#! rip-offset  0x143660
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcstoul:                   #        0x143660  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x143660  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x143665  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x14366a  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x14366c  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x143671  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x143674  3      OPC=addq_r64_r64   
  movl %edx, %r13d          #  7     0x143677  3      OPC=movl_r32_r32   
  movl %esi, %r12d          #  8     0x14367a  3      OPC=movl_r32_r32   
  nop                       #  9     0x14367d  1      OPC=nop            
  nop                       #  10    0x14367e  1      OPC=nop            
  nop                       #  11    0x14367f  1      OPC=nop            
  nop                       #  12    0x143680  1      OPC=nop            
  nop                       #  13    0x143681  1      OPC=nop            
  nop                       #  14    0x143682  1      OPC=nop            
  nop                       #  15    0x143683  1      OPC=nop            
  nop                       #  16    0x143684  1      OPC=nop            
  nop                       #  17    0x143685  1      OPC=nop            
  nop                       #  18    0x143686  1      OPC=nop            
  nop                       #  19    0x143687  1      OPC=nop            
  nop                       #  20    0x143688  1      OPC=nop            
  nop                       #  21    0x143689  1      OPC=nop            
  nop                       #  22    0x14368a  1      OPC=nop            
  nop                       #  23    0x14368b  1      OPC=nop            
  nop                       #  24    0x14368c  1      OPC=nop            
  nop                       #  25    0x14368d  1      OPC=nop            
  nop                       #  26    0x14368e  1      OPC=nop            
  nop                       #  27    0x14368f  1      OPC=nop            
  nop                       #  28    0x143690  1      OPC=nop            
  nop                       #  29    0x143691  1      OPC=nop            
  nop                       #  30    0x143692  1      OPC=nop            
  nop                       #  31    0x143693  1      OPC=nop            
  nop                       #  32    0x143694  1      OPC=nop            
  nop                       #  33    0x143695  1      OPC=nop            
  nop                       #  34    0x143696  1      OPC=nop            
  nop                       #  35    0x143697  1      OPC=nop            
  nop                       #  36    0x143698  1      OPC=nop            
  nop                       #  37    0x143699  1      OPC=nop            
  nop                       #  38    0x14369a  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x14369b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x1436a0  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x1436a7  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x1436aa  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x1436ad  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x1436af  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x1436b4  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x1436b8  5      OPC=movq_r64_m64   
  nop                       #  47    0x1436bd  1      OPC=nop            
  nop                       #  48    0x1436be  1      OPC=nop            
  nop                       #  49    0x1436bf  1      OPC=nop            
  movl %eax, %eax           #  50    0x1436c0  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x1436c2  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x1436c6  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x1436c9  3      OPC=addq_r64_r64   
  jmpq ._wcstoul_r          #  54    0x1436cc  5      OPC=jmpq_label_1   
  nop                       #  55    0x1436d1  1      OPC=nop            
  nop                       #  56    0x1436d2  1      OPC=nop            
  nop                       #  57    0x1436d3  1      OPC=nop            
  nop                       #  58    0x1436d4  1      OPC=nop            
  nop                       #  59    0x1436d5  1      OPC=nop            
  nop                       #  60    0x1436d6  1      OPC=nop            
  nop                       #  61    0x1436d7  1      OPC=nop            
  nop                       #  62    0x1436d8  1      OPC=nop            
  nop                       #  63    0x1436d9  1      OPC=nop            
  nop                       #  64    0x1436da  1      OPC=nop            
  nop                       #  65    0x1436db  1      OPC=nop            
  nop                       #  66    0x1436dc  1      OPC=nop            
  nop                       #  67    0x1436dd  1      OPC=nop            
  nop                       #  68    0x1436de  1      OPC=nop            
  nop                       #  69    0x1436df  1      OPC=nop            
                                                                         
.size wcstoul, .-wcstoul

