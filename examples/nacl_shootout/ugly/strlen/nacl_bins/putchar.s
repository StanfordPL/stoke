  .text
  .globl putchar
  .type putchar, @function

#! file-offset 0x163080
#! rip-offset  0x123080
#! capacity    64 bytes

# Text                         #  Line  RIP       Bytes  Opcode    
.putchar:                      #        0x123080  0      OPC=0     
  pushq %rbx                   #  1     0x123080  1      OPC=1861  
  movl %edi, %ebx              #  2     0x123081  2      OPC=1157  
  nop                          #  3     0x123083  1      OPC=1343  
  nop                          #  4     0x123084  1      OPC=1343  
  nop                          #  5     0x123085  1      OPC=1343  
  nop                          #  6     0x123086  1      OPC=1343  
  nop                          #  7     0x123087  1      OPC=1343  
  nop                          #  8     0x123088  1      OPC=1343  
  nop                          #  9     0x123089  1      OPC=1343  
  nop                          #  10    0x12308a  1      OPC=1343  
  nop                          #  11    0x12308b  1      OPC=1343  
  nop                          #  12    0x12308c  1      OPC=1343  
  nop                          #  13    0x12308d  1      OPC=1343  
  nop                          #  14    0x12308e  1      OPC=1343  
  nop                          #  15    0x12308f  1      OPC=1343  
  nop                          #  16    0x123090  1      OPC=1343  
  nop                          #  17    0x123091  1      OPC=1343  
  nop                          #  18    0x123092  1      OPC=1343  
  nop                          #  19    0x123093  1      OPC=1343  
  nop                          #  20    0x123094  1      OPC=1343  
  nop                          #  21    0x123095  1      OPC=1343  
  nop                          #  22    0x123096  1      OPC=1343  
  nop                          #  23    0x123097  1      OPC=1343  
  nop                          #  24    0x123098  1      OPC=1343  
  nop                          #  25    0x123099  1      OPC=1343  
  nop                          #  26    0x12309a  1      OPC=1343  
  callq .__nacl_read_tp        #  27    0x12309b  5      OPC=260   
  leaq -0x480(%rax), %rax      #  28    0x1230a0  7      OPC=1069  
  movl %ebx, %esi              #  29    0x1230a7  2      OPC=1157  
  popq %rbx                    #  30    0x1230a9  1      OPC=1694  
  movl %eax, %eax              #  31    0x1230aa  2      OPC=1157  
  movl (%r15,%rax,1), %eax     #  32    0x1230ac  4      OPC=1156  
  movl %eax, %eax              #  33    0x1230b0  2      OPC=1157  
  movl 0x8(%r15,%rax,1), %edx  #  34    0x1230b2  5      OPC=1156  
  movl %eax, %edi              #  35    0x1230b7  2      OPC=1157  
  jmpq ._putc_r                #  36    0x1230b9  5      OPC=930   
  xchgw %ax, %ax               #  37    0x1230be  2      OPC=3700  
                                                                   
.size putchar, .-putchar

