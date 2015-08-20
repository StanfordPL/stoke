  .text
  .globl _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basece
  .type _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basece, @function

#! file-offset 0xb77a0
#! rip-offset  0x777a0
#! capacity    96 bytes

# Text                                                                                    #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basece:  #        0x777a0  0      OPC=<label>         
  movl %edi, %edi                                                                         #  1     0x777a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                         #  2     0x777a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                         #  3     0x777a5  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                                                         #  4     0x777a8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                         #  5     0x777aa  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                #  6     0x777ac  4      OPC=movl_r32_m32    
  movzbl %dl, %edx                                                                        #  7     0x777b0  3      OPC=movzbl_r32_r8   
  movsbl %r8b, %r8d                                                                       #  8     0x777b3  4      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                         #  9     0x777b7  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                             #  10    0x777b9  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                          #  11    0x777be  2      OPC=xchgw_ax_r16    
  nop                                                                                     #  12    0x777c0  1      OPC=nop             
  nop                                                                                     #  13    0x777c1  1      OPC=nop             
  nop                                                                                     #  14    0x777c2  1      OPC=nop             
  nop                                                                                     #  15    0x777c3  1      OPC=nop             
  nop                                                                                     #  16    0x777c4  1      OPC=nop             
  nop                                                                                     #  17    0x777c5  1      OPC=nop             
  nop                                                                                     #  18    0x777c6  1      OPC=nop             
  nop                                                                                     #  19    0x777c7  1      OPC=nop             
  nop                                                                                     #  20    0x777c8  1      OPC=nop             
  nop                                                                                     #  21    0x777c9  1      OPC=nop             
  nop                                                                                     #  22    0x777ca  1      OPC=nop             
  nop                                                                                     #  23    0x777cb  1      OPC=nop             
  nop                                                                                     #  24    0x777cc  1      OPC=nop             
  nop                                                                                     #  25    0x777cd  1      OPC=nop             
  nop                                                                                     #  26    0x777ce  1      OPC=nop             
  nop                                                                                     #  27    0x777cf  1      OPC=nop             
  nop                                                                                     #  28    0x777d0  1      OPC=nop             
  nop                                                                                     #  29    0x777d1  1      OPC=nop             
  nop                                                                                     #  30    0x777d2  1      OPC=nop             
  nop                                                                                     #  31    0x777d3  1      OPC=nop             
  nop                                                                                     #  32    0x777d4  1      OPC=nop             
  nop                                                                                     #  33    0x777d5  1      OPC=nop             
  nop                                                                                     #  34    0x777d6  1      OPC=nop             
  nop                                                                                     #  35    0x777d7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                  #  36    0x777d8  6      OPC=andl_r32_imm32  
  nop                                                                                     #  37    0x777de  1      OPC=nop             
  nop                                                                                     #  38    0x777df  1      OPC=nop             
  nop                                                                                     #  39    0x777e0  1      OPC=nop             
  addq %r15, %rax                                                                         #  40    0x777e1  3      OPC=addq_r64_r64    
  callq %rax                                                                              #  41    0x777e4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                         #  42    0x777e6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                         #  43    0x777e9  3      OPC=addq_r64_r64    
  popq %r11                                                                               #  44    0x777ec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                 #  45    0x777ee  7      OPC=andl_r32_imm32  
  nop                                                                                     #  46    0x777f5  1      OPC=nop             
  nop                                                                                     #  47    0x777f6  1      OPC=nop             
  nop                                                                                     #  48    0x777f7  1      OPC=nop             
  nop                                                                                     #  49    0x777f8  1      OPC=nop             
  addq %r15, %r11                                                                         #  50    0x777f9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                               #  51    0x777fc  3      OPC=jmpq_r64        
  nop                                                                                     #  52    0x777ff  1      OPC=nop             
  nop                                                                                     #  53    0x77800  1      OPC=nop             
  nop                                                                                     #  54    0x77801  1      OPC=nop             
  nop                                                                                     #  55    0x77802  1      OPC=nop             
  nop                                                                                     #  56    0x77803  1      OPC=nop             
  nop                                                                                     #  57    0x77804  1      OPC=nop             
  nop                                                                                     #  58    0x77805  1      OPC=nop             
  nop                                                                                     #  59    0x77806  1      OPC=nop             
  nop                                                                                     #  60    0x77807  1      OPC=nop             
  nop                                                                                     #  61    0x77808  1      OPC=nop             
  nop                                                                                     #  62    0x77809  1      OPC=nop             
  nop                                                                                     #  63    0x7780a  1      OPC=nop             
  nop                                                                                     #  64    0x7780b  1      OPC=nop             
  nop                                                                                     #  65    0x7780c  1      OPC=nop             
                                                                                                                                       
.size _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basece, .-_ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basece

