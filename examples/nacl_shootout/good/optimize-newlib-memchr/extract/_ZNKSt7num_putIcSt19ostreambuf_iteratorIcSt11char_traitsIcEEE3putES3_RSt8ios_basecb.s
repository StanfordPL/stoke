  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecb
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecb, @function

#! file-offset 0xb85c0
#! rip-offset  0x785c0
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecb:  #        0x785c0  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x785c0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x785c2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x785c5  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x785c8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x785ca  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x785cc  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x785d0  3      OPC=movsbl_r32_r8   
  movzbl %r8b, %r8d                                                                    #  8     0x785d3  4      OPC=movzbl_r32_r8   
  movl %eax, %eax                                                                      #  9     0x785d7  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                          #  10    0x785d9  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                       #  11    0x785de  2      OPC=xchgw_ax_r16    
  nop                                                                                  #  12    0x785e0  1      OPC=nop             
  nop                                                                                  #  13    0x785e1  1      OPC=nop             
  nop                                                                                  #  14    0x785e2  1      OPC=nop             
  nop                                                                                  #  15    0x785e3  1      OPC=nop             
  nop                                                                                  #  16    0x785e4  1      OPC=nop             
  nop                                                                                  #  17    0x785e5  1      OPC=nop             
  nop                                                                                  #  18    0x785e6  1      OPC=nop             
  nop                                                                                  #  19    0x785e7  1      OPC=nop             
  nop                                                                                  #  20    0x785e8  1      OPC=nop             
  nop                                                                                  #  21    0x785e9  1      OPC=nop             
  nop                                                                                  #  22    0x785ea  1      OPC=nop             
  nop                                                                                  #  23    0x785eb  1      OPC=nop             
  nop                                                                                  #  24    0x785ec  1      OPC=nop             
  nop                                                                                  #  25    0x785ed  1      OPC=nop             
  nop                                                                                  #  26    0x785ee  1      OPC=nop             
  nop                                                                                  #  27    0x785ef  1      OPC=nop             
  nop                                                                                  #  28    0x785f0  1      OPC=nop             
  nop                                                                                  #  29    0x785f1  1      OPC=nop             
  nop                                                                                  #  30    0x785f2  1      OPC=nop             
  nop                                                                                  #  31    0x785f3  1      OPC=nop             
  nop                                                                                  #  32    0x785f4  1      OPC=nop             
  nop                                                                                  #  33    0x785f5  1      OPC=nop             
  nop                                                                                  #  34    0x785f6  1      OPC=nop             
  nop                                                                                  #  35    0x785f7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  36    0x785f8  6      OPC=andl_r32_imm32  
  nop                                                                                  #  37    0x785fe  1      OPC=nop             
  nop                                                                                  #  38    0x785ff  1      OPC=nop             
  nop                                                                                  #  39    0x78600  1      OPC=nop             
  addq %r15, %rax                                                                      #  40    0x78601  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  41    0x78604  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  42    0x78606  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  43    0x78609  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  44    0x7860c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  45    0x7860e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  46    0x78615  1      OPC=nop             
  nop                                                                                  #  47    0x78616  1      OPC=nop             
  nop                                                                                  #  48    0x78617  1      OPC=nop             
  nop                                                                                  #  49    0x78618  1      OPC=nop             
  addq %r15, %r11                                                                      #  50    0x78619  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  51    0x7861c  3      OPC=jmpq_r64        
  nop                                                                                  #  52    0x7861f  1      OPC=nop             
  nop                                                                                  #  53    0x78620  1      OPC=nop             
  nop                                                                                  #  54    0x78621  1      OPC=nop             
  nop                                                                                  #  55    0x78622  1      OPC=nop             
  nop                                                                                  #  56    0x78623  1      OPC=nop             
  nop                                                                                  #  57    0x78624  1      OPC=nop             
  nop                                                                                  #  58    0x78625  1      OPC=nop             
  nop                                                                                  #  59    0x78626  1      OPC=nop             
  nop                                                                                  #  60    0x78627  1      OPC=nop             
  nop                                                                                  #  61    0x78628  1      OPC=nop             
  nop                                                                                  #  62    0x78629  1      OPC=nop             
  nop                                                                                  #  63    0x7862a  1      OPC=nop             
  nop                                                                                  #  64    0x7862b  1      OPC=nop             
  nop                                                                                  #  65    0x7862c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecb, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecb

