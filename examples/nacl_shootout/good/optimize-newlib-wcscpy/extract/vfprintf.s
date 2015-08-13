  .text
  .globl vfprintf
  .type vfprintf, @function

#! file-offset 0x180620
#! rip-offset  0x140620
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.vfprintf:                  #        0x140620  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x140620  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x140625  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x14062a  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x14062c  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x140631  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x140634  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  7     0x140637  3      OPC=movl_r32_r32   
  movl %edx, %r13d          #  8     0x14063a  3      OPC=movl_r32_r32   
  nop                       #  9     0x14063d  1      OPC=nop            
  nop                       #  10    0x14063e  1      OPC=nop            
  nop                       #  11    0x14063f  1      OPC=nop            
  nop                       #  12    0x140640  1      OPC=nop            
  nop                       #  13    0x140641  1      OPC=nop            
  nop                       #  14    0x140642  1      OPC=nop            
  nop                       #  15    0x140643  1      OPC=nop            
  nop                       #  16    0x140644  1      OPC=nop            
  nop                       #  17    0x140645  1      OPC=nop            
  nop                       #  18    0x140646  1      OPC=nop            
  nop                       #  19    0x140647  1      OPC=nop            
  nop                       #  20    0x140648  1      OPC=nop            
  nop                       #  21    0x140649  1      OPC=nop            
  nop                       #  22    0x14064a  1      OPC=nop            
  nop                       #  23    0x14064b  1      OPC=nop            
  nop                       #  24    0x14064c  1      OPC=nop            
  nop                       #  25    0x14064d  1      OPC=nop            
  nop                       #  26    0x14064e  1      OPC=nop            
  nop                       #  27    0x14064f  1      OPC=nop            
  nop                       #  28    0x140650  1      OPC=nop            
  nop                       #  29    0x140651  1      OPC=nop            
  nop                       #  30    0x140652  1      OPC=nop            
  nop                       #  31    0x140653  1      OPC=nop            
  nop                       #  32    0x140654  1      OPC=nop            
  nop                       #  33    0x140655  1      OPC=nop            
  nop                       #  34    0x140656  1      OPC=nop            
  nop                       #  35    0x140657  1      OPC=nop            
  nop                       #  36    0x140658  1      OPC=nop            
  nop                       #  37    0x140659  1      OPC=nop            
  nop                       #  38    0x14065a  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x14065b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x140660  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x140667  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x14066a  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x14066d  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x14066f  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x140674  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x140678  5      OPC=movq_r64_m64   
  nop                       #  47    0x14067d  1      OPC=nop            
  nop                       #  48    0x14067e  1      OPC=nop            
  nop                       #  49    0x14067f  1      OPC=nop            
  movl %eax, %eax           #  50    0x140680  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x140682  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x140686  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x140689  3      OPC=addq_r64_r64   
  jmpq ._vfprintf_r         #  54    0x14068c  5      OPC=jmpq_label_1   
  nop                       #  55    0x140691  1      OPC=nop            
  nop                       #  56    0x140692  1      OPC=nop            
  nop                       #  57    0x140693  1      OPC=nop            
  nop                       #  58    0x140694  1      OPC=nop            
  nop                       #  59    0x140695  1      OPC=nop            
  nop                       #  60    0x140696  1      OPC=nop            
  nop                       #  61    0x140697  1      OPC=nop            
  nop                       #  62    0x140698  1      OPC=nop            
  nop                       #  63    0x140699  1      OPC=nop            
  nop                       #  64    0x14069a  1      OPC=nop            
  nop                       #  65    0x14069b  1      OPC=nop            
  nop                       #  66    0x14069c  1      OPC=nop            
  nop                       #  67    0x14069d  1      OPC=nop            
  nop                       #  68    0x14069e  1      OPC=nop            
  nop                       #  69    0x14069f  1      OPC=nop            
                                                                         
.size vfprintf, .-vfprintf

