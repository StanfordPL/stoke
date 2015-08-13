  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEaSEw
  .type _ZNSbIwSt11char_traitsIwESaIwEEaSEw, @function

#! file-offset 0x1198a0
#! rip-offset  0xd98a0
#! capacity    96 bytes

# Text                                                         #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEaSEw:                          #        0xd98a0  0      OPC=<label>         
  pushq %rbx                                                   #  1     0xd98a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                              #  2     0xd98a1  2      OPC=movl_r32_r32    
  movl %esi, %r8d                                              #  3     0xd98a3  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                                              #  4     0xd98a6  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                     #  5     0xd98a8  4      OPC=movl_r32_m32    
  movl %ebx, %edi                                              #  6     0xd98ac  2      OPC=movl_r32_r32    
  movl $0x1, %ecx                                              #  7     0xd98ae  5      OPC=movl_r32_imm32  
  xorl %esi, %esi                                              #  8     0xd98b3  2      OPC=xorl_r32_r32    
  subl $0xc, %eax                                              #  9     0xd98b5  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                              #  10    0xd98b8  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                     #  11    0xd98ba  4      OPC=movl_r32_m32    
  xchgw %ax, %ax                                               #  12    0xd98be  2      OPC=xchgw_ax_r16    
  nop                                                          #  13    0xd98c0  1      OPC=nop             
  nop                                                          #  14    0xd98c1  1      OPC=nop             
  nop                                                          #  15    0xd98c2  1      OPC=nop             
  nop                                                          #  16    0xd98c3  1      OPC=nop             
  nop                                                          #  17    0xd98c4  1      OPC=nop             
  nop                                                          #  18    0xd98c5  1      OPC=nop             
  nop                                                          #  19    0xd98c6  1      OPC=nop             
  nop                                                          #  20    0xd98c7  1      OPC=nop             
  nop                                                          #  21    0xd98c8  1      OPC=nop             
  nop                                                          #  22    0xd98c9  1      OPC=nop             
  nop                                                          #  23    0xd98ca  1      OPC=nop             
  nop                                                          #  24    0xd98cb  1      OPC=nop             
  nop                                                          #  25    0xd98cc  1      OPC=nop             
  nop                                                          #  26    0xd98cd  1      OPC=nop             
  nop                                                          #  27    0xd98ce  1      OPC=nop             
  nop                                                          #  28    0xd98cf  1      OPC=nop             
  nop                                                          #  29    0xd98d0  1      OPC=nop             
  nop                                                          #  30    0xd98d1  1      OPC=nop             
  nop                                                          #  31    0xd98d2  1      OPC=nop             
  nop                                                          #  32    0xd98d3  1      OPC=nop             
  nop                                                          #  33    0xd98d4  1      OPC=nop             
  nop                                                          #  34    0xd98d5  1      OPC=nop             
  nop                                                          #  35    0xd98d6  1      OPC=nop             
  nop                                                          #  36    0xd98d7  1      OPC=nop             
  nop                                                          #  37    0xd98d8  1      OPC=nop             
  nop                                                          #  38    0xd98d9  1      OPC=nop             
  nop                                                          #  39    0xd98da  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE14_M_replace_auxEjjjw  #  40    0xd98db  5      OPC=callq_label     
  movl %ebx, %eax                                              #  41    0xd98e0  2      OPC=movl_r32_r32    
  popq %rbx                                                    #  42    0xd98e2  1      OPC=popq_r64_1      
  popq %r11                                                    #  43    0xd98e3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                      #  44    0xd98e5  7      OPC=andl_r32_imm32  
  nop                                                          #  45    0xd98ec  1      OPC=nop             
  nop                                                          #  46    0xd98ed  1      OPC=nop             
  nop                                                          #  47    0xd98ee  1      OPC=nop             
  nop                                                          #  48    0xd98ef  1      OPC=nop             
  addq %r15, %r11                                              #  49    0xd98f0  3      OPC=addq_r64_r64    
  jmpq %r11                                                    #  50    0xd98f3  3      OPC=jmpq_r64        
  nop                                                          #  51    0xd98f6  1      OPC=nop             
  nop                                                          #  52    0xd98f7  1      OPC=nop             
  nop                                                          #  53    0xd98f8  1      OPC=nop             
  nop                                                          #  54    0xd98f9  1      OPC=nop             
  nop                                                          #  55    0xd98fa  1      OPC=nop             
  nop                                                          #  56    0xd98fb  1      OPC=nop             
  nop                                                          #  57    0xd98fc  1      OPC=nop             
  nop                                                          #  58    0xd98fd  1      OPC=nop             
  nop                                                          #  59    0xd98fe  1      OPC=nop             
  nop                                                          #  60    0xd98ff  1      OPC=nop             
  nop                                                          #  61    0xd9900  1      OPC=nop             
  nop                                                          #  62    0xd9901  1      OPC=nop             
  nop                                                          #  63    0xd9902  1      OPC=nop             
  nop                                                          #  64    0xd9903  1      OPC=nop             
  nop                                                          #  65    0xd9904  1      OPC=nop             
  nop                                                          #  66    0xd9905  1      OPC=nop             
  nop                                                          #  67    0xd9906  1      OPC=nop             
                                                                                                            
.size _ZNSbIwSt11char_traitsIwESaIwEEaSEw, .-_ZNSbIwSt11char_traitsIwESaIwEEaSEw

