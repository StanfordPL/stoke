  .text
  .globl _ZNSs6insertEjPKc
  .type _ZNSs6insertEjPKc, @function

#! file-offset 0xef820
#! rip-offset  0xaf820
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode             
._ZNSs6insertEjPKc:         #        0xaf820  0      OPC=<label>        
  movq %r13, -0x8(%rsp)     #  1     0xaf820  5      OPC=movq_m64_r64   
  movl %edx, %r13d          #  2     0xaf825  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)    #  3     0xaf828  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  4     0xaf82d  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  5     0xaf832  2      OPC=movl_r32_r32   
  subl $0x18, %esp          #  6     0xaf834  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0xaf837  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  8     0xaf83a  3      OPC=movl_r32_r32   
  movl %r13d, %edi          #  9     0xaf83d  3      OPC=movl_r32_r32   
  nop                       #  10    0xaf840  1      OPC=nop            
  nop                       #  11    0xaf841  1      OPC=nop            
  nop                       #  12    0xaf842  1      OPC=nop            
  nop                       #  13    0xaf843  1      OPC=nop            
  nop                       #  14    0xaf844  1      OPC=nop            
  nop                       #  15    0xaf845  1      OPC=nop            
  nop                       #  16    0xaf846  1      OPC=nop            
  nop                       #  17    0xaf847  1      OPC=nop            
  nop                       #  18    0xaf848  1      OPC=nop            
  nop                       #  19    0xaf849  1      OPC=nop            
  nop                       #  20    0xaf84a  1      OPC=nop            
  nop                       #  21    0xaf84b  1      OPC=nop            
  nop                       #  22    0xaf84c  1      OPC=nop            
  nop                       #  23    0xaf84d  1      OPC=nop            
  nop                       #  24    0xaf84e  1      OPC=nop            
  nop                       #  25    0xaf84f  1      OPC=nop            
  nop                       #  26    0xaf850  1      OPC=nop            
  nop                       #  27    0xaf851  1      OPC=nop            
  nop                       #  28    0xaf852  1      OPC=nop            
  nop                       #  29    0xaf853  1      OPC=nop            
  nop                       #  30    0xaf854  1      OPC=nop            
  nop                       #  31    0xaf855  1      OPC=nop            
  nop                       #  32    0xaf856  1      OPC=nop            
  nop                       #  33    0xaf857  1      OPC=nop            
  nop                       #  34    0xaf858  1      OPC=nop            
  nop                       #  35    0xaf859  1      OPC=nop            
  nop                       #  36    0xaf85a  1      OPC=nop            
  callq .strlen             #  37    0xaf85b  5      OPC=callq_label    
  movl %r13d, %edx          #  38    0xaf860  3      OPC=movl_r32_r32   
  movl %r12d, %esi          #  39    0xaf863  3      OPC=movl_r32_r32   
  movl %ebx, %edi           #  40    0xaf866  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  41    0xaf868  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  42    0xaf86d  4      OPC=movq_r64_m64   
  movl %eax, %ecx           #  43    0xaf871  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13     #  44    0xaf873  5      OPC=movq_r64_m64   
  addl $0x18, %esp          #  45    0xaf878  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  46    0xaf87b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax            #  47    0xaf87e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNSs6insertEjPKcj  #  48    0xaf880  5      OPC=jmpq_label_1   
  nop                       #  49    0xaf885  1      OPC=nop            
  nop                       #  50    0xaf886  1      OPC=nop            
  nop                       #  51    0xaf887  1      OPC=nop            
  nop                       #  52    0xaf888  1      OPC=nop            
  nop                       #  53    0xaf889  1      OPC=nop            
  nop                       #  54    0xaf88a  1      OPC=nop            
  nop                       #  55    0xaf88b  1      OPC=nop            
  nop                       #  56    0xaf88c  1      OPC=nop            
  nop                       #  57    0xaf88d  1      OPC=nop            
  nop                       #  58    0xaf88e  1      OPC=nop            
  nop                       #  59    0xaf88f  1      OPC=nop            
  nop                       #  60    0xaf890  1      OPC=nop            
  nop                       #  61    0xaf891  1      OPC=nop            
  nop                       #  62    0xaf892  1      OPC=nop            
  nop                       #  63    0xaf893  1      OPC=nop            
  nop                       #  64    0xaf894  1      OPC=nop            
  nop                       #  65    0xaf895  1      OPC=nop            
  nop                       #  66    0xaf896  1      OPC=nop            
  nop                       #  67    0xaf897  1      OPC=nop            
  nop                       #  68    0xaf898  1      OPC=nop            
  nop                       #  69    0xaf899  1      OPC=nop            
  nop                       #  70    0xaf89a  1      OPC=nop            
  nop                       #  71    0xaf89b  1      OPC=nop            
  nop                       #  72    0xaf89c  1      OPC=nop            
  nop                       #  73    0xaf89d  1      OPC=nop            
  nop                       #  74    0xaf89e  1      OPC=nop            
  nop                       #  75    0xaf89f  1      OPC=nop            
                                                                        
.size _ZNSs6insertEjPKc, .-_ZNSs6insertEjPKc

