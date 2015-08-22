  .text
  .globl _ZNSs6insertEjPKc
  .type _ZNSs6insertEjPKc, @function

#! file-offset 0xf0240
#! rip-offset  0xb0240
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode             
._ZNSs6insertEjPKc:         #        0xb0240  0      OPC=<label>        
  movq %r13, -0x8(%rsp)     #  1     0xb0240  5      OPC=movq_m64_r64   
  movl %edx, %r13d          #  2     0xb0245  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)    #  3     0xb0248  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  4     0xb024d  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  5     0xb0252  2      OPC=movl_r32_r32   
  subl $0x18, %esp          #  6     0xb0254  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0xb0257  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  8     0xb025a  3      OPC=movl_r32_r32   
  movl %r13d, %edi          #  9     0xb025d  3      OPC=movl_r32_r32   
  nop                       #  10    0xb0260  1      OPC=nop            
  nop                       #  11    0xb0261  1      OPC=nop            
  nop                       #  12    0xb0262  1      OPC=nop            
  nop                       #  13    0xb0263  1      OPC=nop            
  nop                       #  14    0xb0264  1      OPC=nop            
  nop                       #  15    0xb0265  1      OPC=nop            
  nop                       #  16    0xb0266  1      OPC=nop            
  nop                       #  17    0xb0267  1      OPC=nop            
  nop                       #  18    0xb0268  1      OPC=nop            
  nop                       #  19    0xb0269  1      OPC=nop            
  nop                       #  20    0xb026a  1      OPC=nop            
  nop                       #  21    0xb026b  1      OPC=nop            
  nop                       #  22    0xb026c  1      OPC=nop            
  nop                       #  23    0xb026d  1      OPC=nop            
  nop                       #  24    0xb026e  1      OPC=nop            
  nop                       #  25    0xb026f  1      OPC=nop            
  nop                       #  26    0xb0270  1      OPC=nop            
  nop                       #  27    0xb0271  1      OPC=nop            
  nop                       #  28    0xb0272  1      OPC=nop            
  nop                       #  29    0xb0273  1      OPC=nop            
  nop                       #  30    0xb0274  1      OPC=nop            
  nop                       #  31    0xb0275  1      OPC=nop            
  nop                       #  32    0xb0276  1      OPC=nop            
  nop                       #  33    0xb0277  1      OPC=nop            
  nop                       #  34    0xb0278  1      OPC=nop            
  nop                       #  35    0xb0279  1      OPC=nop            
  nop                       #  36    0xb027a  1      OPC=nop            
  callq .strlen             #  37    0xb027b  5      OPC=callq_label    
  movl %r13d, %edx          #  38    0xb0280  3      OPC=movl_r32_r32   
  movl %r12d, %esi          #  39    0xb0283  3      OPC=movl_r32_r32   
  movl %ebx, %edi           #  40    0xb0286  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  41    0xb0288  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  42    0xb028d  4      OPC=movq_r64_m64   
  movl %eax, %ecx           #  43    0xb0291  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13     #  44    0xb0293  5      OPC=movq_r64_m64   
  addl $0x18, %esp          #  45    0xb0298  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  46    0xb029b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax            #  47    0xb029e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNSs6insertEjPKcj  #  48    0xb02a0  5      OPC=jmpq_label_1   
  nop                       #  49    0xb02a5  1      OPC=nop            
  nop                       #  50    0xb02a6  1      OPC=nop            
  nop                       #  51    0xb02a7  1      OPC=nop            
  nop                       #  52    0xb02a8  1      OPC=nop            
  nop                       #  53    0xb02a9  1      OPC=nop            
  nop                       #  54    0xb02aa  1      OPC=nop            
  nop                       #  55    0xb02ab  1      OPC=nop            
  nop                       #  56    0xb02ac  1      OPC=nop            
  nop                       #  57    0xb02ad  1      OPC=nop            
  nop                       #  58    0xb02ae  1      OPC=nop            
  nop                       #  59    0xb02af  1      OPC=nop            
  nop                       #  60    0xb02b0  1      OPC=nop            
  nop                       #  61    0xb02b1  1      OPC=nop            
  nop                       #  62    0xb02b2  1      OPC=nop            
  nop                       #  63    0xb02b3  1      OPC=nop            
  nop                       #  64    0xb02b4  1      OPC=nop            
  nop                       #  65    0xb02b5  1      OPC=nop            
  nop                       #  66    0xb02b6  1      OPC=nop            
  nop                       #  67    0xb02b7  1      OPC=nop            
  nop                       #  68    0xb02b8  1      OPC=nop            
  nop                       #  69    0xb02b9  1      OPC=nop            
  nop                       #  70    0xb02ba  1      OPC=nop            
  nop                       #  71    0xb02bb  1      OPC=nop            
  nop                       #  72    0xb02bc  1      OPC=nop            
  nop                       #  73    0xb02bd  1      OPC=nop            
  nop                       #  74    0xb02be  1      OPC=nop            
  nop                       #  75    0xb02bf  1      OPC=nop            
                                                                        
.size _ZNSs6insertEjPKc, .-_ZNSs6insertEjPKc

