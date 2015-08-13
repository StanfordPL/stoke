  .text
  .globl vsprintf
  .type vsprintf, @function

#! file-offset 0x1808a0
#! rip-offset  0x1408a0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.vsprintf:                  #        0x1408a0  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x1408a0  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x1408a5  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x1408aa  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x1408ac  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x1408b1  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x1408b4  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  7     0x1408b7  3      OPC=movl_r32_r32   
  movl %edx, %r13d          #  8     0x1408ba  3      OPC=movl_r32_r32   
  nop                       #  9     0x1408bd  1      OPC=nop            
  nop                       #  10    0x1408be  1      OPC=nop            
  nop                       #  11    0x1408bf  1      OPC=nop            
  nop                       #  12    0x1408c0  1      OPC=nop            
  nop                       #  13    0x1408c1  1      OPC=nop            
  nop                       #  14    0x1408c2  1      OPC=nop            
  nop                       #  15    0x1408c3  1      OPC=nop            
  nop                       #  16    0x1408c4  1      OPC=nop            
  nop                       #  17    0x1408c5  1      OPC=nop            
  nop                       #  18    0x1408c6  1      OPC=nop            
  nop                       #  19    0x1408c7  1      OPC=nop            
  nop                       #  20    0x1408c8  1      OPC=nop            
  nop                       #  21    0x1408c9  1      OPC=nop            
  nop                       #  22    0x1408ca  1      OPC=nop            
  nop                       #  23    0x1408cb  1      OPC=nop            
  nop                       #  24    0x1408cc  1      OPC=nop            
  nop                       #  25    0x1408cd  1      OPC=nop            
  nop                       #  26    0x1408ce  1      OPC=nop            
  nop                       #  27    0x1408cf  1      OPC=nop            
  nop                       #  28    0x1408d0  1      OPC=nop            
  nop                       #  29    0x1408d1  1      OPC=nop            
  nop                       #  30    0x1408d2  1      OPC=nop            
  nop                       #  31    0x1408d3  1      OPC=nop            
  nop                       #  32    0x1408d4  1      OPC=nop            
  nop                       #  33    0x1408d5  1      OPC=nop            
  nop                       #  34    0x1408d6  1      OPC=nop            
  nop                       #  35    0x1408d7  1      OPC=nop            
  nop                       #  36    0x1408d8  1      OPC=nop            
  nop                       #  37    0x1408d9  1      OPC=nop            
  nop                       #  38    0x1408da  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x1408db  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x1408e0  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x1408e7  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x1408ea  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x1408ed  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x1408ef  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x1408f4  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x1408f8  5      OPC=movq_r64_m64   
  nop                       #  47    0x1408fd  1      OPC=nop            
  nop                       #  48    0x1408fe  1      OPC=nop            
  nop                       #  49    0x1408ff  1      OPC=nop            
  movl %eax, %eax           #  50    0x140900  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x140902  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x140906  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x140909  3      OPC=addq_r64_r64   
  jmpq ._vsprintf_r         #  54    0x14090c  5      OPC=jmpq_label_1   
  nop                       #  55    0x140911  1      OPC=nop            
  nop                       #  56    0x140912  1      OPC=nop            
  nop                       #  57    0x140913  1      OPC=nop            
  nop                       #  58    0x140914  1      OPC=nop            
  nop                       #  59    0x140915  1      OPC=nop            
  nop                       #  60    0x140916  1      OPC=nop            
  nop                       #  61    0x140917  1      OPC=nop            
  nop                       #  62    0x140918  1      OPC=nop            
  nop                       #  63    0x140919  1      OPC=nop            
  nop                       #  64    0x14091a  1      OPC=nop            
  nop                       #  65    0x14091b  1      OPC=nop            
  nop                       #  66    0x14091c  1      OPC=nop            
  nop                       #  67    0x14091d  1      OPC=nop            
  nop                       #  68    0x14091e  1      OPC=nop            
  nop                       #  69    0x14091f  1      OPC=nop            
                                                                         
.size vsprintf, .-vsprintf

