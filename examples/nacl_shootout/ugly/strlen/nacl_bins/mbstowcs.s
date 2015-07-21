  .text
  .globl mbstowcs
  .type mbstowcs, @function

#! file-offset 0x1897e0
#! rip-offset  0x1497e0
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.mbstowcs:                  #        0x1497e0  0      OPC=0     
  movq %rbx, -0x20(%rsp)    #  1     0x1497e0  5      OPC=1138  
  movq %r12, -0x18(%rsp)    #  2     0x1497e5  5      OPC=1138  
  movl %edi, %ebx           #  3     0x1497ea  2      OPC=1157  
  movq %r13, -0x10(%rsp)    #  4     0x1497ec  5      OPC=1138  
  movq %r14, -0x8(%rsp)     #  5     0x1497f1  5      OPC=1138  
  subl $0x38, %esp          #  6     0x1497f6  3      OPC=2384  
  addq %r15, %rsp           #  7     0x1497f9  3      OPC=72    
  movl %edx, %r13d          #  8     0x1497fc  3      OPC=1157  
  nop                       #  9     0x1497ff  1      OPC=1343  
  movl %esi, %r12d          #  10    0x149800  3      OPC=1157  
  movl $0x0, (%rsp)         #  11    0x149803  7      OPC=1135  
  xchgw %ax, %ax            #  12    0x14980a  2      OPC=3700  
  nop                       #  13    0x14980c  1      OPC=1343  
  nop                       #  14    0x14980d  1      OPC=1343  
  nop                       #  15    0x14980e  1      OPC=1343  
  nop                       #  16    0x14980f  1      OPC=1343  
  nop                       #  17    0x149810  1      OPC=1343  
  nop                       #  18    0x149811  1      OPC=1343  
  nop                       #  19    0x149812  1      OPC=1343  
  nop                       #  20    0x149813  1      OPC=1343  
  nop                       #  21    0x149814  1      OPC=1343  
  nop                       #  22    0x149815  1      OPC=1343  
  nop                       #  23    0x149816  1      OPC=1343  
  nop                       #  24    0x149817  1      OPC=1343  
  nop                       #  25    0x149818  1      OPC=1343  
  nop                       #  26    0x149819  1      OPC=1343  
  nop                       #  27    0x14981a  1      OPC=1343  
  callq .__nacl_read_tp     #  28    0x14981b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  29    0x149820  7      OPC=1069  
  movl %esp, %r8d           #  30    0x149827  3      OPC=1157  
  movl %r13d, %ecx          #  31    0x14982a  3      OPC=1157  
  movl %r12d, %edx          #  32    0x14982d  3      OPC=1157  
  movl %ebx, %esi           #  33    0x149830  2      OPC=1157  
  movl %eax, %eax           #  34    0x149832  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  35    0x149834  4      OPC=1156  
  nop                       #  36    0x149838  1      OPC=1343  
  nop                       #  37    0x149839  1      OPC=1343  
  nop                       #  38    0x14983a  1      OPC=1343  
  callq ._mbstowcs_r        #  39    0x14983b  5      OPC=260   
  movq 0x18(%rsp), %rbx     #  40    0x149840  5      OPC=1161  
  movq 0x20(%rsp), %r12     #  41    0x149845  5      OPC=1161  
  movq 0x28(%rsp), %r13     #  42    0x14984a  5      OPC=1161  
  movq 0x30(%rsp), %r14     #  43    0x14984f  5      OPC=1161  
  addl $0x38, %esp          #  44    0x149854  3      OPC=65    
  addq %r15, %rsp           #  45    0x149857  3      OPC=72    
  popq %r11                 #  46    0x14985a  2      OPC=1694  
  nop                       #  47    0x14985c  1      OPC=1343  
  nop                       #  48    0x14985d  1      OPC=1343  
  nop                       #  49    0x14985e  1      OPC=1343  
  nop                       #  50    0x14985f  1      OPC=1343  
  andl $0xffffffe0, %r11d   #  51    0x149860  7      OPC=131   
  nop                       #  52    0x149867  1      OPC=1343  
  nop                       #  53    0x149868  1      OPC=1343  
  nop                       #  54    0x149869  1      OPC=1343  
  nop                       #  55    0x14986a  1      OPC=1343  
  addq %r15, %r11           #  56    0x14986b  3      OPC=72    
  jmpq %r11                 #  57    0x14986e  3      OPC=928   
  nop                       #  58    0x149871  1      OPC=1343  
  nop                       #  59    0x149872  1      OPC=1343  
  nop                       #  60    0x149873  1      OPC=1343  
  nop                       #  61    0x149874  1      OPC=1343  
  nop                       #  62    0x149875  1      OPC=1343  
  nop                       #  63    0x149876  1      OPC=1343  
  nop                       #  64    0x149877  1      OPC=1343  
  nop                       #  65    0x149878  1      OPC=1343  
  nop                       #  66    0x149879  1      OPC=1343  
  nop                       #  67    0x14987a  1      OPC=1343  
  nop                       #  68    0x14987b  1      OPC=1343  
  nop                       #  69    0x14987c  1      OPC=1343  
  nop                       #  70    0x14987d  1      OPC=1343  
  nop                       #  71    0x14987e  1      OPC=1343  
  nop                       #  72    0x14987f  1      OPC=1343  
  nop                       #  73    0x149880  1      OPC=1343  
  nop                       #  74    0x149881  1      OPC=1343  
  nop                       #  75    0x149882  1      OPC=1343  
  nop                       #  76    0x149883  1      OPC=1343  
  nop                       #  77    0x149884  1      OPC=1343  
  nop                       #  78    0x149885  1      OPC=1343  
  nop                       #  79    0x149886  1      OPC=1343  
                                                                
.size mbstowcs, .-mbstowcs

