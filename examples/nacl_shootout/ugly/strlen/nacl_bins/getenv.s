  .text
  .globl getenv
  .type getenv, @function

#! file-offset 0x15dc00
#! rip-offset  0x11dc00
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.getenv:                    #        0x11dc00  0      OPC=0     
  movq %rbx, -0x10(%rsp)    #  1     0x11dc00  5      OPC=1138  
  movq %r12, -0x8(%rsp)     #  2     0x11dc05  5      OPC=1138  
  subl $0x28, %esp          #  3     0x11dc0a  3      OPC=2384  
  addq %r15, %rsp           #  4     0x11dc0d  3      OPC=72    
  movl %edi, %ebx           #  5     0x11dc10  2      OPC=1157  
  leal 0xc(%rsp), %r12d     #  6     0x11dc12  5      OPC=1066  
  nop                       #  7     0x11dc17  1      OPC=1343  
  nop                       #  8     0x11dc18  1      OPC=1343  
  nop                       #  9     0x11dc19  1      OPC=1343  
  nop                       #  10    0x11dc1a  1      OPC=1343  
  callq .__nacl_read_tp     #  11    0x11dc1b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  12    0x11dc20  7      OPC=1069  
  movl %r12d, %edx          #  13    0x11dc27  3      OPC=1157  
  movl %ebx, %esi           #  14    0x11dc2a  2      OPC=1157  
  movl %eax, %eax           #  15    0x11dc2c  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  16    0x11dc2e  4      OPC=1156  
  nop                       #  17    0x11dc32  1      OPC=1343  
  nop                       #  18    0x11dc33  1      OPC=1343  
  nop                       #  19    0x11dc34  1      OPC=1343  
  nop                       #  20    0x11dc35  1      OPC=1343  
  nop                       #  21    0x11dc36  1      OPC=1343  
  nop                       #  22    0x11dc37  1      OPC=1343  
  nop                       #  23    0x11dc38  1      OPC=1343  
  nop                       #  24    0x11dc39  1      OPC=1343  
  nop                       #  25    0x11dc3a  1      OPC=1343  
  callq ._findenv_r         #  26    0x11dc3b  5      OPC=260   
  movq 0x18(%rsp), %rbx     #  27    0x11dc40  5      OPC=1161  
  movq 0x20(%rsp), %r12     #  28    0x11dc45  5      OPC=1161  
  addl $0x28, %esp          #  29    0x11dc4a  3      OPC=65    
  addq %r15, %rsp           #  30    0x11dc4d  3      OPC=72    
  popq %r11                 #  31    0x11dc50  2      OPC=1694  
  movl %eax, %eax           #  32    0x11dc52  2      OPC=1157  
  andl $0xffffffe0, %r11d   #  33    0x11dc54  7      OPC=131   
  nop                       #  34    0x11dc5b  1      OPC=1343  
  nop                       #  35    0x11dc5c  1      OPC=1343  
  nop                       #  36    0x11dc5d  1      OPC=1343  
  nop                       #  37    0x11dc5e  1      OPC=1343  
  addq %r15, %r11           #  38    0x11dc5f  3      OPC=72    
  jmpq %r11                 #  39    0x11dc62  3      OPC=928   
  xchgw %ax, %ax            #  40    0x11dc65  2      OPC=3700  
                                                                
.size getenv, .-getenv

