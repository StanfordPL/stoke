  .text
  .globl _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basece
  .type _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basece, @function

#! file-offset 0xb74a0
#! rip-offset  0x774a0
#! capacity    96 bytes

# Text                                                                                    #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basece:  #        0x774a0  0      OPC=<label>         
  movl %edi, %edi                                                                         #  1     0x774a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                         #  2     0x774a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                         #  3     0x774a5  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                                                         #  4     0x774a8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                         #  5     0x774aa  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                #  6     0x774ac  4      OPC=movl_r32_m32    
  movzbl %dl, %edx                                                                        #  7     0x774b0  3      OPC=movzbl_r32_r8   
  movsbl %r8b, %r8d                                                                       #  8     0x774b3  4      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                         #  9     0x774b7  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                             #  10    0x774b9  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                          #  11    0x774be  2      OPC=xchgw_ax_r16    
  nop                                                                                     #  12    0x774c0  1      OPC=nop             
  nop                                                                                     #  13    0x774c1  1      OPC=nop             
  nop                                                                                     #  14    0x774c2  1      OPC=nop             
  nop                                                                                     #  15    0x774c3  1      OPC=nop             
  nop                                                                                     #  16    0x774c4  1      OPC=nop             
  nop                                                                                     #  17    0x774c5  1      OPC=nop             
  nop                                                                                     #  18    0x774c6  1      OPC=nop             
  nop                                                                                     #  19    0x774c7  1      OPC=nop             
  nop                                                                                     #  20    0x774c8  1      OPC=nop             
  nop                                                                                     #  21    0x774c9  1      OPC=nop             
  nop                                                                                     #  22    0x774ca  1      OPC=nop             
  nop                                                                                     #  23    0x774cb  1      OPC=nop             
  nop                                                                                     #  24    0x774cc  1      OPC=nop             
  nop                                                                                     #  25    0x774cd  1      OPC=nop             
  nop                                                                                     #  26    0x774ce  1      OPC=nop             
  nop                                                                                     #  27    0x774cf  1      OPC=nop             
  nop                                                                                     #  28    0x774d0  1      OPC=nop             
  nop                                                                                     #  29    0x774d1  1      OPC=nop             
  nop                                                                                     #  30    0x774d2  1      OPC=nop             
  nop                                                                                     #  31    0x774d3  1      OPC=nop             
  nop                                                                                     #  32    0x774d4  1      OPC=nop             
  nop                                                                                     #  33    0x774d5  1      OPC=nop             
  nop                                                                                     #  34    0x774d6  1      OPC=nop             
  nop                                                                                     #  35    0x774d7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                  #  36    0x774d8  6      OPC=andl_r32_imm32  
  nop                                                                                     #  37    0x774de  1      OPC=nop             
  nop                                                                                     #  38    0x774df  1      OPC=nop             
  nop                                                                                     #  39    0x774e0  1      OPC=nop             
  addq %r15, %rax                                                                         #  40    0x774e1  3      OPC=addq_r64_r64    
  callq %rax                                                                              #  41    0x774e4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                         #  42    0x774e6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                         #  43    0x774e9  3      OPC=addq_r64_r64    
  popq %r11                                                                               #  44    0x774ec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                 #  45    0x774ee  7      OPC=andl_r32_imm32  
  nop                                                                                     #  46    0x774f5  1      OPC=nop             
  nop                                                                                     #  47    0x774f6  1      OPC=nop             
  nop                                                                                     #  48    0x774f7  1      OPC=nop             
  nop                                                                                     #  49    0x774f8  1      OPC=nop             
  addq %r15, %r11                                                                         #  50    0x774f9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                               #  51    0x774fc  3      OPC=jmpq_r64        
  nop                                                                                     #  52    0x774ff  1      OPC=nop             
  nop                                                                                     #  53    0x77500  1      OPC=nop             
  nop                                                                                     #  54    0x77501  1      OPC=nop             
  nop                                                                                     #  55    0x77502  1      OPC=nop             
  nop                                                                                     #  56    0x77503  1      OPC=nop             
  nop                                                                                     #  57    0x77504  1      OPC=nop             
  nop                                                                                     #  58    0x77505  1      OPC=nop             
  nop                                                                                     #  59    0x77506  1      OPC=nop             
  nop                                                                                     #  60    0x77507  1      OPC=nop             
  nop                                                                                     #  61    0x77508  1      OPC=nop             
  nop                                                                                     #  62    0x77509  1      OPC=nop             
  nop                                                                                     #  63    0x7750a  1      OPC=nop             
  nop                                                                                     #  64    0x7750b  1      OPC=nop             
  nop                                                                                     #  65    0x7750c  1      OPC=nop             
                                                                                                                                       
.size _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basece, .-_ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basece

