  .text
  .globl fseek
  .type fseek, @function

#! file-offset 0x15b8a0
#! rip-offset  0x11b8a0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.fseek:                     #        0x11b8a0  0      OPC=0     
  movq %rbx, -0x18(%rsp)    #  1     0x11b8a0  5      OPC=1138  
  movq %r12, -0x10(%rsp)    #  2     0x11b8a5  5      OPC=1138  
  movl %edi, %ebx           #  3     0x11b8aa  2      OPC=1157  
  movq %r13, -0x8(%rsp)     #  4     0x11b8ac  5      OPC=1138  
  subl $0x18, %esp          #  5     0x11b8b1  3      OPC=2384  
  addq %r15, %rsp           #  6     0x11b8b4  3      OPC=72    
  movl %esi, %r12d          #  7     0x11b8b7  3      OPC=1157  
  movl %edx, %r13d          #  8     0x11b8ba  3      OPC=1157  
  nop                       #  9     0x11b8bd  1      OPC=1343  
  nop                       #  10    0x11b8be  1      OPC=1343  
  nop                       #  11    0x11b8bf  1      OPC=1343  
  nop                       #  12    0x11b8c0  1      OPC=1343  
  nop                       #  13    0x11b8c1  1      OPC=1343  
  nop                       #  14    0x11b8c2  1      OPC=1343  
  nop                       #  15    0x11b8c3  1      OPC=1343  
  nop                       #  16    0x11b8c4  1      OPC=1343  
  nop                       #  17    0x11b8c5  1      OPC=1343  
  nop                       #  18    0x11b8c6  1      OPC=1343  
  nop                       #  19    0x11b8c7  1      OPC=1343  
  nop                       #  20    0x11b8c8  1      OPC=1343  
  nop                       #  21    0x11b8c9  1      OPC=1343  
  nop                       #  22    0x11b8ca  1      OPC=1343  
  nop                       #  23    0x11b8cb  1      OPC=1343  
  nop                       #  24    0x11b8cc  1      OPC=1343  
  nop                       #  25    0x11b8cd  1      OPC=1343  
  nop                       #  26    0x11b8ce  1      OPC=1343  
  nop                       #  27    0x11b8cf  1      OPC=1343  
  nop                       #  28    0x11b8d0  1      OPC=1343  
  nop                       #  29    0x11b8d1  1      OPC=1343  
  nop                       #  30    0x11b8d2  1      OPC=1343  
  nop                       #  31    0x11b8d3  1      OPC=1343  
  nop                       #  32    0x11b8d4  1      OPC=1343  
  nop                       #  33    0x11b8d5  1      OPC=1343  
  nop                       #  34    0x11b8d6  1      OPC=1343  
  nop                       #  35    0x11b8d7  1      OPC=1343  
  nop                       #  36    0x11b8d8  1      OPC=1343  
  nop                       #  37    0x11b8d9  1      OPC=1343  
  nop                       #  38    0x11b8da  1      OPC=1343  
  callq .__nacl_read_tp     #  39    0x11b8db  5      OPC=260   
  leaq -0x480(%rax), %rax   #  40    0x11b8e0  7      OPC=1069  
  movl %r13d, %ecx          #  41    0x11b8e7  3      OPC=1157  
  movl %r12d, %edx          #  42    0x11b8ea  3      OPC=1157  
  movl %ebx, %esi           #  43    0x11b8ed  2      OPC=1157  
  movq 0x8(%rsp), %r12      #  44    0x11b8ef  5      OPC=1161  
  movq (%rsp), %rbx         #  45    0x11b8f4  4      OPC=1161  
  movq 0x10(%rsp), %r13     #  46    0x11b8f8  5      OPC=1161  
  nop                       #  47    0x11b8fd  1      OPC=1343  
  nop                       #  48    0x11b8fe  1      OPC=1343  
  nop                       #  49    0x11b8ff  1      OPC=1343  
  movl %eax, %eax           #  50    0x11b900  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  51    0x11b902  4      OPC=1156  
  addl $0x18, %esp          #  52    0x11b906  3      OPC=65    
  addq %r15, %rsp           #  53    0x11b909  3      OPC=72    
  jmpq ._fseek_r            #  54    0x11b90c  5      OPC=930   
  nop                       #  55    0x11b911  1      OPC=1343  
  nop                       #  56    0x11b912  1      OPC=1343  
  nop                       #  57    0x11b913  1      OPC=1343  
  nop                       #  58    0x11b914  1      OPC=1343  
  nop                       #  59    0x11b915  1      OPC=1343  
  nop                       #  60    0x11b916  1      OPC=1343  
  nop                       #  61    0x11b917  1      OPC=1343  
  nop                       #  62    0x11b918  1      OPC=1343  
  nop                       #  63    0x11b919  1      OPC=1343  
  nop                       #  64    0x11b91a  1      OPC=1343  
  nop                       #  65    0x11b91b  1      OPC=1343  
  nop                       #  66    0x11b91c  1      OPC=1343  
  nop                       #  67    0x11b91d  1      OPC=1343  
  nop                       #  68    0x11b91e  1      OPC=1343  
  nop                       #  69    0x11b91f  1      OPC=1343  
                                                                
.size fseek, .-fseek

