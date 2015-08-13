  .text
  .globl _ZNKSs5rfindEPKcj
  .type _ZNKSs5rfindEPKcj, @function

#! file-offset 0xeb820
#! rip-offset  0xab820
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode             
._ZNKSs5rfindEPKcj:         #        0xab820  0      OPC=<label>        
  movq %r12, -0x10(%rsp)    #  1     0xab820  5      OPC=movq_m64_r64   
  movl %esi, %r12d          #  2     0xab825  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)    #  3     0xab828  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)     #  4     0xab82d  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  5     0xab832  2      OPC=movl_r32_r32   
  subl $0x18, %esp          #  6     0xab834  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0xab837  3      OPC=addq_r64_r64   
  movl %edx, %r13d          #  8     0xab83a  3      OPC=movl_r32_r32   
  movl %r12d, %edi          #  9     0xab83d  3      OPC=movl_r32_r32   
  nop                       #  10    0xab840  1      OPC=nop            
  nop                       #  11    0xab841  1      OPC=nop            
  nop                       #  12    0xab842  1      OPC=nop            
  nop                       #  13    0xab843  1      OPC=nop            
  nop                       #  14    0xab844  1      OPC=nop            
  nop                       #  15    0xab845  1      OPC=nop            
  nop                       #  16    0xab846  1      OPC=nop            
  nop                       #  17    0xab847  1      OPC=nop            
  nop                       #  18    0xab848  1      OPC=nop            
  nop                       #  19    0xab849  1      OPC=nop            
  nop                       #  20    0xab84a  1      OPC=nop            
  nop                       #  21    0xab84b  1      OPC=nop            
  nop                       #  22    0xab84c  1      OPC=nop            
  nop                       #  23    0xab84d  1      OPC=nop            
  nop                       #  24    0xab84e  1      OPC=nop            
  nop                       #  25    0xab84f  1      OPC=nop            
  nop                       #  26    0xab850  1      OPC=nop            
  nop                       #  27    0xab851  1      OPC=nop            
  nop                       #  28    0xab852  1      OPC=nop            
  nop                       #  29    0xab853  1      OPC=nop            
  nop                       #  30    0xab854  1      OPC=nop            
  nop                       #  31    0xab855  1      OPC=nop            
  nop                       #  32    0xab856  1      OPC=nop            
  nop                       #  33    0xab857  1      OPC=nop            
  nop                       #  34    0xab858  1      OPC=nop            
  nop                       #  35    0xab859  1      OPC=nop            
  nop                       #  36    0xab85a  1      OPC=nop            
  callq .strlen             #  37    0xab85b  5      OPC=callq_label    
  movl %r13d, %edx          #  38    0xab860  3      OPC=movl_r32_r32   
  movl %r12d, %esi          #  39    0xab863  3      OPC=movl_r32_r32   
  movl %ebx, %edi           #  40    0xab866  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  41    0xab868  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  42    0xab86d  4      OPC=movq_r64_m64   
  movl %eax, %ecx           #  43    0xab871  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13     #  44    0xab873  5      OPC=movq_r64_m64   
  addl $0x18, %esp          #  45    0xab878  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  46    0xab87b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax            #  47    0xab87e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs5rfindEPKcjj  #  48    0xab880  5      OPC=jmpq_label_1   
  nop                       #  49    0xab885  1      OPC=nop            
  nop                       #  50    0xab886  1      OPC=nop            
  nop                       #  51    0xab887  1      OPC=nop            
  nop                       #  52    0xab888  1      OPC=nop            
  nop                       #  53    0xab889  1      OPC=nop            
  nop                       #  54    0xab88a  1      OPC=nop            
  nop                       #  55    0xab88b  1      OPC=nop            
  nop                       #  56    0xab88c  1      OPC=nop            
  nop                       #  57    0xab88d  1      OPC=nop            
  nop                       #  58    0xab88e  1      OPC=nop            
  nop                       #  59    0xab88f  1      OPC=nop            
  nop                       #  60    0xab890  1      OPC=nop            
  nop                       #  61    0xab891  1      OPC=nop            
  nop                       #  62    0xab892  1      OPC=nop            
  nop                       #  63    0xab893  1      OPC=nop            
  nop                       #  64    0xab894  1      OPC=nop            
  nop                       #  65    0xab895  1      OPC=nop            
  nop                       #  66    0xab896  1      OPC=nop            
  nop                       #  67    0xab897  1      OPC=nop            
  nop                       #  68    0xab898  1      OPC=nop            
  nop                       #  69    0xab899  1      OPC=nop            
  nop                       #  70    0xab89a  1      OPC=nop            
  nop                       #  71    0xab89b  1      OPC=nop            
  nop                       #  72    0xab89c  1      OPC=nop            
  nop                       #  73    0xab89d  1      OPC=nop            
  nop                       #  74    0xab89e  1      OPC=nop            
  nop                       #  75    0xab89f  1      OPC=nop            
                                                                        
.size _ZNKSs5rfindEPKcj, .-_ZNKSs5rfindEPKcj

