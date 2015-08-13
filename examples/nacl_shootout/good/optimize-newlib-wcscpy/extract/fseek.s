  .text
  .globl fseek
  .type fseek, @function

#! file-offset 0x15bde0
#! rip-offset  0x11bde0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fseek:                     #        0x11bde0  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x11bde0  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x11bde5  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x11bdea  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x11bdec  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x11bdf1  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x11bdf4  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  7     0x11bdf7  3      OPC=movl_r32_r32   
  movl %edx, %r13d          #  8     0x11bdfa  3      OPC=movl_r32_r32   
  nop                       #  9     0x11bdfd  1      OPC=nop            
  nop                       #  10    0x11bdfe  1      OPC=nop            
  nop                       #  11    0x11bdff  1      OPC=nop            
  nop                       #  12    0x11be00  1      OPC=nop            
  nop                       #  13    0x11be01  1      OPC=nop            
  nop                       #  14    0x11be02  1      OPC=nop            
  nop                       #  15    0x11be03  1      OPC=nop            
  nop                       #  16    0x11be04  1      OPC=nop            
  nop                       #  17    0x11be05  1      OPC=nop            
  nop                       #  18    0x11be06  1      OPC=nop            
  nop                       #  19    0x11be07  1      OPC=nop            
  nop                       #  20    0x11be08  1      OPC=nop            
  nop                       #  21    0x11be09  1      OPC=nop            
  nop                       #  22    0x11be0a  1      OPC=nop            
  nop                       #  23    0x11be0b  1      OPC=nop            
  nop                       #  24    0x11be0c  1      OPC=nop            
  nop                       #  25    0x11be0d  1      OPC=nop            
  nop                       #  26    0x11be0e  1      OPC=nop            
  nop                       #  27    0x11be0f  1      OPC=nop            
  nop                       #  28    0x11be10  1      OPC=nop            
  nop                       #  29    0x11be11  1      OPC=nop            
  nop                       #  30    0x11be12  1      OPC=nop            
  nop                       #  31    0x11be13  1      OPC=nop            
  nop                       #  32    0x11be14  1      OPC=nop            
  nop                       #  33    0x11be15  1      OPC=nop            
  nop                       #  34    0x11be16  1      OPC=nop            
  nop                       #  35    0x11be17  1      OPC=nop            
  nop                       #  36    0x11be18  1      OPC=nop            
  nop                       #  37    0x11be19  1      OPC=nop            
  nop                       #  38    0x11be1a  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x11be1b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x11be20  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x11be27  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x11be2a  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x11be2d  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x11be2f  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x11be34  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x11be38  5      OPC=movq_r64_m64   
  nop                       #  47    0x11be3d  1      OPC=nop            
  nop                       #  48    0x11be3e  1      OPC=nop            
  nop                       #  49    0x11be3f  1      OPC=nop            
  movl %eax, %eax           #  50    0x11be40  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x11be42  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x11be46  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x11be49  3      OPC=addq_r64_r64   
  jmpq ._fseek_r            #  54    0x11be4c  5      OPC=jmpq_label_1   
  nop                       #  55    0x11be51  1      OPC=nop            
  nop                       #  56    0x11be52  1      OPC=nop            
  nop                       #  57    0x11be53  1      OPC=nop            
  nop                       #  58    0x11be54  1      OPC=nop            
  nop                       #  59    0x11be55  1      OPC=nop            
  nop                       #  60    0x11be56  1      OPC=nop            
  nop                       #  61    0x11be57  1      OPC=nop            
  nop                       #  62    0x11be58  1      OPC=nop            
  nop                       #  63    0x11be59  1      OPC=nop            
  nop                       #  64    0x11be5a  1      OPC=nop            
  nop                       #  65    0x11be5b  1      OPC=nop            
  nop                       #  66    0x11be5c  1      OPC=nop            
  nop                       #  67    0x11be5d  1      OPC=nop            
  nop                       #  68    0x11be5e  1      OPC=nop            
  nop                       #  69    0x11be5f  1      OPC=nop            
                                                                         
.size fseek, .-fseek

