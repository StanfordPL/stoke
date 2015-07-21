  .text
  .globl _ZNSs6assignERKSsjj
  .type _ZNSs6assignERKSsjj, @function

#! file-offset 0xedf20
#! rip-offset  0xadf20
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
._ZNSs6assignERKSsjj:                   #        0xadf20  0      OPC=0     
  movl %esi, %esi                       #  1     0xadf20  2      OPC=1157  
  subl $0x8, %esp                       #  2     0xadf22  3      OPC=2384  
  addq %r15, %rsp                       #  3     0xadf25  3      OPC=72    
  movl %edi, %edi                       #  4     0xadf28  2      OPC=1157  
  movl %esi, %esi                       #  5     0xadf2a  2      OPC=1157  
  movl (%r15,%rsi,1), %esi              #  6     0xadf2c  4      OPC=1156  
  leal -0xc(%rsi), %eax                 #  7     0xadf30  3      OPC=1066  
  movl %eax, %eax                       #  8     0xadf33  2      OPC=1157  
  movl (%r15,%rax,1), %eax              #  9     0xadf35  4      OPC=1156  
  cmpl %eax, %edx                       #  10    0xadf39  2      OPC=472   
  nop                                   #  11    0xadf3b  1      OPC=1343  
  nop                                   #  12    0xadf3c  1      OPC=1343  
  nop                                   #  13    0xadf3d  1      OPC=1343  
  nop                                   #  14    0xadf3e  1      OPC=1343  
  nop                                   #  15    0xadf3f  1      OPC=1343  
  ja .L_adf60                           #  16    0xadf40  6      OPC=863   
  nop                                   #  17    0xadf46  1      OPC=1343  
  nop                                   #  18    0xadf47  1      OPC=1343  
  subl %edx, %eax                       #  19    0xadf48  2      OPC=2386  
  leal (%rdx,%rsi,1), %esi              #  20    0xadf4a  3      OPC=1066  
  cmpl %ecx, %eax                       #  21    0xadf4d  2      OPC=472   
  cmoval %ecx, %eax                     #  22    0xadf4f  3      OPC=272   
  addl $0x8, %esp                       #  23    0xadf52  3      OPC=65    
  addq %r15, %rsp                       #  24    0xadf55  3      OPC=72    
  movl %eax, %edx                       #  25    0xadf58  2      OPC=1157  
  jmpq ._ZNSs6assignEPKcj               #  26    0xadf5a  5      OPC=930   
  nop                                   #  27    0xadf5f  1      OPC=1343  
  nop                                   #  28    0xadf60  1      OPC=1343  
  nop                                   #  29    0xadf61  1      OPC=1343  
  nop                                   #  30    0xadf62  1      OPC=1343  
  nop                                   #  31    0xadf63  1      OPC=1343  
  nop                                   #  32    0xadf64  1      OPC=1343  
  nop                                   #  33    0xadf65  1      OPC=1343  
.L_adf60:                               #        0xadf66  0      OPC=0     
  movl $0x1003bb2b, %edi                #  34    0xadf66  5      OPC=1154  
  nop                                   #  35    0xadf6b  1      OPC=1343  
  nop                                   #  36    0xadf6c  1      OPC=1343  
  nop                                   #  37    0xadf6d  1      OPC=1343  
  nop                                   #  38    0xadf6e  1      OPC=1343  
  nop                                   #  39    0xadf6f  1      OPC=1343  
  nop                                   #  40    0xadf70  1      OPC=1343  
  nop                                   #  41    0xadf71  1      OPC=1343  
  nop                                   #  42    0xadf72  1      OPC=1343  
  nop                                   #  43    0xadf73  1      OPC=1343  
  nop                                   #  44    0xadf74  1      OPC=1343  
  nop                                   #  45    0xadf75  1      OPC=1343  
  nop                                   #  46    0xadf76  1      OPC=1343  
  nop                                   #  47    0xadf77  1      OPC=1343  
  nop                                   #  48    0xadf78  1      OPC=1343  
  nop                                   #  49    0xadf79  1      OPC=1343  
  nop                                   #  50    0xadf7a  1      OPC=1343  
  nop                                   #  51    0xadf7b  1      OPC=1343  
  nop                                   #  52    0xadf7c  1      OPC=1343  
  nop                                   #  53    0xadf7d  1      OPC=1343  
  nop                                   #  54    0xadf7e  1      OPC=1343  
  nop                                   #  55    0xadf7f  1      OPC=1343  
  nop                                   #  56    0xadf80  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc  #  57    0xadf81  5      OPC=260   
                                                                           
.size _ZNSs6assignERKSsjj, .-_ZNSs6assignERKSsjj

