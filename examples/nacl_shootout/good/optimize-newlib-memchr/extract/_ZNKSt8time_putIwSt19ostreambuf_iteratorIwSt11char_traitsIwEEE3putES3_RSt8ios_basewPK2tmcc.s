  .text
  .globl _ZNKSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPK2tmcc
  .type _ZNKSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPK2tmcc, @function

#! file-offset 0xf23a0
#! rip-offset  0xb23a0
#! capacity    96 bytes

# Text                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPK2tmcc:  #        0xb23a0  0      OPC=<label>         
  subl $0x18, %esp                                                                            #  1     0xb23a0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                             #  2     0xb23a3  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                             #  3     0xb23a6  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                                             #  4     0xb23a8  2      OPC=movl_r32_r32    
  movsbl 0x20(%rsp), %r10d                                                                    #  5     0xb23aa  6      OPC=movsbl_r32_m8   
  movl %edi, %edi                                                                             #  6     0xb23b0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                    #  7     0xb23b2  4      OPC=movl_r32_m32    
  movsbl %r9b, %r9d                                                                           #  8     0xb23b6  4      OPC=movsbl_r32_r8   
  movl %r10d, (%rsp)                                                                          #  9     0xb23ba  4      OPC=movl_m32_r32    
  xchgw %ax, %ax                                                                              #  10    0xb23be  2      OPC=xchgw_ax_r16    
  movl %eax, %eax                                                                             #  11    0xb23c0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                                 #  12    0xb23c2  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                              #  13    0xb23c7  2      OPC=xchgw_ax_r16    
  nop                                                                                         #  14    0xb23c9  1      OPC=nop             
  nop                                                                                         #  15    0xb23ca  1      OPC=nop             
  nop                                                                                         #  16    0xb23cb  1      OPC=nop             
  nop                                                                                         #  17    0xb23cc  1      OPC=nop             
  nop                                                                                         #  18    0xb23cd  1      OPC=nop             
  nop                                                                                         #  19    0xb23ce  1      OPC=nop             
  nop                                                                                         #  20    0xb23cf  1      OPC=nop             
  nop                                                                                         #  21    0xb23d0  1      OPC=nop             
  nop                                                                                         #  22    0xb23d1  1      OPC=nop             
  nop                                                                                         #  23    0xb23d2  1      OPC=nop             
  nop                                                                                         #  24    0xb23d3  1      OPC=nop             
  nop                                                                                         #  25    0xb23d4  1      OPC=nop             
  nop                                                                                         #  26    0xb23d5  1      OPC=nop             
  nop                                                                                         #  27    0xb23d6  1      OPC=nop             
  nop                                                                                         #  28    0xb23d7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                      #  29    0xb23d8  6      OPC=andl_r32_imm32  
  nop                                                                                         #  30    0xb23de  1      OPC=nop             
  nop                                                                                         #  31    0xb23df  1      OPC=nop             
  nop                                                                                         #  32    0xb23e0  1      OPC=nop             
  addq %r15, %rax                                                                             #  33    0xb23e1  3      OPC=addq_r64_r64    
  callq %rax                                                                                  #  34    0xb23e4  2      OPC=callq_r64       
  addl $0x18, %esp                                                                            #  35    0xb23e6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                             #  36    0xb23e9  3      OPC=addq_r64_r64    
  popq %r11                                                                                   #  37    0xb23ec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                     #  38    0xb23ee  7      OPC=andl_r32_imm32  
  nop                                                                                         #  39    0xb23f5  1      OPC=nop             
  nop                                                                                         #  40    0xb23f6  1      OPC=nop             
  nop                                                                                         #  41    0xb23f7  1      OPC=nop             
  nop                                                                                         #  42    0xb23f8  1      OPC=nop             
  addq %r15, %r11                                                                             #  43    0xb23f9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                   #  44    0xb23fc  3      OPC=jmpq_r64        
  nop                                                                                         #  45    0xb23ff  1      OPC=nop             
  nop                                                                                         #  46    0xb2400  1      OPC=nop             
  nop                                                                                         #  47    0xb2401  1      OPC=nop             
  nop                                                                                         #  48    0xb2402  1      OPC=nop             
  nop                                                                                         #  49    0xb2403  1      OPC=nop             
  nop                                                                                         #  50    0xb2404  1      OPC=nop             
  nop                                                                                         #  51    0xb2405  1      OPC=nop             
  nop                                                                                         #  52    0xb2406  1      OPC=nop             
  nop                                                                                         #  53    0xb2407  1      OPC=nop             
  nop                                                                                         #  54    0xb2408  1      OPC=nop             
  nop                                                                                         #  55    0xb2409  1      OPC=nop             
  nop                                                                                         #  56    0xb240a  1      OPC=nop             
  nop                                                                                         #  57    0xb240b  1      OPC=nop             
  nop                                                                                         #  58    0xb240c  1      OPC=nop             
                                                                                                                                           
.size _ZNKSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPK2tmcc, .-_ZNKSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPK2tmcc

