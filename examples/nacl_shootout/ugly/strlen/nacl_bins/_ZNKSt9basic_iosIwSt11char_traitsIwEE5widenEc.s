  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc, @function

#! file-offset 0xa4a00
#! rip-offset  0x64a00
#! capacity    96 bytes

# Text                                           #  Line  RIP      Bytes  Opcode    
._ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc:  #        0x64a00  0      OPC=0     
  movl %edi, %edi                                #  1     0x64a00  2      OPC=1157  
  subl $0x8, %esp                                #  2     0x64a02  3      OPC=2384  
  addq %r15, %rsp                                #  3     0x64a05  3      OPC=72    
  movl %edi, %edi                                #  4     0x64a08  2      OPC=1157  
  movl 0x80(%r15,%rdi,1), %edi                   #  5     0x64a0a  8      OPC=1156  
  testq %rdi, %rdi                               #  6     0x64a12  3      OPC=2438  
  je .L_64a40                                    #  7     0x64a15  6      OPC=893   
  nop                                            #  8     0x64a1b  1      OPC=1343  
  nop                                            #  9     0x64a1c  1      OPC=1343  
  movl %edi, %edi                                #  10    0x64a1d  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                       #  11    0x64a1f  4      OPC=1156  
  nop                                            #  12    0x64a23  1      OPC=1343  
  nop                                            #  13    0x64a24  1      OPC=1343  
  nop                                            #  14    0x64a25  1      OPC=1343  
  movsbl %sil, %esi                              #  15    0x64a26  4      OPC=1282  
  movl %eax, %eax                                #  16    0x64a2a  2      OPC=1157  
  movl 0x28(%r15,%rax,1), %eax                   #  17    0x64a2c  5      OPC=1156  
  addl $0x8, %esp                                #  18    0x64a31  3      OPC=65    
  addq %r15, %rsp                                #  19    0x64a34  3      OPC=72    
  andl $0xffffffe0, %eax                         #  20    0x64a37  6      OPC=131   
  nop                                            #  21    0x64a3d  1      OPC=1343  
  nop                                            #  22    0x64a3e  1      OPC=1343  
  nop                                            #  23    0x64a3f  1      OPC=1343  
  addq %r15, %rax                                #  24    0x64a40  3      OPC=72    
  jmpq %rax                                      #  25    0x64a43  2      OPC=928   
  nop                                            #  26    0x64a45  1      OPC=1343  
  nop                                            #  27    0x64a46  1      OPC=1343  
  nop                                            #  28    0x64a47  1      OPC=1343  
  nop                                            #  29    0x64a48  1      OPC=1343  
  nop                                            #  30    0x64a49  1      OPC=1343  
  nop                                            #  31    0x64a4a  1      OPC=1343  
  nop                                            #  32    0x64a4b  1      OPC=1343  
.L_64a40:                                        #        0x64a4c  0      OPC=0     
  nop                                            #  33    0x64a4c  1      OPC=1343  
  nop                                            #  34    0x64a4d  1      OPC=1343  
  nop                                            #  35    0x64a4e  1      OPC=1343  
  nop                                            #  36    0x64a4f  1      OPC=1343  
  nop                                            #  37    0x64a50  1      OPC=1343  
  nop                                            #  38    0x64a51  1      OPC=1343  
  nop                                            #  39    0x64a52  1      OPC=1343  
  nop                                            #  40    0x64a53  1      OPC=1343  
  nop                                            #  41    0x64a54  1      OPC=1343  
  nop                                            #  42    0x64a55  1      OPC=1343  
  nop                                            #  43    0x64a56  1      OPC=1343  
  nop                                            #  44    0x64a57  1      OPC=1343  
  nop                                            #  45    0x64a58  1      OPC=1343  
  nop                                            #  46    0x64a59  1      OPC=1343  
  nop                                            #  47    0x64a5a  1      OPC=1343  
  nop                                            #  48    0x64a5b  1      OPC=1343  
  nop                                            #  49    0x64a5c  1      OPC=1343  
  nop                                            #  50    0x64a5d  1      OPC=1343  
  nop                                            #  51    0x64a5e  1      OPC=1343  
  nop                                            #  52    0x64a5f  1      OPC=1343  
  nop                                            #  53    0x64a60  1      OPC=1343  
  nop                                            #  54    0x64a61  1      OPC=1343  
  nop                                            #  55    0x64a62  1      OPC=1343  
  nop                                            #  56    0x64a63  1      OPC=1343  
  nop                                            #  57    0x64a64  1      OPC=1343  
  nop                                            #  58    0x64a65  1      OPC=1343  
  nop                                            #  59    0x64a66  1      OPC=1343  
  callq ._ZSt16__throw_bad_castv                 #  60    0x64a67  5      OPC=260   
                                                                                    
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc

